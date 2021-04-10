resource "aws_cognito_user_pool" "pool" {
  name = "${var.ENV}-${var.user_pool_name}"

  # Possible values: 'phone_number', 'email', or 'preferred_username'. Conflicts with username_attributes."
  # alias_attributes         = [null]
  username_attributes = [
    "email"]
  auto_verified_attributes = []

  username_configuration {
    case_sensitive = true
  }

  password_policy {
    minimum_length = 6
    require_lowercase = false
    require_numbers = false
    require_symbols = false
    require_uppercase = false
    temporary_password_validity_days = 7
  }

  mfa_configuration = "OFF"

  account_recovery_setting {
    recovery_mechanism {
      name = "admin_only"
      priority = 1
    }
  }
}

## Create App Client in POOL
resource "aws_cognito_user_pool_client" "client" {
  name = var.client_email_app_name
  user_pool_id = aws_cognito_user_pool.pool.id
  # Note : generate secret must be false.
  generate_secret = false
  explicit_auth_flows = [
    "ALLOW_CUSTOM_AUTH",
    "ALLOW_REFRESH_TOKEN_AUTH"
  ]
}