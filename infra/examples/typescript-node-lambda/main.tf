module "lambda_function" {
  source = "terraform-aws-modules/lambda/aws"

  function_name = "hello-world-lambda"
  description   = "Simple hello-world lambda example which prints out a users name with a hello message"
  handler       = "index.handler"
  runtime       = "nodejs16.x"

  create_package         = false
  local_existing_package = "../../../build/index.zip"

  timeout = 60

  tags = {
    Name = "hello-world-lambda"
  }
}