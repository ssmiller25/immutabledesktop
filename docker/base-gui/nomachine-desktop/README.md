# NoMachine Desktop

Perhaps another method to provide remote access.  Taken from
https://www.nomachine.com/DT10O00161

To build

```
docker build -t=nomachine .
```

To run (Ubuntu 16.04 and Mac)

```
docker run -d -p 4000:4000  -p 22:22 -p 4443:4443 --cap-add=SYS_PTRACE nomachine
```
