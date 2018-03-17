# docker-bitlbee-discord

## Description

Discord support for bitlbee

## Usage

Run bitlbee listening on port 6667 with default config and persistent local volume:
```
docker run -p 6667:6667 -v $(pwd)/bitlbee:/var/lib/bitlbee narfman0/docker-bitlbee-discord -n bitlbee
```

Build container with
```
docker build . -t narfman0/docker-bitlbee-discord
```

## License

Copyright 2018 Jon Robison

See LICENSE for details
