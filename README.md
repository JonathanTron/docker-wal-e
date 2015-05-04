# wal-e docker images

Configuration to generate [Docker](https://www.docker.com) images with
[wal-e](http://github.com/wal-e/wal-e) pre-installed based on Ubuntu 14.04.2.

# Use the images

The goal is to provide images for various wal-e versions to help with running
maintenance commands.

You can use those images directly:

```bash
# Show wal-e help, deleting the container once you exit
docker run --rm jonathantron/wal-e:0.7.3
# List backups, deleting the container once you exit
docker run --rm -e AWS_ACCESS_KEY_ID=XXX AWS_SECRET_ACCESS_KEY=XXX WALE_S3_PREFIX=s3://BUCKET_NAME/PATH_TO_FILES jonathantron/wal-e:0.7.3 backup-list
```

Or you can choose to use them to build you own via `Dockerfile`:

```dockerfile
# For stable build, depends on tagged release
FROM jonathantron/wal-e:0.7.3

MAINTAINER You <you@yourdomain.tld>

# your image specific elements
```
