# haskell-devenv
This repository allows for the creation of a haskell development environment. It was created to fulfill the following constraints:

1. Allow for remote development using VS Code, particularly from Windows. The docker container will be run locally on the same machine as the host.
2. Establish a "stable" development environment. It's common for updates to the Haskell ecosystem to break development tools.
3. Create a Haskell development workflow using Cabal and ghcide.
4. Be easy for Haskell newcomers to setup and begin learning Haskell. Haskell tooling can be stressful when trying to learn the language, and can turn away people from learning the programming language.

Although the above constraints are restricted to a particular scenario, such as developing from the Windows operating system, the approach may work for other systems.

# Setup
1. Install [VS Code](https://code.visualstudio.com/).
2. Install the [Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack) plugin.
3. Install [Docker](https://www.docker.com/).
4. Clone the ```haskell-devenv``` repository.
5. Build the Docker image. Make sure you're in the ```haskell-devenv``` directory:
```
cd haskell-devenv
docker build -t haskell-devenv .
```
6. Run the built Docker image so VS Code can connect to it. The ```-v``` option allows us to mount a folder to another folder inside the image, so we can keep the code on our machine. ```MyRepository``` can be an empty folder to start with.
```
docker run --rm -d -ti -v C:\Users\MyUser\repos\MyRepository:/home/ubuntu/MyRepository haskell-devenv /bin/bash
```
The image will run until stopped, and will not restart with the host machine. When it's stopped, it will automatically remove itself.

7. [Connect](https://code.visualstudio.com/docs/remote/containers#_attaching-to-running-containers) to the image with VS Code.
8. Install the following VS Code plugins remotely: [ghcide](https://marketplace.visualstudio.com/items?itemName=DigitalAssetHoldingsLLC.ghcide), [hoogle-vscode](https://marketplace.visualstudio.com/items?itemName=jcanero.hoogle-vscode). Their dependencies are already installed in the machine.
