resource "aws_lb" "depi_alb" {
  name               = "depi-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.depi_sec_group.id]
  subnets            = [aws_subnet.depi-pub-sub1.id, aws_subnet.depi-pub-sub2.id, aws_subnet.depi-pub-sub3.id]


  tags = {
    Environment = "depi_ALB"
  }
}

# Target Group
resource "aws_lb_target_group" "depi_tg" {
  name        = "depi-tg"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.depi-vpc.id

  health_check {
    protocol = "HTTP"
    path     = "/"
    port                = "80"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 5
    unhealthy_threshold = 2
  }

  tags = {
    Name = "depi_tg"
  }
}

# Listener for ALB
resource "aws_lb_listener" "depi_listener" {
  load_balancer_arn = aws_lb.depi_alb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.depi_tg.arn
  }
}