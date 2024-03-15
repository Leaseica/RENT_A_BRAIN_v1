// app/javascript/controllers/calculated_cost_controller.js

import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["end", "start", "cost", "days"]
  static values = { price: Number }
  connect() {
    this.calculateCost();

  }

  calculateCost() {
    const startDate = new Date(this.startTarget.value);
    const endDate = new Date(this.endTarget.value);

    const dayCount = ((endDate - startDate) / (1000 * 60 * 60 * 24)) + 1; ;
    const totalCost = this.priceValue * dayCount;
    this.costTargets.forEach((el) => {
      el.textContent = `${totalCost.toFixed(2)} €`;
    });
    this.daysTarget.textContent = `${dayCount}`
  }
}
