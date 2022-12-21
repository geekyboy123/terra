variable "cloud_run_object" {
  description = "cloud_run_object Details"
  type = object({
    location      = string
    project_id    = string 
    service_name  = string
    image         = string
    cloud_run_sa  = string
    template_annotations = map(string)
    
  }
 )
}

