resource "helm_release" "log-message-processor-chart" {
  name       = "log-message-processor-chart"
  repository = "https://github.com/leandrohinz/kubernetes.git"
  chart      = "./log-message-processor-chart"
  version    = "0.1.0"

  values = [
    "${file("./log-message-processor/values.yaml")}"
  ]
}