resource "helm_release" "todos-api-chart" {
  name       = "todos-api-chart"
  repository = "https://github.com/leandrohinz/kubernetes.git"
  chart      = "helm-aws/todos-api-chart/Chart.yaml"
  version    = "0.1.0"

  values = [
    "${file("values.yaml")}"
  ]
}