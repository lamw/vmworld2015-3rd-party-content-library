# VMware 2015 Content Library Demo

Demo of VMware's 3rd Party Content Library using an Nginx Container.

## Requirement

* Container Host to run Docker Container like [VMware Photon](http://vmware.github.io/photon/)
* vSphere 6.0 environment

## Setup

#### Step 1

Copy the following files/directories to your Container Host
  * Dockerfile
  * default.conf
  * vghetto-content-library

If you are using VMware Photon, be sure to enable and start the Docker Client by running the following commands:

```console
systemctl enable docker
systemctl start docker
```  

#### Step 2

Build the Docker Container by running the following command:

```console
$ docker build -t tp-content-library-demo .
```

#### Step 3

Once the Container has been sucessfully built, you can run it using the following command:

```console
$ docker run -d -p 80:80 tp-content-library-demo
```

If everything was successful, you should be able to open a browser to the IP Address of your Container Host and you should see Nginx splash page.

The 3rd Party Content Library endpoint is exposed on http://ip/vghetto and to subscribe to the library, you will need to use the following URL: http://ip/vghetto/lib.json
