resource "aws_db_subnet_group" "rds" {
  name       = "rds-subnet-group"
  subnet_ids = data.terraform_remote_state.vpc.outputs.private_subnets
}

resource "aws_security_group" "rds_sg" {
  name   = "rds-sg"
  vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]  # VPC CIDR (simple + safe)
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
