import { Application } from "@hotwired/stimulus"
import FlatpickrController from "./flatpickr_controller";
import CalculatedCostController from "./calculated_cost_controller";

const application = Application.start()

application.register("flatpickr", FlatpickrController);
application.register("calculated-cost", CalculatedCostController);

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
