FROM alpine
RUN apk -U add ca-certificates && rm -rf /var/cache/apk/*
COPY rclone-*-linux-amd64/rclone /usr/bin/
ENTRYPOINT [ "/usr/bin/rclone" ]