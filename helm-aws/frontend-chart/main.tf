resource "helm_release" "frontend-chart" {
  name       = "frontend-chart"
  repository = "https://github.com/leandrohinz/kubernetes.git"
  chart      = "frontend-chart/Chart.yaml"
  version    = "0.1.0"

  values = [
    "${file("values.yaml")}"
  ]
}