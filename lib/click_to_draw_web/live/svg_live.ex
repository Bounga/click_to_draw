defmodule ClickToDrawWeb.SVGLive do
  use Phoenix.LiveView

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :points, [])}
  end

  def render(assigns) do
    ~L"""
    <svg phx-click='clicked' width='500' height='500' style='border: 1px solid black'>
      <%= for {x, y} <- @points do %>
      <circle cx='<%= x %>' cy='<%= y %>' r='3' fill='#df6036' />
      <% end %>
    </svg>
    """
  end

  def handle_event("clicked", %{"offsetX" => x, "offsetY" => y} = _event, socket) do
    socket = update(socket, :points, fn points -> [{x, y} | points] end)
    {:noreply, socket}
  end
end
