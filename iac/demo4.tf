resource "aws_security_group" "bad2" {
  name        = "demo4-bad-group"
  description = "properly-terraformed"
  vpc_id      = local.vpc
  tags = {
    Digit24 = "true"
    # NOTE: simulating resources that were already waiting to be deleted
    my_mark_tag = "Resource does not meet policy: delete@2024/10/01"
  }
}

resource "aws_security_group" "good1" {
  name        = "demo4-good-group"
  description = "properly-terraformed but attached"
  vpc_id      = local.vpc
  tags = {
    Digit24 = "true"
  }
}
