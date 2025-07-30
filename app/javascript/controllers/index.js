// Import and register all your controllers from the importmap via controllers/**/*_controller
import { application } from "controllers/application"
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
import TurboFormController from "./turbo_form_controller"
application.register("turbo-form", TurboFormController)
eagerLoadControllersFrom("controllers", application)
