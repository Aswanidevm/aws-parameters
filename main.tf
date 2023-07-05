resource "aws_ssm_parameter" "parameter" {
  count = length.(var.paramter)
  name  = var.paramter(count.index).name
  type  = var.paramter(count.index).type
  value = var.paramter(count.index).value
}

variable "paramter"{
    default = [
  { name = "dev.frontend.catalogue_url", value = "http://catalogue-dev.myprojecdevops.info:8080/", type = "String" },
  { name = "dev.frontend.user_url", value = "http://user-dev.myprojecdevops.info:8080/", type = "String" },
  { name = "dev.frontend.cart_url", value = "http://cart-dev.myprojecdevops.info:8080/", type = "String" },
  { name = "dev.frontend.shipping_url", value = "http://shipping-dev.myprojecdevops.info:8080/", type = "String" },
  { name = "dev.frontend.payment_url", value = "http://payment-dev.myprojecdevops.info:8080/", type = "String" },
]
}
