resource "helm_release" "redis-chart" {
  name       = "redis-chart"
  repository = "https://github.com/leandrohinz/kubernetes.git"
  chart      = "./redis-chart"
  version    = "0.1.0"

  values = [
    "${file("./redis-chart/values.yaml")}"
  ]
}