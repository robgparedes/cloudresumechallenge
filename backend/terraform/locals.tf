locals {
  visitor_table_name = "${var.project_name}-visitor-count"

  get_lambda_name        = "${var.project_name}-getVisitorCount"
  increment_lambda_name  = "${var.project_name}-incrementVisitorCount"
  summarizer_lambda_name = "${var.project_name}-resume-summarizer"

  get_role_name        = "${var.project_name}-getVisitorCount-role"
  increment_role_name  = "${var.project_name}-incrementVisitorCount-role"
  summarizer_role_name = "${var.project_name}-resume-summarizer-role"

  api_name = "${var.project_name}-visitor-api"
}