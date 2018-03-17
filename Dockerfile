FROM narfman0/docker-bitlbee:latest

RUN apt-get update && apt-get install -y bitlbee-dev bitlbee-plugin-otr \
        git autoconf build-essential autoproject libtool glib2.0 glib2.0-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /opt
RUN git clone https://github.com/sm00th/bitlbee-discord.git && \
    cd bitlbee-discord && \
    ./autogen.sh && \
    ./configure && \
    make && \
    make install
