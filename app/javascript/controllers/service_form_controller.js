import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="service-form"
export default class extends Controller {
  connect() {
    console.log("Hello, I'm Perfect Human")
  }
}
