output "myapp-repository-URL" {
  value = "${aws_ecr_repository.image.repository_url}"
}