defmodule ClickToDrawWeb.Router do
  use ClickToDrawWeb, :router

  import Phoenix.LiveView.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {ClickToDrawWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ClickToDrawWeb do
    pipe_through :browser

    live "/", PageLive, :index
    live "/svg_live", SVGLive
  end

  # Other scopes may use custom stacks.
  # scope "/api", ClickToDrawWeb do
  #   pipe_through :api
  # end
end
