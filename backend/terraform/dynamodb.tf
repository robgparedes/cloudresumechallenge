resource "aws_dynamodb_table" "visitor_count" {
  name         = local.visitor_table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"

  attribute {
    name = "id"
    type = "S"
  }
}

resource "aws_dynamodb_table_item" "visitor_counter_seed" {
  table_name = aws_dynamodb_table.visitor_count.name
  hash_key   = "id"

  item = jsonencode({
    id = {
      S = "visitors"
    }
    count = {
      N = "0"
    }
  })
}