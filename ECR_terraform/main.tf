resource "aws_ecr_repository" "ECR1" {
  name                 = "jenkins_ecr"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}