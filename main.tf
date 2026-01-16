resource "random_id" "mixer" {
  for_each = toset(["golden","silver","bronze","platinum"])
  byte_length = var.mixer_byte_length
  prefix      = "${each.value}-${var.mixer_prefix}"
}

output "mixer_created" {
  value = [ for item in random_id.mixer : item.prefix ]
}

output "mixers_total" {
  value = "Mixers created: ${length(random_id.mixer)}"
}
