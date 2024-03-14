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
            tags scoped

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
                background  LightYellow
                shape RoundedBox
            }
            element processors {
                background  LightSkyBlue
                shape RoundedBox
            }
            element adaptors {
                background LightPink
                shape RoundedBox
            }
            element scoped {
                background Yellow
            }
            # element Group {
            #     color #ff0000
            # }
        }
        
        !include views

   }

}