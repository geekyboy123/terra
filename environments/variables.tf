variable "location" {
  description = "The location where resources are going to be deployed."
  type        = string
  default     = "us-central1"
}

variable "project_id" {
  description = "The project where cloud run is going to be deployed."
  type        = string
  default     = "ascendant-timer-350911"
}

variable "service_name" {
  description = "The name of the Cloud Run service to create."
  type        = string
  default     = "teaser"
}

variable "image" {
  description = "GAR hosted image URL to deploy."
  type        = string
  default     = "us-docker.pkg.dev/cloudrun/container/hello"
}

variable "cloud_run_sa" {
  description = "Service account to be used on Cloud Run."
  type        = string
  default     = "ascendant-timer-350911@appspot.gserviceaccount.com"
}
# cpu = (core count * 1000)m
# memory = (size) in Mi/Gi
variable "limits" {
  description = "Resource limits to the container."
  type        = map(string)
  default     = null
}

variable "ports" {
  description = "Port which the container listens to (http1 or h2c)."
  type = object({
    name = string
    port = number
  })
  default = {
    name = "http1"
    port = 8080
  }
}


variable "maxscale" {
  description = "Sets the maximum number of container instances needed to handle all incoming requests or events from each revison from Cloud Run. For more information, access this [documentation](https://cloud.google.com/run/docs/about-instance-autoscaling)."
  type        = number
  default     = 2
}

variable "minscale" {
  description = "Sets the minimum number of container instances needed to handle all incoming requests or events from each revison from Cloud Run. For more information, access this [documentation](https://cloud.google.com/run/docs/about-instance-autoscaling)."
  type        = number
  default     = 1
}


