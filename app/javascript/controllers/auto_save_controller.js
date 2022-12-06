import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="auto-save"
export default class extends Controller {
  static targets = [ "form" ]
}
