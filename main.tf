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
  # { name = "roboshop.dev.catalogue.mongo_url", value = "mongodb-dev.myprojecdevops.info", type = "String" },
  
  
  { name = "roboshop.dev.payment.cart_host", value = "cart-dev.myprojecdevops.info", type = "String" },
  { name = "roboshop.dev.payment.cart_port", value = "8080", type = "String" },
  { name = "roboshop.dev.payment.user_host", value = "user-dev.myprojecdevops.info", type = "String" },
  { name = "roboshop.dev.payment.user_port", value = "8080", type = "String" },
  { name = "roboshop.dev.payment.amqp_host", value = "rabbitmq-dev.myprojecdevops.info", type = "String" },
  { name = "roboshop.dev.payment.amqp_user", value = "8080", type = "String" },
   
   
  { name = "roboshop.dev.shipping.cart_endpoint", value = "cart-dev.myprojecdevops.info:8080", type = "String" },
  { name = "roboshop.dev.shipping.db_host", value = "mysql-dev.myprojecdevops.info", type = "String" },
  { name = "roboshop.dev.user.mongo", value = "true", type = "String" },
  { name = "roboshop.dev.user.redis_host", value = "redis-dev.myprojecdevops.info", type = "String" },
  { name = "roboshop.dev.dispatch.amqp_host", value = "rabbitmq-dev.myprojecdevops.info", type = "String" },
  # { name = "roboshop.dev.user.mongo_url", value = "mongodb://mongodb-dev.myprojecdevops.info", type = "String" },
  { name = "roboshop.dev.mysql.username", value = "roboshop", type = "String" },
  { name = "roboshop.dev.docdb.username", value = "roboshop", type = "String" },
  { name = "roboshop.dev.rabbitmq.amqp_user", value = "roboshop", type = "String" },
  { name = "roboshop.dev.dispatch.amqp_user", value = "roboshop", type = "String" },
    
     ### Passwords will be never part of git repos, Usually in organizations we create them nanually.
  { name = "roboshop.dev.payment.amqp_pass", value = "roboshop123", type = "SecureString" },
  { name = "roboshop.dev.rabbitmq.amqp_pass", value = "roboshop123", type = "SecureString" },
  { name = "roboshop.dev.dispatch.amqp_pass", value = "roboshop123", type = "SecureString" },
  { name = "roboshop.dev.mysql.password", value = "roboshop123", type = "SecureString" },
  { name = "roboshop.dev.docdb.password", value = "roboshop123", type = "SecureString" },
  { name = "roboshop.dev.catalogue.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-dev.cluster-cbvsbeoyxek4.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },
  { name = "roboshop.dev.catalogue.docdb_endpoint", value = "docdb-dev.cluster-cbvsbeoyxek4.us-east-1.docdb.amazonaws.com", type = "String" },
  { name = "roboshop.dev.user.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-dev.cluster-cbvsbeoyxek4.us-east-1.docdb.amazonaws.com:27017/users?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },
  { name = "roboshop.dev.user.docdb_endpoint", value = "docdb-dev.cluster-cbvsbeoyxek4.us-east-1.docdb.amazonaws.com", type = "String" },


    ]
}
