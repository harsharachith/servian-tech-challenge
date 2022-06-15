terraform {
 backend "gcs" {
   bucket  = "bucket-tfstatee"
   prefix  = "terraform/state"
 }
}