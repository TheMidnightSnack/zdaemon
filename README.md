# zdaemon

```
sudo docker run -it \
    --name zdaemon \
    -p 10666:10666/udp \
	-e CFG=dm.cfg \
    -e IWAD=doom2.wad \
	-e PWADS=dwango6.wad \
	-v /home/ostrichbot/zdaemon/configs:/zdaemon/configs \
	-v /home/ostrichbot/zdaemon/pwads:/zdaemon/pwads \
	-v /home/ostrichbot/zdaemon/iwads:/zdaemon/iwads \
	--restart=unless-stopped \
    ostrichbot/zdaemon
```
