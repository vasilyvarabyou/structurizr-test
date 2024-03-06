a-processor = container "A Processor" "Processes async events" {
    tags journey-2
    
    in = component "P2P.SRC.DST.QUEUE" "Processes OPC" "AMQP"
}