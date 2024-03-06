another-service.post -> adaptor.post "Posts the data to the adaptor" "REST" "journey-2"
another-service.post -> third-adaptor.post "Posts another data to another adaptor" "REST" "journey-2"
another-service.post -> a-processor.in "Posts command to DST" "AMQP" "journey-2"
