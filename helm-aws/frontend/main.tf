resource "helm_release" "frontend_chart" {
  name       = "frontend-chart"
  repository = "https://github.com/leandrohinz/kubernetes.git"
  chart      = "helm-aws/frontend-chart"
  version    = "0.1.0"

  values = [
    "${file("values.yaml")}"
  ]
}