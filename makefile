hosts:
	awk -f files/hosts.awk files/list.txt > ./hosts

.PHONY: clean

clean:
	rm ./hosts
