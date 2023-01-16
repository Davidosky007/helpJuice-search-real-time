import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search-form"
const CONFIRMED_INPUT_ID = 'confirmed-input';
const TEXT_INPUT_ID = 'query';

export default class extends Controller {
  connect() {
    const textInput = document.getElementById(
      TEXT_INPUT_ID
    );

    const confirmedInput = document.getElementById(
      CONFIRMED_INPUT_ID
    ); 
    
    textInput.addEventListener("focusout", () => {
      confirmedInput.value = true;
      this.element.requestSubmit();
    });

    textInput.addEventListener("focusin", () => {
      confirmedInput.value = null;
    });
  }
  
  search() {
    clearTimeout(this.timeout);

    this.timeout = setTimeout(() => {
      this.element.requestSubmit();
    }, 400);
  }
}
