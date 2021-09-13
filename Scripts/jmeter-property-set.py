prop = open('jmeter.properties', 'r')

line = prop.readline()
new_prop = ''

while line:
	if line == '#server.rmi.ssl.disable=false\n':
		line = 'server.rmi.ssl.disable=true\n'
	new_prop += line
	line = prop.readline()

prop.close()
prop = open('jmeter.properties', 'w')
prop.write(new_prop)
prop.close()