FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.16

RUN gem install git-ci-helper --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["git-ci"]
CMD ["--help"]
