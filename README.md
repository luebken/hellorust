# hellorust
A simple project to get started with rust in a Docker environment.

```
$ make build
docker run --rm -v /Users/mdl/tmp/hellorust:/source jimmycuadra/rust rustc hello_world.rs
docker build -t luebken/hellorust .
Sending build context to Docker daemon   642 kB
Step 1 : FROM debian:jessie
 ---> f50f9524513f
Step 2 : ADD hello_world /root
 ---> Using cache
 ---> 4b692be075c5
Step 3 : CMD /root/hello_world
 ---> Using cache
 ---> a6dc59a685b5
Successfully built a6dc59a685b5
```

```
$ make run
docker run -it luebken/hellorust
hello rust
```

Go edit hello_world.rs