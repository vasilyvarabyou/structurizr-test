queues = container "Active MQ" "Message Broker" "AMQP" {

    P2P_SRC_DST_QUEUE_1 = component "P2P.SRC.DST.QUEUE.1" "Commands to be processed by DST" "amqp" "queue"
    P2P_SRC_DST_QUEUE_1_DLQ = component "P2P.SRC.DST.QUEUE.1.DLQ" "Commands failed to process by DST" "amqp" "queue"
    P2P_SRC_DST_QUEUE_1_RETRY = component "P2P.SRC.DST.QUEUE.1.RETRY" "Retries for DST" "amqp" "queue"
}