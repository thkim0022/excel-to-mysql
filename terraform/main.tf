module "s3" {
  source  = "./_module/s3"

  bucket_name = var.function_name

  tags = var.tags
}

module "lambda" {
  source  = "./_module/lambda"

  function_name  = var.function_name
  handler = var.handler
  runtime = var.runtime

  tags = var.tags
}