import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["button", "spinner", "text"]

  connect() {
    this.spinnerTarget.classList.add("hidden")
  }

  startLoading() {
    this.buttonTarget.disabled = true
    this.spinnerTarget.classList.remove("hidden")
    this.textTarget.classList.add("opacity-0")
  }

  stopLoading() {
    this.buttonTarget.disabled = false
    this.spinnerTarget.classList.add("hidden")
    this.textTarget.classList.remove("opacity-0")
  }
} 