FROM lpodkalicki/avr-toolchain

LABEL "name"="avr-make"
LABEL "maintainer"="Denis Bazhenov <dotsid@gmail.com>"
LABEL "version"="1.0.0"
LABEL "com.github.actions.name"="avr-make"
LABEL "com.github.actions.description"="Run make with avr-toolchain"
LABEL "com.github.actions.icon"="terminal"
LABEL "com.github.actions.color"="black"

WORKDIR /github/workspace

ENTRYPOINT ["make"]