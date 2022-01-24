defmodule CallendlexWeb.PageLive do
  use CallendlexWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end
end
