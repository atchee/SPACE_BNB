import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

export default class extends Controller {
  static targets = ["startDate", "endDate", "result"]
  static values = {
    price: Number
  }

  connect() {
    flatpickr(this.startDateTarget);
    flatpickr(this.endDateTarget);

  }


  result(event) {
    event.preventDefault();
    const startDate = Date.parse(this.startDateTarget.value)
    const endDate = Date.parse(this.endDateTarget.value)
    console.log(startDate)
    console.log(endDate)
    const duration = (endDate - startDate) / (86400000)
    console.log(duration)
    console.log(this.priceValue)
    const cost = duration * this.priceValue
    if (cost > 0) {
      this.resultTarget.innerText = `The total cost will be ${cost} €`
    }
  }
}
