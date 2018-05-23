Getting Started with ScuttleMesh
================================

**ScuttleMesh** is [Secure Scuttlebutt](https://github.com/ssbc/secure-scuttlebutt) over a self-configuring encrypted mesh network formed by Raspberry Pis.

## Setting up mesh-orange

1. Download [raspberrypi3-0.8_mesh-workshop.img](https://github.com/benhylau/mesh-workshop/releases/download/v0.3/raspberrypi3-0.8_mesh-workshop.img) and flash SD card.

1. Download [confd-0.3.tar.gz](https://github.com/benhylau/mesh-workshop/releases/download/v0.3/confd-0.3.tar.gz), which is an archive containing 40 unique host configurations. Mount the FAT partition of the SD card you flashed in the previous step, then copy from `output/conf.d/<hostname>/*` to the `conf.d/` on the SD card root.

    For example, on Mac OS:

        $ cp -r output/conf.d/bloor/* /Volumes/BOOT/conf.d/

    Now you have configured the node with hostname `bloor`.

## Running applications

1. Download these [docker image archives](https://ipfs.io/ipns/QmcxKn3WEwWTf5WCnWD9WPnq4mfu1zXkMDgVKCNFJ6NpDG) to your computer, then put them in `conf.d/docker/` on the SD card root of each node you are preparing.

    | Docker Image Archive           | Docker Image               |
    |:-------------------------------|:---------------------------|
    | `tomeshnet-ipfs-<version>.tar` | `tomeshnet/ipfs:<version>` |
    | `tomeshnet-ssb-<version>.tar`  | `tomeshnet/ssb:<version>`  |

    For example, on Mac OS:

        $ mkdir /Volumes/BOOT/conf.d/home/docker
        $ cp tomeshnet-ipfs-0.1.tar /Volumes/BOOT/conf.d/home/docker/
        $ cp tomeshnet-ssb-0.1.tar /Volumes/BOOT/conf.d/home/docker/

1. Running ipfs:

        root@bloor:~# docker load --input ~/docker/tomeshnet-ipfs-0.1.tar
        root@bloor:~# docker run --name ipfs --network host --detach tomeshnet/ipfs:0.1

    Running ssb:

        root@bloor:~# docker load --input ~/docker/tomeshnet-ssb-0.1.tar
        root@bloor:~# docker run --name ssb --network host --detach tomeshnet/ssb:0.1

1. You can interact with the application with:

        root@bloor:~# docker exec -it <application> <command>

    as in these [examples](./docs/ssb-docker-examples.md).

    Or start an interactive session:

        root@bloor:~# docker exec -it <application> sh

## Creating new image archives

See instructions in [Mesh Workshop](https://github.com/benhylau/mesh-workshop#10-run-applications-with-docker).
