import time
import sys, os
import random

version_application = os.getenv('VERSION_APPLICATION')

while True:
  user = random.choice(["Rosa", "David", "Pepe", "Patricia", "Maria", "Sonia", "Eduardo"])
  time_now = time.strftime("%I:%M:%S %p", time.localtime())
  print( 'INFO: Application Version: ' + version_application + '; MESSAGE: Hi ' + user + '. It is ' + time_now )
  time.sleep(1)