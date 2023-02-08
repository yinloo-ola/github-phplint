FROM php:7.2.34-alpine3.12

LABEL "com.github.actions.name"="PHP Lint 7.2"
LABEL "com.github.actions.description"="Run the native PHP linter"
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/dbfx/github-phplint"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="Dave B <dave@blakey.co>"

RUN apk update && apk add bash

ADD entrypoint.sh /entrypoint.sh
RUN chmod 555 /entrypoint.sh

WORKDIR /github/workspace

ENTRYPOINT ["/entrypoint.sh"]
