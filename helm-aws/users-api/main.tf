resource "helm_release" "users-api-chart" {
  name       = "users-api-chart"
  repository = "https://github.com/leandrohinz/kubernetes.git"
  chart      = "./users-api-chart"
  version    = "0.1.0"

  values = [
    "${file("./users-api-chart/values.yaml")}"
  ]
}