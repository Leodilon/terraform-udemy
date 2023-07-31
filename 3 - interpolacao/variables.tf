#definiçoes das configuração, pode ser criado recusos diferentes para cada ambiente
variable "env" {
  type        = string
  description = ""
  default     = "dev"
}
variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}
variable "instance_ami" {
  type        = string
  description = ""
  default     = "ami-05548f9cecf47b442"

}
variable "instance_type" {
  type        = string
  description = ""
  default     = "t2.micro"
}
variable "instance_tags" {
  type        = map(string)
  description = ""
  default = {
    "Name"    = "Ubuntu"
    "Project" = "Curso AWS Terraform"
  }
}