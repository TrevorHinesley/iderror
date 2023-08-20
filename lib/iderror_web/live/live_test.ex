defmodule IderrorWeb.LiveTest do
  use IderrorWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <.live_component id="SOMEID" module={IderrorWeb.TestLiveComponent} />
    """
  end
end
