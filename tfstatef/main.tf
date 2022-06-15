resource "google_storage_bucket" "default" {
  name          = "bucket-tfstatee"
  force_destroy = false
  location      = "US"
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}