# LaTeX Toolchain

This is a simple docker utility to build latex projects using Chris Monson's  [latex-makefile](https://github.com/shiblon/latex-makefile).  It can be used to instantly drop the compiled `Makefile` of his project into your project for quick builds.

## Usage

Adding your project contents to the `/workspace` volume will enable you to call any of the `Makefile`'s commands.  An example running the `help` command can be accomplished like so:

```
$ docker run -it --rm \
    -v $(pwd):/workspace \
    a1exanderjung/latex-toolchain \
    help
```

## Building from scratch

I've included my own [`Makefile`](/Makefile) to build the container from scratch, simply call:

```
$ make container
```

to build the container.
