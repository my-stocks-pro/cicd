resource "aws_ecr_repository" "image" {
  name = "${var.SERVICE1}"
}

//resource "aws_ecr_lifecycle_policy" "cleanup" {
//  repository = "${aws_ecr_repository.image.name}"
//  policy = "${file("${path.module}/rotation_rules.json")}"
//}