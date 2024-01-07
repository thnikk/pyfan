install:
	install -d /usr/local/bin/
	install -m 755 pyfan /usr/local/bin/
	install -d /etc/systemd/system/
	install -m 644 pyfan.service /etc/systemd/system/
	#install -m 644 pyfan.timer /etc/systemd/system/
