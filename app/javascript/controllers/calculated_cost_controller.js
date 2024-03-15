// app/javascript/controllers/calculated_cost_controller.jscalculateCostTest()

import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["end", "start"];
  static values = { price: Number }
  connect() {
    window.calculateCostTest = this.calculateCost.bind(this);
    console.log(this.element)
    console.log(this.startTarget)
    this.calculateCost();

  }

  calculateCost() {
    console.log("Calculating cost...");
    const startDate = new Date(this.startTarget.value);
    const endDate = newDate(this.endTarget.value);
    console.log(endDate - startDate )
    const dayCount = ((endDate - startDate) / (1000 * 60 * 60 * 24)) + 1; ;
    console.log("Calculating cost...");
    const totalCost = this.priceValue * dayCount;
    document.getElementById("cost").textContent = `1${totalCost}`;
    console.log(`$${totalCost.toFixed(2)}`);


  }
}
