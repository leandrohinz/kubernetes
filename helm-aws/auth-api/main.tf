resource "helm_release" "auth-api-chart" {
  name       = "auth-api-chart"
  repository = "https://github.com/leandrohinz/kubernetes.git"
  chart      = "./auth-api-chart"
  version    = "0.1.0"

  values = [
    "${file("./auth-api-chart/values.yaml")}"
  ]
}