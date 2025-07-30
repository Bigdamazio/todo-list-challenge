// app/javascript/application.js
// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import * as Turbo from "@hotwired/turbo-rails"
import Rails from "@rails/ujs"
import "./controllers" 
import "controllers/submit_form_controller"


// Explicitamente anexa o objeto Turbo à janela global. Isso é necessário porque o importmap carrega como módulo ES, que não expõe automaticamente ao escopo global.
window.Turbo = Turbo;
Rails.start()