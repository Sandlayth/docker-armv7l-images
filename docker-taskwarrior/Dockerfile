FROM sandlayth/armv7l-alpine
MAINTAINER Sandlayth <modepadu95@riseup.net>

RUN apk update && apk add task taskd taskd-pki task-doc taskd-doc --no-cache 

RUN apk add ruby ruby-dev make gcc build-base ruby-rdoc ruby-irb --no-cache 

RUN gem install taskwarrior-web

EXPOSE 5678

CMD ["task-web", "-F"]
