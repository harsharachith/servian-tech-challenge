resource "google_sql_database_instance" "main" {
  name             = "main-instance"
  database_version = "POSTGRES_14"
  region           = "us-central1"
  project          = "phonic-chemist-353004"

  settings {
    # Second-generation instance tiers are based on the machine
    # type. See argument reference below.
    tier = "db-f1-micro"
  }
}

resource "random_id" "user_password" {
  byte_length = 8
}
resource "google_sql_user" "postgresql_user" {
  name = "${var.db_user_name}"
  project  = "${var.app_project}"
  instance = "${google_sql_database_instance.main.name}"
  host = "${var.db_user_host}"
  password = "${var.db_user_password == "" ?
    random_id.user_password.hex : var.db_user_password}"
}