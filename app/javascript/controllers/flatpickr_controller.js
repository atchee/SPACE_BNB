import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

export default class extends Controller {
  static targets = ["input"]

  connect() {
    this.inputTargets.forEach((input) => {
      flatpickr(input);
    })
  }
}
