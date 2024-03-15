// app/javascript/controllers/flatpickr_controller.js
import { Controller } from "@hotwired/stimulus";
import flatpickr from "flatpickr";

export default class extends Controller {
  connect() {
    flatpickr(this.element, {
      onChange: this._dateChanged.bind(this),
      minDate: "today",
    });
  }

  _dateChanged(selectedDates, dateStr, instance) {
    const event = new CustomEvent('date-selected', {
      detail: { dateStr },
      bubbles: true,
    });
    this.element.dispatchEvent(event);
  }
}
