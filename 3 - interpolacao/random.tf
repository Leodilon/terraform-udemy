#recurso random serve para gerar nomes aleatorios
resource "random_pet" "bucket" {
  length = 5
}