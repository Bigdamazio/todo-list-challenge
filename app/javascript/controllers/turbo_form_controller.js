// app/javascript/controllers/turbo_form_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  submit() {
    this.element.requestSubmit(); // Submete o formulário que contém este controller.
  }
}