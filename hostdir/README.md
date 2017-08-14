# How to use this repo

## In repo root directory run
```bash
docker build -t wechat .
```

## Download all necessary files from your phone and move them to `./hostdir`

## From the repo root run the image you just built, mounting the hostdir to the image as a volume:
```bash
docker run -v `pwd`/hostdir:/root/wechat-dump/workdir -it wechat /bin/bash
```

## Do your thing :)
