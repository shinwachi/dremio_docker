FROM dremio/dremio-oss:3.0.6

# don't start dremio using entrypoint (can't stop from dremio-admin)
ENTRYPOINT []

COPY ./server /server
CMD ["/bin/bash","/server/main_loop.sh"]

