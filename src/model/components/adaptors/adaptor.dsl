adaptor = container "The Adaptor" {
    tags adaptors

    get = component "Get Endpoint" "Provides some data to be processed" "REST" {
        -> ext "Gets data from external system"
    }

    post = component "Post Endpoint" "Publishes data to be processed" "REST" {
        -> another-ext "Gets data from external system"

    }

}