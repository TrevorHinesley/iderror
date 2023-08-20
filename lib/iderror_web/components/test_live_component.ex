defmodule IderrorWeb.TestLiveComponent do
  use IderrorWeb, :live_component

  def mount(socket) do
    {:ok, socket}
  end

  def update(assigns, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div id={@id}>Test</div>
    """
  end
end
