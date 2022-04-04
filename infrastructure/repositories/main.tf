######################################
# Uploading docker image to AWS ECR
######################################


/**
* The ECR repository we'll push our images to.
*/
resource "aws_ecr_repository" "klerna-ecr" {
  name = var.app_name
  image_tag_mutability = "MUTABLE"
}

/**
* Build docker image and push to ECR
*/
resource "docker_registry_image" "klerna_img" {
  name = "${aws_ecr_repository.klerna-ecr.repository_url}:latest"
  build {
    context = "../../app"
    dockerfile = "Dockerfile"
  }
}