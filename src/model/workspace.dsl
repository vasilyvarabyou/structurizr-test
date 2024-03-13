workspace "Hello World System" {
    !identifiers hierarchical

    model "Hello World System Model" {

        external = group "External Env" {
            !include external
        }

        users = group "User Roles" {
            !include userroles
        }

        system = softwareSystem "Software System" "Our Cool Processor Burning Tool" {
            adaptors = group "Adaptors" {
                !include components/adaptors
            }
            processors = group "Processors" {
                !include components/processors
            }
            services = group "Services" {
                !include components/services
            }
            infrastructure = group "Infrastructure Components" {
                !include components/infrastructure
            }
            !include journeys
        }

    }

    views {

        properties {
            c4plantuml.legend false
            c4plantuml.tags   true
        }

        styles {

            element Person {
                shape Person
            }
            element services {
                background  yellow
                shape RoundedBox
            }
            element processors {
                background  deepskyblue
                shape RoundedBox
            }
            element adaptors {
                background deeppink
                shape RoundedBox
            }
            # element Group {
            #     color #ff0000
            # }
        }
        
        !include views

   }

}