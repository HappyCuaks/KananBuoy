// Example program
#include <stdio.h>
#include <string.h>
#include <inttypes.h>
#include <math.h>
#include <stdlib.h>


#define IMAGE_WIDTH (640)


#define GET_R(x) ((x[0] & 0xF8) >> 3)
#define GET_G(x) (((x[0] & 0x07) << 3) | ((x[1] & 0xE0) >> 5))
#define GET_B(x) (x[1] & 0x1F)

struct pixel_rgb565
{
	uint8_t p[2];
};

struct pixel_rgb888
{
	uint8_t p[3];
};


int main()
{
	uint32_t file_num = 0;
	uint32_t file_rgb_num = 0;
	do{
		char file_name[50];
		snprintf(file_name, 50, "New_Samples/IMAGE_%d.RAW", file_num);
		FILE *f = fopen(file_name,"rb");

		if (f == NULL)
		{
			//printf("Error opening file");
			break;
		}

		FILE *f_rgb656;
		if(file_rgb_num == 0)
		{
			do
			{
				snprintf(file_name, 50, "RGB/IMAGE_%d.raw", file_rgb_num);
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
		snprintf(file_name, 50, "RGB/IMAGE_%d.raw", file_rgb_num);
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
		snprintf(file_name, 50, "RGB/IMAGE_%d.raw", file_num);
		FILE *f = fopen(file_name,"rb");

		if (f == NULL)
		{
			//printf("Error opening file");
			break;
		}

		snprintf(file_name, 50, "PPM/IMAGE_%d.ppm", file_num);
	    FILE *f_out = fopen(file_name,"wb");

		if (f_out == NULL)
	   	{
	   		fclose(f);
	   		printf("Error opening file");
	   		return -1;
	   	} 

	   	fprintf(f_out,"P6\n%d %d\n255\n", 640, 480);

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
	   				/* Conversion */
	   				p_out->p[0] = (GET_R(p->p))*8;// * 255) / 31;
	   				p_out->p[1] = (GET_G(p->p))*4;// * 255) / 61;
	   				p_out->p[2] = (GET_B(p->p))*8;//  * 255) / 31;
	   				/*
	   				if(p_out->p[0] >= 0xA0 && p_out->p[1] >= 0xA0 && p_out->p[2] >= 0xA0)
	   				{
	   					p_out->p[0] = 0x00;
	   					p_out->p[1] = 0x00;
	   					p_out->p[2] = 0x00;
	   				}
					*/
	   				p_out++;
	   				p++;
	   			}

	   			fwrite(buf_out,1,sizeof(buf_out),f_out);
	   		}
	   	}
	   printf("Total read:  %u\n",total_read);
	   

	   fclose(f);
	   fclose(f_out);
	   file_num ++;
   }while(1);

}
/*


31 --> 255

x ---> ?

*/