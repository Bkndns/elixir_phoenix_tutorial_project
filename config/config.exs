# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :foo,
  ecto_repos: [Foo.Repo]

# Configures the endpoint
config :foo, FooWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "JfXISWcLxB+D33GwtjMfYX3l7GYnCB67Eit6GkzMF2d2BPjQ8enWrpc9C8isaSqD",
  render_errors: [view: FooWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Foo.PubSub,
  live_view: [signing_salt: "fdacsUYA"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
