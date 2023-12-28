resource "helm_release" "frontend_chart" {
  name       = "frontend-chart"
  repository = "https://github.com/leandrohinz/kubernetes"
  chart      = "./frontend-chart"
  version    = "0.1.0"
  namespace  = "leandrohinestroza"

  values = [
    "${file("./frontend-chart/values.yaml")}"
  ]
}