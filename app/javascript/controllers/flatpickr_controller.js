import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

export default class extends Controller {
  static targets = ["input", "result"]

  connect() {
    this.inputTargets.forEach((input) => {
      flatpickr(input);
    })
  }

  connect() {
    console.log("Hello from this first Stimulus controller")
    console.log(this.inputTarget);
    // console.log(this.inputTargets);
    // console.log(this.inputTarget.value);
    this.inputTargets.forEach((input) => {
      console.log(input.value);
    });
  }

  result() {
    console.log("something");
    // evt.preventDefault();
    // this.resultTarget.innerText = 'The total cost will be €'
  }
}
