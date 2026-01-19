# GitHub AVR make action

This action provides an easy way to build AVR project using AVR-toolchain (e.g. `avr-gcc`, `avr-objcopy`) and GNU make.

## Usage

Use the input `dir` to specify the directory of the Makefile relative to the project root.  Or, omit the `dir` input if the Makefile is in the project root. Default target (usually the first one in a file) is run.

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
           dir: path/to/dir/with/Makefile
```
