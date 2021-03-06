FROM rabbitmq:3.8-management-alpine

RUN apk add curl
RUN wget https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/v3.8.0/rabbitmq_delayed_message_exchange-3.8.0.ez -P $RABBITMQ_HOME/plugins \
  && chown rabbitmq:rabbitmq $RABBITMQ_HOME/plugins/rabbitmq_delayed_message_exchange-3.8.0.ez \
  && rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange
