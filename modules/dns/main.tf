variable "dns_depends_on" {
  default = []
}

module "dns" {
  source         = "../abstract-dns"
  dns_depends_on = "${var.dns_depends_on}"
}

output "depends_on_concated" {
  value = "${module.dns.depends_on_concated}"
}
