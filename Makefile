test:
	docker run -it --rm \
		-v $(CURDIR)/vhserver:/home/vhserver \
		-v $(CURDIR)/common.cfg:/data/lgsm/config-lgsm/vhserver/common.cfg \
		-p 2456-2458:2456-2458/udp \
		-p 2456-2458:2456-2458/tcp \
		valheim:latest

build:
	docker build -t valheim .

run:
	docker run -d \
		-v $(CURDIR)/vhserver:/home/vhserver \
		-v $(CURDIR)/common.cfg:/data/lgsm/config-lgsm/vhserver/common.cfg \
		-p 2456-2458:2456-2458/udp \
		-p 2456-2458:2456-2458/tcp \
		valheim:latest
