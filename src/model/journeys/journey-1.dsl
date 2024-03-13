agent -> a-service.get "Requests tha data" "REST" "journey-1"
a-service.get -> adaptor.get "Gets the data from the adaptor" "REST" "journey-1"
a-service.get -> another-adaptor.get "Gets another data from another adaptor" "REST" "journey-1"
