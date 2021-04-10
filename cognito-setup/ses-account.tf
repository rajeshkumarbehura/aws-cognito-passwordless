# email address
resource "aws_ses_email_identity" "email_address_1" {
  email = var.ses_email_address
}