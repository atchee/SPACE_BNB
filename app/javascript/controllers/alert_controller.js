import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="alert"
export default class extends Controller {
  connect() {
    console.log('hello')
    console.log(this.element)
    this.element.addEventListener("click", function() {
      alert("Please login order to book this place");
  });
  }
}
