variable "secrets" {
  type = "map"
  default = {}
}

resource "local_file" "secrets" {
  count = "${length(var.secrets)}"
  filename = "${element(keys(var.secrets), count.index)}" 
  content = "${
    lookup(
      var.secrets,
      element(keys(var.secrets), count.index),
      "XXXX"
    )
  }"
}

output "secrets" {
  value = "${local_file.secrets.*.filename}"
}