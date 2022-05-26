import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="alert"
export default class extends Controller {
  static targets = ['notice', 'button']

  notice(evt) {
    evt.preventDefault();
    this.noticeTarget.innerText = 'Please login in order to book this place'
  }
}
