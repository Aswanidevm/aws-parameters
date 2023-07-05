resource "aws_ssm_parameter" "parameter" {
  count = length(var.paramter)
  name  = var.paramter[count.index].name
  type  = var.paramter[count.index].type
  value = var.paramter[count.index].value
}

variable "paramter"{
    default = [
  { name = "roboshop.dev.frontend.catalogue_url", value = "http://catalogue-dev.myprojecdevops.info:8080/", type = "String" },
  { name = "roboshop.dev.frontend.user_url", value = "http://user-dev.myprojecdevops.info:8080/", type = "String" },
  { name = "roboshop.dev.frontend.cart_url", value = "http://cart-dev.myprojecdevops.info:8080/", type = "String" },
  { name = "roboshop.dev.frontend.shipping_url", value = "http://shipping-dev.myprojecdevops.info:8080/", type = "String" },
  { name = "roboshop.dev.frontend.payment_url", value = "http://payment-dev.myprojecdevops.info:8080/", type = "String" },
  { name = "roboshop.dev.cart.redis_host", value = "redis-dev.myprojecdevops.info", type = "String" },
  { name = "roboshop.dev.cart.catalogue_host", value = "catalogue-dev.myprojecdevops.info", type = "String" },
  { name = "roboshop.dev.cart.catalogue_port", value = "8080", type = "String" },
  { name = "roboshop.dev.catalogue.mongo", value = "true", type = "String" },
  { name = "roboshop.dev.catalogue.mongo_url", value = "mongodb-dev.myprojecdevops.info", type = "String" },
  { name = "roboshop.dev.payment.cart_host", value = "cart-dev.myprojecdevops.info", type = "String" },
  { name = "roboshop.dev.payment.cart_port", value = "8080", type = "String" },
  { name = "roboshop.dev.payment.user_host", value = "user-dev.myprojecdevops.info", type = "String" },
  { name = "roboshop.dev.payment.user_port", value = "8080", type = "String" },
  { name = "roboshop.dev.payment.amqp_host", value = "rabbitmq-dev.myprojecdevops.info", type = "String" },
  { name = "roboshop.dev.payment.amqp_user", value = "8080", type = "String" },
  { name = "roboshop.dev.payment.amqp_pass", value = "8080", type = "String" },
  
}
