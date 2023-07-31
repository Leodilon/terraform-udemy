#instancia um bucket
resource "aws_s3_bucket" "this" {
  bucket = "${random_pet.bucket.id}-${var.env}"
  tags = local.common_tags
}
#faz o envio de um arquivo para o bucket criado
resource "aws_s3_object" "this" {
  bucket = aws_s3_bucket.this.id
  key    = "config/${local.ips_filepath}"
  source = local.ips_filepath
  etag   = filemd5(local.ips_filepath)
  tags   = local.common_tags
  content_type = "application/json"
}

resource "aws_s3_object" "random" {
  bucket = aws_s3_bucket.this.id
  key    = "config/${random_pet.bucket.id}.json"
  source = local.ips_filepath
  etag   = filemd5(local.ips_filepath)
  tags   = local.common_tags
  content_type = "application/json"
}

#importa um recurso que ja existe na cloud e nao foi criado inicialmente pelo terraform
#comentado pq o recuso ja foi removido da cloud

# import {
#   to = aws_s3_bucket.manual
#   id = "meubucket-teste-leodilon-1234567"
# }

# resource "aws_s3_bucket" "manual" {
#   bucket = "meubucket-teste-leodilon-1234567"
# }