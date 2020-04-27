# zdaemon

### Run from your zdaemon file directory
```
sudo docker run -it \
    --name zdaemon \
    -p 10666:10666/udp \
    -e CFG=dm.cfg \
    -e IWAD=doom2.wad \
    -e PWADS=dwango6.wad \
    -v $(pwd)/cfg:/zdaemon/cfg \
    -v $(pwd)/pwads:/zdaemon/pwads \
    -v $(pwd)/iwads:/zdaemon/iwads \
    --restart=unless-stopped \
    ostrichbot/zdaemon
```
