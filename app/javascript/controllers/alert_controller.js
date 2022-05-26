import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="alert"
export default class extends Controller {
  static targets = ['notice']

  connect() {
    console.log('hello')
    console.log(this.element)
    this.element.addEventListener("click", function() {
      this.noticeTarget.innerText = 'Please login order to book this place'
    });
  }
}
