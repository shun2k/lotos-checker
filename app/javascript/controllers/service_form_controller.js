import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="service-form"
export default class extends Controller {
  static targets = ["checkboxes", "submitButton"];
  checkedCount = 0;
  connect() {
    this.checkboxesTargets.forEach((checkbox) => {
      checkbox.addEventListener("change", this.handleCheckboxChange.bind(this));
    });
  }

  handleCheckboxChange(event) {
    const checkbox = event.target;
    if (checkbox.checked) {
      this.checkedCount++;
    } else {
      this.checkedCount--;
    }

    if (this.checkedCount === 7) {
      this.checkboxesTargets.forEach((cb) => {
        if (!cb.checked) {
          cb.disabled = true;
        }
      });
      this.submitButtonTarget.disabled = false;
    } else {
      this.checkboxesTargets.forEach((cb) => {
        cb.disabled = false;
      });
      this.submitButtonTarget.disabled = true;
    }
  }
}
