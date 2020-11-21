data "local_file" "solution" {
  filename = "${path.module}/wordpress_cloudformation_template.json"
}

resource "aws_cloudformation_stack" "solution" {
  name          = "solution"
  template_body = data.local_file.solution.content
  parameters = {
    KeyName = aws_key_pair.key.key_name
  }
}

output "solution" {
  value = aws_cloudformation_stack.solution.outputs
}
