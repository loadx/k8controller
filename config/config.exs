use Mix.Config

config(
  :kazan,
  :server,
  {:kubeconfig, "/home/loadx/src/CRD-k8/tlive_metric_Elixir.Kazan.Codegen.Namingcrd/kube.yml"}
)

config :kazan,
  oai_name_mappings: [{"tlive.foo.", Kazan.ScrapedMetric}],
  oai_spec: "/home/loadx/src/CRD-k8/tlive_metric_crd/swagger.json"
