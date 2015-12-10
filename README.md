docker-syncthing
================

Docker image for [syncthing]

# Usage

* run syncthing container to generate default config files
* edit config.xml for access WEB admin
	* change `127.0.0.1` to `0.0.0.0`
	* recommand enable tls
* recreate syncthing container for update config
* open browser to the WEB admin
	* setup admin user and password
	* add other device in WEB admin

# docker-compose sample

```
syncthing:
  image: tsaikd/syncthing:0.12.7
  hostname: YOUR_HOSTNAME
  ports:
    - 8384:8384
    - 22000:22000
    - 21027:21027/udp
  volumes:
    - ./syncthing/config:/syncthing/.config/syncthing
    - ./syncthing/sharefolder:/syncthing/Sync
```

* setup hostname to let your device human readable
* 8384 for WEB admin
* 22000 syncthing protocol
* 21027 discovery protocol

See http://docs.syncthing.net/users/firewall.html for more PORT information

[syncthing]: https://syncthing.net/
