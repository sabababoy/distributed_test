
def set_properties(status):

	properties = open('jmeter.properties', 'r')

	new_prop = ''

	if status == 'master':
		hosts = open('hosts.txt', 'r')



	for line in properties.readlines():
		
		if line == '#server.rmi.ssl.disable=false\n':
			line = 'server.rmi.ssl.disable=true\n'
		
		elif status == 'master' and 'remote_hosts=' in line and '#' not in line:
			remote_hosts = line
			line = 'remote_hosts='
			for host in hosts.readlines():
				
				line += host[:-1] + ','

			line = line[:-1] + '\n'

		new_prop += line

	if status == 'master':
		hosts.close()



	properties.close()
	properties = open('jmeter.properties', 'w')
	properties.write(new_prop)

	properties.close()

if __name__ == '__main__':
	set_properties('slave')
