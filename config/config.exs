# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :click_to_draw, ClickToDrawWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "kH9S6Unrv55UodvE6leDteYkCCVe7M/Cg8n+6+r8psD+fA5hfkah+STYsqDnd48X",
  render_errors: [view: ClickToDrawWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ClickToDraw.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "yG5y25ZR"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
