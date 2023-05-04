resource "aws_iam_role" "iam_for_lambda" {
  name = "${local.resource_prefix.value}-analysis-lambda"


  tags = {
    git_commit           = "e6d83b21346fe85d4fe28b16c0b2f1e0662eb1d7"
    git_file             = "terraform/aws/lambda.tf"
    git_last_modified_at = "2023-04-27 12:47:51"
    git_last_modified_by = "nadler@paloaltonetworks.com"
    git_modifiers        = "nadler/nimrodkor"
    git_org              = "bridgecrewio"
    git_repo             = "terragoat"
    yor_trace            = "93cfa6f9-a257-40c3-b7dc-3c3686929734"
  }
}

resource "aws_lambda_function" "analysis_lambda" {
  # lambda have plain text secrets in environment variables
  filename      = "resources/lambda_function_payload.zip"
  function_name = "${local.resource_prefix.value}-analysis"
  role          = "${aws_iam_role.iam_for_lambda.arn}"
  handler       = "exports.test"



  runtime = "nodejs12.x"

  environment {
    variables = {
      access_key = "AKIAIOSFODNN7EXAMPLE"
      secret_key = "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"
    }
  }
  tags = {
    git_commit           = "5c6b5d60a8aa63a5d37e60f15185d13a967f0542"
    git_file             = "terraform/aws/lambda.tf"
    git_last_modified_at = "2021-05-02 10:06:10"
    git_last_modified_by = "nimrodkor@users.noreply.github.com"
    git_modifiers        = "nimrodkor"
    git_org              = "bridgecrewio"
    git_repo             = "terragoat"
    yor_trace            = "f7d8bc47-e5d9-4b09-9d8f-e7b9724d826e"
  }
}