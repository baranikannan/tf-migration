variable "account_num" {}

variable "region" {}

resource "aws_sns_topic" "topic0" {
  name = "topic0"
}

resource "aws_sns_topic" "topic1" {
  name = "topic1"
}

resource "aws_sns_topic_subscription" "topic0_sub" {
  topic_arn = "${aws_sns_topic.topic0.arn}"
  protocol  = "lambda"
  endpoint  = "arn:aws:lambda:${var.region}:${var.account_num}:function:topic0_func"
}

resource "aws_sns_topic_subscription" "topic1_sub" {
  topic_arn = "${aws_sns_topic.topic1.arn}"
  protocol  = "lambda"
  endpoint  = "arn:aws:lambda:${var.region}:${var.account_num}:function:topic1_func"
}

// resource "aws_sns_topic" "topic" {
//   count = 2
//   name  = "topic${count.index}"
// }

// resource "aws_sns_topic_subscription" "topic_subscription" {
//   count     = 2
//   topic_arn = "${element(aws_sns_topic.topic.*.arn, count.index)}"
//   protocol  = "lambda"
//   endpoint  = "arn:aws:lambda:${var.region}:${var.account_num}:function:topic${count.index}_func"
// }