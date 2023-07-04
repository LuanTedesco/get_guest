import { Controller } from '@hotwired/stimulus'

// Connects to data-controller="invite-modal"
export default class extends Controller {
  connect() {
    this.element.setAttribute('data-action', 'invite-modal#click_modal')
  }

  click_modal(e) {
    e.preventDefault()
    this.url = this.element.getAttribute('href')
    fetch(this.url, {
      headers: {
        Accept: 'text/vnd.turbo-stream.html'
      }
    })
      .then(response => response.text())
      .then(html => Turbo.renderStreamMessage(html))
  }
}
