# Elm integration for A-Frame

This module brings declarative WebVR framework [A-Frame](https://aframe.io/) to Elm.

## Tutorials

[Easy VR with Elm and A-Frame](https://medium.com/@tilman_s/easy-vr-with-elm-and-a-frame-a5c72cfb9945) by [@tilmans](https://github.com/tilmans)

## Running examples

    cd examples/HelloWorld
    elm-make Main.elm --output index.js
    
## Running webpack example
The webpack configuration includes a webserver and will automatically reload your code when you make changes. Error message during build will be shown in the browser console.

    cd examples/webpack
    npm install
    elm-make
    npm run start
    
    
