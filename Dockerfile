FROM elixir:1.5-alpine

RUN mkdir /home/app
WORKDIR /home/app
COPY . ./

RUN mix local.hex --force
RUN mix deps.get --force
RUN mix local.rebar --force

CMD ["mix", "phx.server"]
