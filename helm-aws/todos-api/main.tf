resource "helm_release" "todos-api-chart" {
  name       = "todos-api-chart"
  repository = "https://github.com/leandrohinz/kubernetes.git"
  chart      = "./todos-api-chart"
  version    = "0.1.0"

  values = [
    "${file("./todos-api-chart/values.yaml")}"
  ]
}