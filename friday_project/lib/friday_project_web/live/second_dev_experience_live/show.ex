defmodule FridayProjectWeb.SecondDevExperienceLive.Show do
  use FridayProjectWeb, :live_view

  alias FridayProject.Fridays

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def handle_params(%{"id" => id}, _, socket) do
    {:noreply,
     socket
     |> assign(:page_title, page_title(socket.assigns.live_action))
     |> assign(:second_dev_experience, Fridays.get_second_dev_experience!(id))}
  end

  defp page_title(:show), do: "Show Second dev experience"
  defp page_title(:edit), do: "Edit Second dev experience"
end
