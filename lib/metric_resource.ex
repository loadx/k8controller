defmodule MetricResource do
  use Kazan.Model

  @k8_namespace "i13n.tlive"

  defmodel "ScrapedMetric", @k8_namespace, "v1" do
    property :name, "name", :string
    property :source, "source", :string
    property :sampleRate, "sampleRate", :integer
  end
end

defmodule MetricResourceList do
  use Kazan.Model

  @k8_namespace "i13n.tlive"

  defmodellist "ScrapedMetricList", @k8_namespace, "v1", MetricResource
end
