defmodule CallendlexWeb.Router do
  use CallendlexWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {CallendlexWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  # scope "/", CallendlexWeb do
  #   pipe_through :browser

  #   live "/", PageLive
  # end

  live_session :public, on_mount: CallendlexWeb.Live.InitAssigns do
    scope "/", CallendlexWeb do
      pipe_through :browser

      live "/", PageLive
    end
  end

  # Other scopes may use custom stacks.
  # scope "/api", CallendlexWeb do
  #   pipe_through :api
  # end
end
