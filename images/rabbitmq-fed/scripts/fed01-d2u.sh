#!/bin/sh

rabbitmqctl set_parameter federation-upstream origin '{"uri":"amqp://guest:guest@rabbit01"}'
rabbitmqctl set_policy exchange-federation ".*Demo.*" '{"federation-upstream-set":"all"}' --priority 10 --apply-to all