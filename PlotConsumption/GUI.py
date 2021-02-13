import numpy as np
from numpy import random as random
from tkinter import *
import matplotlib.pyplot as plt
import time as time
import serial
from queue import Queue
from threading import Thread
import sys
import csv
import os, signal
import struct

MXSAMPL = 100
PORT = '/dev/ttyACM0'
#PORT = 'COM3'
BAUDRATE = 115200

q_plot = Queue()
q_port = Queue()
q_data = Queue()
datasampling_started = False
datasampling_stopped = False
data_to_sample = []

#insert functions here
def DataPlotting(in_q, q_instruction):
	global data_to_sample

	cindex = 0

	# create plot and subplot
	fig = plt.figure()
	ax = fig.add_subplot(111)

	# Some X and Y data
	x = np.arange(MXSAMPL)
	y = np.random.randn(MXSAMPL)

	li, = ax.plot(x, y)

	# draw and show it
	ax.relim()
	ax.autoscale_view(True,True,True)
	fig.canvas.draw()
	plt.show(block=False)

	# loop to update the data
	data 	= []
	cindex 	= 0
	x_plot 	= []
	y_plot 	= []
	while True:
		if q_instruction.empty() == False:
			instruction = q_instruction.get()
			#print("Instruction received: " + instruction)
			if instruction == "save":
				#print("Saving Data")
				timestr = time.strftime("%Y%m%d-%H%M%S.csv")
				file = open(timestr, 'w')
				for x in range(cindex):
					file.write(str(x) + ";" + str(data[x]) + "\n")
				file.close()
			if instruction == "quit":
				print("Quitting plot")
				sys.exit()
		# Get some data
		if in_q.empty() == False:
			#print("Dta received")
			sample = in_q.get()
			#print(sample)
			data.append(sample)
			data_to_sample.append(sample)

			if(cindex >= MXSAMPL):
				del x_plot[0]
				del y_plot[0]
				x_plot.append(cindex)
				y_plot.append(sample)
			else:
				x_plot.append(cindex)
				y_plot.append(sample)

			# set the new data
			if(cindex >= MXSAMPL):
				#print("The X Array is: " + str(x_plot)) #printing the array
				#print("The Y Array is: " + str(y_plot)) #printing the array

				li.set_xdata(x_plot)
				li.set_ydata(y_plot)
				ax.relim()
				ax.autoscale_view(True,True,True)
				fig.canvas.draw()

				#plt.sleep(0.0001)
			cindex = cindex + 1;


def SerialReadData(outdata_q, q_instruction):

	#TODO: Uncomment Gerard
	ser_port = serial.Serial()
	ser_port.baudrate = BAUDRATE
	ser_port.port = PORT

	global datasampling_stopped
	try:
		print("We are Reading data")
		#Open Serial Port
		ser_port.open()
	except:
		print("Unable to open Port" + PORT)
		#If Serial is not working, abort program
		ser_port.close()
		os.kill(os.getpid(), signal.SIGKILL)
		sys.exit()
	while True:
		#TODO:Uncomment
		if ser_port.in_waiting and not datasampling_stopped:
		#if datasampling_stopped == False:
			#sleep in between samples
			#time.sleep(0.1)
			#Read Sample from Serial Port
			#thing_to_send=random.randint(400)
			data_rcv = ser_port.read(4)
			data = struct.unpack("f", data_rcv)[0]
			print(data)
			#print(data_rcv)
			#print(data)
			outdata_q.put(data)
		if q_instruction.empty() == False:
			instruction = q_instruction.get()
			#print("Instruction received: " + instruction)
			if instruction == "stop" and not datasampling_stopped:
				datasampling_stopped = True
				continue
			if instruction == "stop" and datasampling_stopped :
				datasampling_stopped = False
				continue
			if instruction == "quit":
				print("Quitting port")
				ser_port.close()
				sys.exit()


def StartSampling():
	global datasampling_started
	global t1,t2
	if not datasampling_started:
		print("Start Data Sampling")
		t1.start()
		t2.start()
		datasampling_started = True
	else:
		q_plot.put("start")
		print("Data Sampling is already running")


def SaveDataSampling():
	global q_instruction
	if datasampling_started:
		print("Save Data")
		q_plot.put("save")

def StopDataSampling():
	global q_instruction
	if datasampling_started:
		print("Stop Data Sampling")
		q_port.put("stop")

def QuitProgram():
	global q_instruction
	global root
	global t1,t2
	print("Quitting program")
	q_port.put("quit")
	q_plot.put("quit")
	root.destroy()
	root.quit()

#Init Interface
root = Tk()
#Random sampling to simulate Arduino
random.seed()

#One thread for plotting, another for reading from Serial
t1 = Thread(target=DataPlotting, args =(q_data, q_plot))
t2 = Thread(target=SerialReadData, args =(q_data, q_port))


#Insert interface here
myButton = Button(root, text = "Start Sampling", command=StartSampling)
myButton.pack()
myButton = Button(root, text = "Stop Sampling", command=StopDataSampling)
myButton.pack()
myButton = Button(root, text = "Save Sampling", command=SaveDataSampling)
myButton.pack()
myButton = Button(root, text = "QUIT", command=QuitProgram)
myButton.pack()

root.mainloop()
