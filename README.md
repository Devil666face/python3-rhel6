[Download](https://github.com/Devil666face/python3-rhel6/releases/download/python3-rhel6.tar.gz/python3-rhel6.tar.gz)

## Build

Build container

```bash
docker-compose up --build --force-recreate
```

Your build of python in `./dist`

## Install

Unzip builded archive in `/opt`

```bash
tar -xf ./dist/python3-rhel6.tar.gz -C /opt
```

## Run

Just use this:

```bash
/opt/python/bin/python3*

```

or

```
cd /opt/python
./bin/python3*

```

## Errors

If you run python:

```bash
./bin/python3.9
```

And have error like this:

```bash
./bin/python3.9: error while loading shared libraries: libpython3.9.so.1.0: cannot open shared object file: No such file or directory
```

You must set `LD_LIBRARY_PATH` in `lib` with python.
Use this:

```
LD_LIBRARY_PATH=:./lib ./bin/python3.9
```

or with full path

```
LD_LIBRARY_PATH=:/opt/python/lib /opt/python/bin/python3.9
```
