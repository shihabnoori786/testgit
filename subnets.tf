# Create 2 public subnets
resource "aws_subnet" "public_1" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.private_1
  availability_zone = "ap-south-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-1"
  }
}

resource "aws_subnet" "public_2" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.public_2
  availability_zone = "ap-south-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-2"
  }
}

# Create 2 private subnets
resource "aws_subnet" "private_1" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.private_1
  availability_zone = "ap-south-1a"
  map_public_ip_on_launch = false

  tags = {
    Name = "private-1"
  }
}

resource "aws_subnet" "private_2" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.private_2
  availability_zone = "ap-south-1b"
  map_public_ip_on_launch = false

  tags = {
    Name = "private-2"
  }
}