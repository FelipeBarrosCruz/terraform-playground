resource "null_resource" "test" {
  count = 1
}

module "test-dns" {
  source         = "./modules/dns"
  dns_depends_on = ["ibjected value 1", "injected value 2"]
}


module "test-secrets" {
  source = "./modules/secrets"

  secrets = {
    NODE_ENV = "production",
    APP_HOST = "0.0.0.0",
    APP_PORT = 3000,
    DEBUG = false,
    FLAG = true
  }
}

output "secrets" {
  value = "${module.test-secrets.secrets}"
}

output "depends_on_concated" {
  value = "${module.test-dns.depends_on_concated}"
}