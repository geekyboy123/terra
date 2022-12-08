cloud_run_object = {
    location      = "asia-east1"
    project_id    = "ascendant-timer-350911"
    service_name  = "test143"
    image         = "us-docker.pkg.dev/cloudrun/container/hello@sha256:2e70803dbc92a7bffcee3af54b5d264b23a6096f304f00d63b7d1e177e40986c"
    cloud_run_sa  = "1067777676421-compute@developer.gserviceaccount.com"
    template_annotations = {
      "run.googleapis.com/client-name"   = "terraform"
      "generated-by"                     = "terraform"
      "autoscaling.knative.dev/maxScale" = 2
      "autoscaling.knative.dev/minScale" = 1
      "run.googleapis.com/cloudsql-instances" = "ascendant-timer-350911:us-central1:mysql-instance-1"
      }
}
