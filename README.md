# Aws Cognito Email Passwordless

Applicaiton is build for aws region ap-southeast-1

Ses Email Id = <<SES_VERIFIED_EMAIL_ID>>

### Steps to setup Passwordless using email id
````
1. deploy the lambda using serveless framework
2. depploy aws cognito & ses email account using terraform
3. verfiy your email id  for ses account
4. setup lambda for congnito triggers
5. test the passwordless using aws congnito cli commands
````