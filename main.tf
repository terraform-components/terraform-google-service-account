data "google_project" "current" {}

resource "google_service_account" "this" {
  account_id   = var.name
  display_name = var.name
}

resource "google_project_iam_custom_role" "this" {
  count       = length(var.permissions) > 0 ? 1 : 0
  role_id     = replace("${var.name}", "-", "_")
  title       = "${var.name} permissions"
  description = "${var.name} permissions"
  permissions = var.permissions
}

resource "google_project_iam_binding" "this" {
  count   = length(var.permissions) > 0 ? 1 : 0
  project = data.google_project.current.project_id
  role    = join("", google_project_iam_custom_role.this.*.name)
  members = [
    "serviceAccount:${google_service_account.this.email}"
  ]
}
