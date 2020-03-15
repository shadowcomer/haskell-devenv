# haskell-devenv
This repository allows for the creation of a haskell development environment. It was created to fulfill the following constraints:

1. Allow for remote development using VS Code, particularly from Windows.
2. Establish a "stable" development environment. It's common for updates to the Haskell ecosystem to break development tools.
3. Create a Haskell development workflow using Cabal and ghcide.
4. Be easy for Haskell newcomers to setup and begin learning Haskell. Haskell tooling can be stressful when trying to learn the language, and can turn away people from learning the programming language.

Although the above constraints are restricted to a particular scenario, such as developing from the Windows operating system, the approach may work for other systems.

# Build & Run Instructions
```
docker build -t haskell-devenv .
docker run --rm -d -ti -v C:\Users\MyUser\repos\MyRepository:/home/ubuntu/MyRepository haskell-devenv /bin/bash
```
