# Click To Draw

This is a toy project I wrote to play with Phoenix LiveView especially
clicks position detection and Phoenix PubSub integration.

This is a drawing board that is live updated as you click. It's
distributed therefore each browser connected to
`http://localhost:4000/svg_live` will receive updates from other ones
in real-time and see its board being updated.

## Demo

![Demo GIF](https://github.com/Bounga/click_to_draw/raw/master/demo.gif)

## Installation

* Install dependencies with `mix deps.get`
* Install Node.js dependencies with `cd assets && npm install`
* Start Phoenix endpoint with `mix phx.server`

Now you can visit
[`localhost:4000/svg_live`](http://localhost:4000/svg_live) from your
browser.

You can open more browser instances / tabs to play with real-time
updates across clients.

## Learn more

* Official website: https://www.phoenixframework.org/
* Guides: https://hexdocs.pm/phoenix/overview.html
* Phoenix LiveView: https://github.com/phoenixframework/phoenix_live_view
* Phoenix PubSub: https://github.com/phoenixframework/phoenix_pubsub
