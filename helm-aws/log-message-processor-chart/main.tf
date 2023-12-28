resource "helm_release" "log-message-processor-chart" {
  name       = "log-message-processor-chart"
  repository = "https://github.com/leandrohinz/kubernetes.git"
  chart      = "helm-aws/log-message-processor-chart/Chart.yaml"
  version    = "0.1.0"

  values = [
    "${file("values.yaml")}"
  ]
}