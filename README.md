# GitHub AVR make action

This action provides an easy way to build AVR project using AVR-toolchain (e.g. `avr-gcc`, `avr-objcopy`) and GNU make.

## Usage

Use the `dir` input to specify the directory of the `Makefile` relative to the project root.  If `dir` is omitted, the `Makefile` is assumed to be located in the project root.
Use the `target` input to specify the `make` target.

Example of the workflow.

```
name: CI

on:
  push:
    branches: [ master ]
  pull_request:
    branches: [ master ]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@master
    - uses: bazhenov/action-avr-make@v1.1
        with:
           dir: path/to/dir_with_Makefile
           target: all
```
