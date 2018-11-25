import RPi.GPIO as gpio
import time
int en1=14
int en2=7
p=gpio.PWM(en1,1000)
q=gpio.PWM(en2,1000)
p.start(25)
q.start(25)
q.ChangeDutyCycle(50)
p.ChangeDutyCycle(50)
def init():
 gpio.setmode(gpio.BCM)
 gpio.setup(17, gpio.OUT)
 gpio.setup(22, gpio.OUT)
 gpio.setup(23, gpio.OUT)
 gpio.setup(24, gpio.OUT)
 def stop():
     init()
 gpio.output(17, False)
 gpio.output(22, False)
 gpio.output(23, False) 
 gpio.output(24, False)
def fata(sec):
 init()
 gpio.output(17, True)
 gpio.output(22, False)
 gpio.output(23, True) 
 gpio.output(24, False)
 time.sleep(sec)
 gpio.cleanup()

def dreapta(sec):
 init()
 gpio.output(17, True)
 gpio.output(22, False)
 gpio.output(23, True) 
 gpio.output(24, False)
 time.sleep(sec)
 gpio.cleanup()
 def stanga(sec):
 init()
 gpio.output(17, False)
 gpio.output(22, True)
 gpio.output(23, False) 
 gpio.output(24, True)
 time.sleep(sec)
 gpio.cleanup()
 def spate(sec):
 init()
 stanga(2)
 gpio.cleanup()
int x=1
char z
while(x==1):
    input(z)
    if(z=='a'):
        fata(30)
        spate(20)
        time.sleep(5)
    if(z=='p'):
        stop()
    if(z=='w')
    fata(40)
 if(z=='a'):
     stanga(40)
if(z=='d'):
    dreapta(40)
if(z=='s'):
    spate(40)
if(z=='f'):
 stanga(40)
if(z=='o'):
    stop()



   
