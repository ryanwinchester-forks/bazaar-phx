defmodule BazaarWeb.CounterLive do
  use BazaarWeb, :live_view

  @impl true
  def mount(_, _, socket) do
    {:ok,
     socket
     |> assign(:count_1, 0)
     |> assign(:count_2, 0)
     |> assign(:count_3, 0)
     |> assign(:count_4, 0)}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <.counter id="1" count={@count_1} />
    <.counter id="2" count={@count_2} />
    <.counter id="3" count={@count_3} />
    <.counter id="4" count={@count_4} />
    """
  end

  @impl true
  def handle_event("increment", %{"counter" => id}, socket) do
    {:noreply, update(socket, :"count_#{id}", &(&1 + 1))}
  end

  @impl true
  def handle_event("decrement", %{"counter" => id}, socket) do
    {:noreply, update(socket, :"count_#{id}", &(&1 - 1))}
  end

  defp counter(assigns) do
    ~H"""
    <div class="mt-2 ml-2">
      <button class="bg-gray-300 py-1 px-2" phx-click="increment" phx-value-counter={@id}>+</button>
      <button class="bg-gray-300 py-1 px-2" phx-click="decrement" phx-value-counter={@id}>-</button>
      you clicked <%= @count %> times
    </div>
    """
  end
end
