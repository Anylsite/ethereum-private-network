FROM ethereum/client-go:alpine

RUN adduser -D -u 1000 eth_user

COPY common /home/eth_user/common
RUN chown -R eth_user:eth_user /home/eth_user/common

USER eth_user

RUN /geth init /home/eth_user/common/genesis.json