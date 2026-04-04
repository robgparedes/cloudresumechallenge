variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-southeast-2"
}

variable "project_name" {
  description = "Project prefix"
  type        = string
  default     = "cloudresume"
}

variable "allowed_origin" {
  description = "Frontend origin for CORS"
  type        = string
  default     = "https://robertgparedes.com"
}

variable "cloudflare_api_token" {
  description = "Cloudflare API token"
  type        = string
  sensitive   = true
}

variable "cloudflare_zone_id" {
  description = "Cloudflare Zone ID for robertgparedes.com"
  type        = string
}