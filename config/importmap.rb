pin "application", preload: true
pin "@hotwired/turbo-rails", to: "@hotwired--turbo-rails.js", integrity: "sha384-v7FP4RPRQwLyHEIKPJFJ+sv3t0A31DdzGe25ym5ivgGf0YRQOe4KoWi+jfhQ7gXv" # @8.0.16
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true

# SEPARADO corretamente
pin_all_from "app/javascript/controllers", under: "controllers"
pin "@hotwired/turbo", to: "@hotwired--turbo.js", integrity: "sha384-Ar5BI7e7pT8hROa/8lS1X1ANGto4Pa7UJb06l16NbEqGKD/CCab3ZTrtWi18TVam" # @8.0.13

pin "@rails/actioncable/src", to: "@rails--actioncable--src.js", integrity: "sha384-oGoEWlBEWjlcDjT5Z8LqSP9tQQ/9dGM6dwAD11vwM5QKnIb2rSxef18v6MUS0BUR" # @8.0.200
pin "@rails/ujs", to: "rails-ujs.js"
pin "submit-form", to: "controllers/submit_form_controller.js"
