import socket
import sys
import time

HOST = 'jmeter-master'
PORT = 8080

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

connection = False

while not connection:
	try:
		s.connect((HOST, PORT))
		connection = True
		print('Connection is established successfully!')
	except:
		print('There is a connection error. Please wait...')
		time.sleep(1)


ip = sys.argv[1]

s.sendall(ip.encode('utf-8'))

data = s.recv(1024)
print(data)