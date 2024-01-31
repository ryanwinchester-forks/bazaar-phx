defmodule BazaarWeb.Router do
  use BazaarWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {BazaarWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  scope "/", BazaarWeb do
    pipe_through :browser
    live "/", CounterLive, :home
  end
end
