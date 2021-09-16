import socket
import sys

HOST = 'jmeter-master'
PORT = 8080

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

s.connect((HOST, PORT))

# str = input()
ip = argv[1]
s.sendall(ip.encode('utf-8'))

data = s.recv(1024)
print(data)