// app/javascript/controllers/calculated_cost_controller.jscalculateCostTest()

import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["start", "end"];
  static values = { price: Number }
  connect() {
    window.calculateCostTest = this.calculateCost.bind(this);
    flatpickr(this.element)
  }

  calculateCost() {
    console.log("Calculating cost...");

    let startDate = new Date(this.startTarget.value);
    let endDate = new Date(this.endTarget.value);

    if (!isNaN(startDate.getTime()) && !isNaN(endDate.getTime())) {
      const dayCount = (endDate - startDate) / (1000 * 60 * 60 * 24) + 1; // Make sure to handle edge cases as needed
      const totalCost = this.priceValue * dayCount;
      document.getElementById("cost").textContent = `$${totalCost.toFixed(2)}`;


      console.log(`$${totalCost.toFixed(2)}`);
    }
  }
}
