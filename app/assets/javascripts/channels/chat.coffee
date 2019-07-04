App.chat = App.cable.subscriptions.create { channel: "ChatChannel", room: "general" },
  connected: ->
  # Called when the subscription is ready for use on the server

  disconnected: ->
  # Called when the subscription has been terminated by the server

  received: (data) ->
    @appendLine(data)

  appendLine: (data) ->
    html = @createLine(data)
    $("[data-chat-room='general']").append(html)

  createLine: (data) ->
    """
    <article class="chat-line">
      <span class="speaker">#{data["sent_by"]}</span>
      <span class="body">#{data["body"]}</span>
    </article>
    """
