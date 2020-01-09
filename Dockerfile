FROM ruby:2.7.0

LABEL "com.github.actions.name"="Publish Plugin if version files are touched"
LABEL "com.github.actions.description"="Example code for building a GitHub Action with the language you love, Ruby."
LABEL "com.github.actions.icon"="filter"
LABEL "com.github.actions.color"="red"

COPY entrypoint.sh /entrypoint.sh
COPY action.rb /action.rb

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
