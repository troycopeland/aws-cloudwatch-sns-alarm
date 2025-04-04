output "sns_topic_arn" {
  value = aws_sns_topic.alarm_topic.arn
}

output "instance_id" {
  value = aws_instance.example.id
}