another-service.post -> a-processor.in "Posts command to DST" "AMQP" "journey-2"
a-processor.in -> adaptor.post "Posts the data to the adaptor" "REST" "journey-2"
a-processor.in -> second-processor.in "Passes command to" "AMQP" "journey-2"
second-processor.in -> third-adaptor.post "Posts another data to another adaptor" "REST" "journey-2"
