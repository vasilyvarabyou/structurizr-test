workspace "Hello World System" {
    !identifiers hierarchical

    model "Hello World System Model" {

        external = group "External Env" {
            !include external
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
        }

        styles {

            element Person {
                shape Person
            }
            element services {
                background  yellow
                shape RoundedBox
            }
            element adaptors {
                background #ff0000
                shape RoundedBox
            }
            element Group {
                color #ff0000
            }
        }
        
        !include views

   }

}