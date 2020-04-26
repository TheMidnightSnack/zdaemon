# zdaemon

```
sudo docker run -it \
    --name zdaemon \
    -p 10666:10666/udp \
    -e IWAD=doom2.wad \
    -e PWADS=dwango6.wad \
    -v /home/ostrichbot/zdaemon/configs/dm.cfg:/zdaemon/zerv.cfg \
    -v /home/ostrichbot/zdaemon/wads:/zdaemon/wads \
    -v /home/ostrichbot/zdaemon/doom2.wad:/zdaemon/doom2.wad \
    --restart=unless-stopped \
    ostrichbot/zdaemon
```
