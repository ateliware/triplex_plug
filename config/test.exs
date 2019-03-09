use Mix.Config

config :triplex,
  reserved_tenants: [
    "www",
    "api",
    "admin",
    "security",
    "app",
    "staging",
    ~r/^db\d+$/
  ]
