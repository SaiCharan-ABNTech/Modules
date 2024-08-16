module "autoscaling" {
  source = "./aws_autoscaling_module"
  region                = "us-west-2"
  launch_configuration_name = "my-launch-config"
  ami_id                = "ami-12345678"
  instance_type         = "t2.micro"
  key_name               = ""
  security_groups       = [""]
  user_data             = "#!/bin/bash\necho 'Hello, World!'"
  desired_capacity      = 2
  max_size              = 3
  min_size              = 1
  subnet_ids            = [""]
  tag_name              = "my-instance"
  policy_name           = "my-scaling-policy"
  scaling_adjustment    = 1
  cooldown              = 300
}

