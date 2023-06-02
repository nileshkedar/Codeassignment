provider "aws" {
  region = "us-east-1"  # Update with your desired AWS region
}
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "private" {
  vpc_id            = aws_vpc.example.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"  
}

resource "aws_security_group" "rds_sg" {
  vpc_id = aws_vpc.example.id

}
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "private" {
  vpc_id            = aws_vpc.example.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a" 
}

resource "aws_security_group" "rds_sg" {
  vpc_id = aws_vpc.example.id

}
