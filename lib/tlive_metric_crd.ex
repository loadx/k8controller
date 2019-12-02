defmodule TliveMetricCrd.Main do
  use GenServer
  require Logger
  # require Kazan.Watcher.Event, as: Event

  def start_link(_no) do
    GenServer.start_link(__MODULE__, :ok, name: Main)
  end

  @impl true
  def init(:ok) do
    Logger.debug("started")

    server = Kazan.Server.from_kubeconfig("/home/loadx/src/CRD-k8/tlive_metric_crd/kube.yml")

    foo = self
    require IEx
    IEx.pry()

    {:ok, %{}}
  end

  @impl true
  def handle_info(any, state \\ []) do
    Logger.debug("called")
    IO.inspect(any.object)
    {:noreply, state}
  end
end
