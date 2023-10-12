# PoC for microfrontend in Flutter

## Apps

There are four apps in here. They were exported from flutterflow.
- base_app: The main application.
- g1s1, g2s1, g3s1 are sub application over the routes /grouponeservieone, /grouptwoserviceone, and /groupthreeserviceone.


## Building Application

Run this bash command 

``` bash
bash build.sh
```


## Running the Application

Run this bash command. It will build a docker image. Hence you need to have docker installed.

``` bash
bash build_run_docker.sh
```

### Caveats
In the serve-files directory, you need to copy the service worker version from base_app to index.html in root folder.

That is from ./serve-files/base_app/index.html to ./serve-files/index.html.

## Remarks

This application makes use of single-spa framework. But single-spa framework does not yet support Flutter. So this is my humble attemp to make it work for a very small use case.