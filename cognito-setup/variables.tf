# variables.tf
variable "ENV" {
  default = "DEV"
}

variable "user_pool_name" {
  description = "Define UserPool name"
  default = "PASSWORDLESS-USER-POOL"
}

variable "client_email_app_name" {
  description = "Define UserPool name"
  default = "EmailPasswordLessApp"
}

variable "aws_region" {
  description = "The AWS region things are created in"
  default = "ap-southeast-1"
}

# Update your Email Account
variable "ses_email_address" {
  description = "Email account for ses account, verify the account after logging into your account."
  default = "exmaple@gmail.com"
}