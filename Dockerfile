FROM alpine
LABEL "repository"="https://github.com/liskl/actions-github-tag"
LABEL "homepage"="https://github.com/liskl/actions-github-tag"
LABEL "maintainer"="Loren Lisk"
LABEL "original_creator"="https://github.com/anothrNick/github-tag-action"


COPY ./contrib/semver ./contrib/semver
RUN install ./contrib/semver /usr/local/bin
COPY entrypoint.sh /entrypoint.sh

RUN apk update && apk add bash git curl jq

ENTRYPOINT ["/entrypoint.sh"]