-include ~/ana_vars.Makefile

ssme:
	sshuttle -r $(me)@p1dlplogin $(uib_ips)

unsshulte:
	sudo iptables -t nat -D OUTPUT -j sshuttle-12300
	sudo iptables -t nat -D PREROUTING -j sshuttle-12300
	sudo iptables -t nat -F sshuttle-12300
	sudo iptables -t nat -X sshuttle-12300

docker_internet_start:
	sudo iptables -D DOCKER-USER -i eth0 ! -s 172.18.0.0/16 -j DROP

docker_internet_stop:
	sudo iptables -I DOCKER-USER -i eth0 ! -s 172.18.0.0/16 -j DROP

banana:
	echo "banana"
