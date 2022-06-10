resource "kubernetes_deployment" "servian-app" {
  metadata {
    name = "servian-app"
    labels = {
      App = "servian-app"
    }
  }

  spec {
    replicas = 2
    selector {
      match_labels = {
        App = "servian-app"
      }
    }
    template {
      metadata {
        labels = {
          App = "servian-app"
        }
      }
      spec {
        container {
          image = "servian/techchallengeapp:latest"
          name  = "servian-app"

          port {
            container_port = 80
          }

        }
      }
    }
  }
}

resource "kubernetes_service" "servian-app" {
  metadata {
    name = "servian-app"
  }
  spec {
    selector = {
      App = "servian-app"
    }
    port {
      port        = 80
      target_port = 80
    }

    type = "LoadBalancer"
  }
}