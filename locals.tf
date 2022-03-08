locals {
  count_val = var.environ == "prod" ? 3 : 1
}