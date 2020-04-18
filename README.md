# GitHub AVR make action

This action provides an easy way to build AVR project using AVR-toolchain (e.g. `avr-gcc`, `avr-objcopy`) and GNU make.

## Usage

`Makefile` should be located in project root. Default target (usually the first one in a file) is run.

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
    - uses: bazhenov/action-avr-make@v1.0
```