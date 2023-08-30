variable "image_id" {
  type = string
  default = "ami-055744c75048d8296"
  description = "value of the image id"

sensitive = true

validation {
  condition = length(var.image_id) > 4 && substr(var.image_id, 0, 4) == "ami-"
  error_message = "image_id should not be empty"
    }
}