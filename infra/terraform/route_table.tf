resource "aws_route_table" "private" {
  vpc_id = module.vpc.vpc_id
}

resource "aws_route_table_association" "private_subnets" {
  for_each       = toset(module.vpc.private_subnets)
  subnet_id      = each.value
  route_table_id = aws_route_table.private.id
}
