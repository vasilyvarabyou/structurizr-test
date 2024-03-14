second-processor = container "2nd Processor" "Processes async events" {
    tags processors journey-2
    
    in = component "P2P.SRC2.DST2.QUEUE" "Processes OPC" "AMQP"
}