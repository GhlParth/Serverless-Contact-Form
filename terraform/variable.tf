variable "existing_key_name" {
  type        = string
  description = "Your already-created AWS key pair name"
  default = "new-key"
}

variable "aws_ami_ids" {
  type = string
  description = "EC2 instance ami"
  default = "ami-02b8269d5e85954ef"
}

variable "instance_count" {
  type = number
  description = "Number of EC2 instances to create"
  default = 1
}

variable "instance_type" {
  type = string
  description = "Type of EC2 instances to create"
  default = "t3.micro"
}