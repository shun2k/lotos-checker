import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.handleResize();
    window.addEventListener("resize", this.handleResize.bind(this));
  }

  disconnect() {
    window.removeEventListener("resize", this.handleResize.bind(this));
  }

  handleResize() {
    const tableHeaders = document.querySelectorAll('th');
    const tableCells = document.querySelectorAll('td');
    const alwaysVisibleElements = document.querySelectorAll('.always-visible');

    if (window.innerWidth >= 768) {
      tableHeaders.forEach((header) => {
        header.classList.remove('hidden');
      });
      tableCells.forEach((cell) => {
        cell.classList.remove('hidden');
      });
    } else {
      tableHeaders.forEach((header) => {
        header.classList.add('hidden');
      });
      tableCells.forEach((cell) => {
        cell.classList.add('hidden');
      });
    }

    if (window.innerWidth < 768) {
      alwaysVisibleElements.forEach((element) => {
        element.classList.remove('hidden');
      });
    }
  }
}
