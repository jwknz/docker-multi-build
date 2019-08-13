# Docker Multi Stage

Build the docker images first - this step as you can see in the docker file also builds the project.

```
docker build -t reacttest .
```

Next you can run the build output of the project:

```
docker run -d -p 3000:80 reacttest
```