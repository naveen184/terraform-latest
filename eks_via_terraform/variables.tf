# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "aws_region" {
  default = "ap-southeast-2"
}

variable "cluster_name" {
  default = "terraform-eks-demo"
  type    = string

}

variable "instance_type" {
     type = list(string)
     default = [ "t3.xlarge" ]
  }



