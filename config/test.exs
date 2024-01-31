import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :bazaar, BazaarWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "XfuNoNoSN0TBd8I54+Ml5/9mgztiiiF0ANup48US4ivwL3r6qVI4ExBSQLXa8ApG",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
