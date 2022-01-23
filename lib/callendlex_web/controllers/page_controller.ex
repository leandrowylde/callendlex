defmodule CallendlexWeb.PageController do
  use CallendlexWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
