import { Controller } from "@hotwired/stimulus"

/*
 * Usage
 * =====
 *
 * add data-controller="flash" to flash container
 * p.s. you probably also want data-turbo-cache="false"
 *
 * Action (for close cross):
 * data-action="click->flash#dismiss"
 *
 */
export default class extends Controller {
  connect() {
    setTimeout(() => {
      this.hideAlert();
    }, 3000);
  }

  dismiss(event) {
    event.preventDefault();
    event.stopPropagation();

    this.hideAlert();
  }

  hideAlert() {
    this.element.style.display = "none";
  }
}
