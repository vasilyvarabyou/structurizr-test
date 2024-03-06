component system.a-service a-service-components "A Service" {
    include *
    include system.adaptor.get
    include system.another-adaptor.get

    autolayout lr
}