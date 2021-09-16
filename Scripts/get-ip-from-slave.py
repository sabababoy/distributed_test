import socket

from jmeter-properties-set.py import set_properties()

PORT = 8080
HOST = ''

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

s.bind((HOST, PORT))

while True:
	s.listen()
	conn, addr = s.accept()
	# print('Address: ', addr)

	data = conn.recv(1024)
	
	if data:
		hosts = open('hosts.txt', 'a')
		print(data)
		hosts.write(data.decode("utf-8") + '\n')
		hosts.close()

		set_properties('master')

		conn.sendall(b'I got it: ' + data)
