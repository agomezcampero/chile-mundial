import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["button", "spinner", "text"]

  connect() {
    this.spinnerTargets.forEach(spinner => {
      spinner.classList.add("hidden")
    })
  }

  startLoading() {
    this.buttonTargets.forEach(button => {
      button.disabled = true
    })
    this.spinnerTargets.forEach(spinner => {
      spinner.classList.remove("hidden")
    })
    this.textTargets.forEach(text => {
      text.classList.add("opacity-0")
    })
  }

  stopLoading() {
    this.buttonTargets.forEach(button => {
      button.disabled = false
    })
    this.spinnerTargets.forEach(spinner => {
      spinner.classList.add("hidden")
    })
    this.textTargets.forEach(text => {
      text.classList.remove("opacity-0")
    })
  }
} 