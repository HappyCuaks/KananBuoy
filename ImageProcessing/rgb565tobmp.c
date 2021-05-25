// Example program
#include <stdio.h>
#include <string.h>
#include <inttypes.h>
#include <math.h>
#include <stdlib.h>
#include <unistd.h>


#define IMAGE_WIDTH 640
#define IMAGE_HEIGHT 480

typedef uint8_t       BYTE;
typedef uint16_t      WORD;

struct pixel_rgb565
{
    uint16_t rgb565_pixel;
};

typedef enum
{
    BI_RGB,
    BI_JPEG,
    BI_PNG
}compression_t;

struct pixel_rgb888
{
    BYTE blue;
    BYTE green;
    BYTE red;
};


int main()
{
    printf("Starting conversion...\n");
    char path[100];
    char* absolute_path = getcwd(path, 100);
    printf("Path: %s\n", absolute_path);
    uint32_t file_num = 0;
    uint32_t file_rgb_num = 0;
    do{
        char file_name[50];
        snprintf(file_name, 50, "../New_Samples/IMAGE_%d.RAW", file_num);
        FILE *f = fopen(file_name,"rb");

        if (f == NULL)
        {
            printf("Error opening file: %s\n", file_name);
            break;
        }

        FILE *f_rgb656;
        if(file_rgb_num == 0)
        {
            do
            {
                snprintf(file_name, 50, "../RGB/IMAGE_%d.raw", file_rgb_num);
                f_rgb656 = fopen(file_name,"rb");
                if(f_rgb656 != NULL)
                {
                    file_rgb_num++;
                    fclose(f_rgb656);
                }else
                {
                    //printf("RGB RAW doesn't exist: %s\n", file_name);
                }
            }while(f_rgb656 != NULL);

        }
        snprintf(file_name, 50, "../RGB/IMAGE_%d.raw", file_rgb_num);
        printf("RGB RAW Copied: %s\n", file_name);
        f_rgb656 = fopen(file_name,"wb");

        while(!feof(f))
        {
            char buf[sizeof(struct pixel_rgb565) * IMAGE_WIDTH];

            size_t read = fread(buf,1,sizeof(buf),f);

            if (read != sizeof(buf))
            {
                if (feof(f))
                {
                    break;
                }

                printf("Error decoding");
                fclose(f);
                fclose(f_rgb656);
                return -1;
            }
            else
            {

                fwrite(buf,1,sizeof(buf),f_rgb656);
            }
        }

        fclose(f);
        fclose(f_rgb656);
        file_rgb_num++;
        file_num ++;
    }while(1);

    file_num = 0;
    do{
        char file_name[50];
        snprintf(file_name, 50, "../RGB/IMAGE_%d.raw", file_num);
        FILE *f = fopen(file_name,"rb");

        if (f == NULL)
        {
            printf("Error opening file: %s\n", file_name);
            break;
        }

        snprintf(file_name, 50, "../BMP/IMAGE_%d.bmp", file_num);
        FILE *f_out = fopen(file_name,"wb");

        /**********************************************************
         *  Description: Write BMP header
         *********************************************************/
        //width, height, and bitcount are the key factors:
        int width = IMAGE_WIDTH;
        int height = IMAGE_HEIGHT;
        compression_t compression = BI_RGB;
        uint16_t bitcount = 24;//<- 24-bit bitmap
        uint16_t reserved_zero = 0;// Reserved 0
        //take padding in to account
        int width_in_bytes = ((width * bitcount + 31) / 32) * 4;
        //total image size in bytes, not including header
        uint32_t imagesize = width_in_bytes * height;
        //this value is always 40, it's the sizeof(BITMAPINFOHEADER)
        const uint32_t biSize = 40;
        //bitmap bits start after headerfile,
        //this is sizeof(BITMAPFILEHEADER) + sizeof(BITMAPINFOHEADER)
        const uint32_t bfOffBits = 54;
        //total file size:
        uint32_t filesize = 54 + imagesize;
        //number of planes is usually 1
        const uint16_t biPlanes = 1;
        //create header:
        //copy to buffer instead of BITMAPFILEHEADER and BITMAPINFOHEADER
        //to avoid problems with structure packing
        unsigned char header[54] = { 0 };
        //Bitmap File Header
        memcpy(header + 0, "BM", 2);
        memcpy(header + 2 , &filesize, 4);
        memcpy(header + 6 , &reserved_zero, 2);
        memcpy(header + 8 , &reserved_zero, 2);
        memcpy(header + 10, &bfOffBits, 4);
        //Bitmap Information Header
        /*
        //Windows and OS/2 bitmap headers
        memcpy(header + 14, &biSize, 4);
        memcpy(header + 18, &width, 2);
        memcpy(header + 20, &height, 2);
        memcpy(header + 22, &biPlanes, 2);
        memcpy(header + 24, &bitcount, 2);
         */
        //Windows BITMAPINFOHEADER
        memcpy(header + 14, &biSize, 4);
        memcpy(header + 18, &width, 4);
        memcpy(header + 22, &height, 4);
        memcpy(header + 26, &biPlanes, 2);
        memcpy(header + 28, &bitcount, 2);
        memcpy(header + 30, &compression, 4);
        memcpy(header + 34, &imagesize, 4);
        memcpy(header + 38, &reserved_zero, 4);
        memcpy(header + 42, &reserved_zero, 4);
        memcpy(header + 46, &reserved_zero, 4);
        memcpy(header + 50, &reserved_zero, 4);
        fwrite(header, 1, 54, f_out);

        if (f_out == NULL)
        {
            fclose(f);
            printf("Error opening file\n");
            return -1;
        }

        int total_read = 0;
        while(!feof(f))
        {
            char buf[sizeof(struct pixel_rgb565) * IMAGE_WIDTH];
            char buf_out[sizeof(struct pixel_rgb888) * IMAGE_WIDTH];

            size_t read = fread(buf,1,sizeof(buf),f);

            total_read += read;

            if (read != sizeof(buf))
            {
                if (feof(f))
                {
                    break;
                }

                printf("Error decoding");
                fclose(f);
                fclose(f_out);
                return -1;
            }
            else
            {
                struct pixel_rgb565* p = (struct pixel_rgb565*)&buf[0];
                struct pixel_rgb888* p_out = (struct pixel_rgb888*)&buf_out[0];

                for(uint32_t i = 0; i < IMAGE_WIDTH; i++)
                {
                    uint16_t new_pixel = ((p->rgb565_pixel & 0x00FF) << 8) + ((p->rgb565_pixel & 0xFF00) >> 8);

                    WORD red_mask = 0xF800;
                    WORD green_mask = 0x07E0;
                    WORD blue_mask = 0x001F;

                    // Conversion
                    BYTE red_value = (uint8_t) ((new_pixel & red_mask) >> 11);
                    BYTE green_value =  (uint8_t) ((new_pixel & green_mask) >> 5);
                    BYTE blue_value =  (uint8_t) ((new_pixel & blue_mask));

                    p_out->blue  = (blue_value << 3);
                    p_out->green = (green_value << 2);
                    p_out->red   = (red_value << 3);

                    p_out++;
                    p++;
                }

                fwrite(buf_out,1,sizeof(buf_out),f_out);
            }
        }
        //printf("Writen file: %s; Total read: %u\n",file_name, total_read);


        fclose(f);
        fclose(f_out);
        file_num ++;
    }while(1);

    printf("...Finished conversion\n");
}