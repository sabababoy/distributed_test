import os
import time

os.system('pwd')

while True:

	t = time.localtime()

	result = os.system('touch ../../logs/check-script-logs.txt')

	result = os.system('cp ../../admin/$(ls ../../admin) ./Scripts >> /dev/null 2>&1') #copy file to a jmeter directory

	if result == 0:

		result = os.system('rm ../../admin/$(ls ../../admin) >> ../../logs/check-script-logs.txt 2>&1')

		current_time = time.strftime("%H:%M:%S", t)

		os.system('echo "Script is accepted and moved ' + str(current_time) + '">> ../../logs/check-script-logs.txt')

		# if result != 0:
		# 	print('There is a problem in removing of the test script')

	else:

		current_time = time.strftime("%H:%M:%S", t)

		# os.system('echo "There is no script in the folder. ' + str(current_time) + '" >> ../../logs/check-script-logs.txt')

		# print('There is no script in the folder' + str(current_time))

	time.sleep(10)
