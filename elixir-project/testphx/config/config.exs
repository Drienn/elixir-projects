# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :testphx,
  ecto_repos: [Testphx.Repo]

# Configures the endpoint
config :testphx, TestphxWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "h+dRwhJfUGUY1EGGHwADBKGACTHaEuZoP6NLad0wESaW4rCf8T6D17tHRD1m2+xF",
  render_errors: [view: TestphxWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Testphx.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
