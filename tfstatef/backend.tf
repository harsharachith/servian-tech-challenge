terraform {
 backend "gcs" {
   depends_on = ["google_storage_bucket.default"]
   bucket  = "bucket-tfstatee"
   prefix  = "terraform/state"
 }
}