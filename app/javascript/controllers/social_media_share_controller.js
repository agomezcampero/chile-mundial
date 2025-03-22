import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  shareButton = document.querySelector('#share-button')

  connect() {
    if (navigator.share) {
      this.shareButton.classList.remove('hidden')
      this.shareButton.addEventListener('click', () => {
        navigator.share({
          title: this.data.get('title'),
          url: this.data.get('url'),
        })
      })
    }
  }
}
