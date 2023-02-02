import consumer from "channels/consumer"

consumer.subscriptions.create("ChatChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
      console.log("haha")
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    const chatZone = document.querySelector(.'chat-zone')
    const chatContent = 
      ` <div class="container-message">
          <p>${data.messages}</p>
        </div>
      ` 
      chatZone.innerHTML = chatZone.innerHTML + chatContent

    // Called when there's incoming data on the websocket for this channel
  }
});
