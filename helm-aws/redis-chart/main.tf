resource "helm_release" "redis-chart" {
  name       = "redis-chart"
  repository = "https://github.com/leandrohinz/kubernetes.git"
  chart      = "helm-aws/redis-chart/Chart.yaml"
  version    = "0.1.0"

  values = [
    "${file("values.yaml")}"
  ]
}