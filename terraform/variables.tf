variable "region" {
  default = "us-east-1"
}

variable  "endpoint_config_name" {
  default = "mishamon-config"
}

# model names. We always need to have two even if they are pointing to the same model
# so we could take advabtage of A/B testing and blue/green deployment
variable "model_name_1" {
  default = "linear-learner-1-2019-11-01-16-36-25-946"
}

variable "model_name_2" {
  default = "linear-learner-2-2019-11-01-16-36-25-946"
}

variable "endpoint_name" {
  default = "mishamon-endpoint"
}

# both models should have an execution role
variable "model_arn_1" {
   default = ""
}

variable "model_arn_2" {
   default = ""
}

# each model must point to a docker image which will be used for creating an endpoint
variable "docker_image_1" {
   default = "382416733822.dkr.ecr.us-east-1.amazonaws.com/linear-learner:1"
}

variable "docker_image_2" {
   default = "382416733822.dkr.ecr.us-east-1.amazonaws.com/linear-learner:1"
}

# locations of the model artifacts
variable "model_location_1" {
   default = "s3://model-bucket-test-1234567/card-fraud-example/output/linear-learner-2019-11-01-16-36-25-946/output/model.tar.gz"
}

variable "model_location_2" {
   default = "s3://model-bucket-test-1234567/card-fraud-example/output/linear-learner-2019-11-01-16-36-25-946/output/model.tar.gz"
}
