# AWS CloudWatch Alarm + SNS Notification (Terraform)

This project provisions an EC2 instance and sets up a CloudWatch alarm to monitor CPU usage.  
If average CPU usage exceeds 70% over a 5-minute period, an SNS notification is triggered and sent via email.

---

## What It Includes

- `aws_instance`: Launches a t2.micro EC2 instance (Amazon Linux 2)
- `aws_cloudwatch_metric_alarm`: Triggers alarm on high CPU usage
- `aws_sns_topic`: Notification channel for alarm events
- `aws_sns_topic_subscription`: Email subscriber for alerts

---

## Alarm Logic

- Metric: `CPUUtilization`
- Threshold: >70% for 5 minutes
- Alarm Action: Triggers SNS notification

---

## Notification Workflow

1. User provides an email during deployment
2. SNS sends a confirmation request to that email
3. Once confirmed, alarm notifications are delivered directly

---

## Outputs

- `sns_topic_arn`: The ARN of the SNS topic
- `instance_id`: The deployed EC2 instance ID

---

## Why It Matters

This project demonstrates operational monitoring in AWS, incident response alerting, and clean infrastructure-as-code practices.  
It’s a foundation-level setup for real-world cloud observability.