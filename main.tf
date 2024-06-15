resource "aws_lightsail_instance" "gitlab_test" {
  name              = "custom_gitlab"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  bundle_id = "nano_3_0"
  user_data = "sudo yum install -y https && sudo systemctl start https && sudo systemctl enable https && echo ‘<h1>Deployed via Terraform</h1>’ | sudo tee /var/www/html/index.html"
 # key_pair_name = "week4.pem"
  tags = {
    Team = "DevOps"
    env = "dev"
    create_by = "terraform"
  }
}