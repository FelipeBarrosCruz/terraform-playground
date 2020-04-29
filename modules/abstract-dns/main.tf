variable "dns_depends_on" {
  default = []
}

output "depends_on_concated" {
  value = [
    "${concat(
      list("default value on abstract dns"),
      var.dns_depends_on
    )}",
  ]
}
