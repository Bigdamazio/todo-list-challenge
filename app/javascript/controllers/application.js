import { Application } from "@hotwired/stimulus"
import SubmitFormController from "./submit_form_controller"
application.register("submit-form", SubmitFormController)

const application = Application.start()

application.debug = false
window.Stimulus = application

import TurboFormController from "./controllers/turbo_form_controller"
application.register("turbo-form", TurboFormController)
