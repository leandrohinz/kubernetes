resource "helm_release" "users-api-chart" {
  name       = "users-api-chart"
  repository = "https://github.com/leandrohinz/kubernetes.git"
  chart      = "helm-aws/users-api-chart/Chart.yaml"
  version    = "0.1.0"

  values = [
    "${file("values.yaml")}"
  ]
}