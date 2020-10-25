FROM rabbitmq:3.8-management-alpine

RUN wget https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/v3.8.0/rabbitmq_delayed_message_exchange-3.8.0.ez -P $RABBITMQ_HOME/plugins \
  && rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange
