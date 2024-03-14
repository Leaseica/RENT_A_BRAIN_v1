import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"

export default class extends Controller {
  static targets = ["start", "end", "cost"]
  static values = { price: Number }

  connect() {
    console.log("Datepicker controller connected");
    this.initializeFlatpickr(this.startTarget)
    this.initializeFlatpickr(this.endTarget)
    console.log(`Price per day: ${this.priceValue}`);
  }

  calculateCost() {
    console.log("Calculating cost...");
    const startDate = this.startTarget.value
    const endDate = this.endTarget.value
    console.log(`Start Date: ${startDate}, End Date: ${endDate}`);
    if (startDate && endDate) {
      const diffTime = Math.abs(end - start)
      const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24))

      this.costTarget.value = diffDays * this.priceValue
    }
  }

  initializeFlatpickr(target) {
    flatpickr(target, {
      onChange: this.calculateCost.bind(this)
    })
  }
}
