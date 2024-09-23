resource "aws_launch_template" "depi_launch_temp" {
  name_prefix   = "depi_launch_temp"
  image_id      = var.image_id 
  instance_type = var.ins_type  

  user_data = base64encode(file("userdata.sh"))


  network_interfaces {
    associate_public_ip_address = true
    security_groups             = [aws_security_group.depi_sec_group.id]
  }

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "depi_autoscaling-instance"
    }
  }
}


resource "aws_autoscaling_group" "depi_asg" {
  desired_capacity     = var.desired_asg
  max_size             = var.max_asg
  min_size             = var.min_asg
  vpc_zone_identifier  = [aws_subnet.depi-pub-sub1.id, aws_subnet.depi-pub-sub2.id, aws_subnet.depi-pub-sub3.id]

  launch_template {
    id      = aws_launch_template.depi_launch_temp.id
    version = "$Latest"
  }

  target_group_arns = [aws_lb_target_group.depi_tg.arn]
}