# docker-graphviz

A container image with [Graphviz](https://www.graphviz.org/)
installed.


# Building

To build:

```{bash}
docker build --force-rm -t mylib/graphviz .
```


# Running

You'll probably want to start the container with a mounted volume:

```{bash}
docker run -i -t -v "path/to/dot/files:/myvolume" mylib/graphviz bash
```

And then run dot from within the container:

```{bash}
cd /myvolume
dot -Gdpi=300 -Tpng -o foo.png foo.gv
```

# License

Apache 2.0
