FROM elixir:1.7-slim


LABEL "name"="Elixir Mix Action"
LABEL "maintainer"="Jake Wilkins <jake@jakewilkins.com.com>"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="GitHub Action for Elixir Mix tasks"
LABEL "com.github.actions.description"="A wrapper for running Mix tasks."
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="purple"
COPY README.md /

RUN mix local.rebar --force
RUN mix local.hex --if-missing --force

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
