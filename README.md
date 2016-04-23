# Overlook

Ruby access to CS:GO demo files.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'overlook'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install overlook

## Usage

You can suscribe a plain ruby class to the parser to act on events
in the demo. Only a few events have been implemented.

```ruby
class ReplayAnalyzerSubscriber
  attr_reader :rank_events

  def initialize()
    @rank_events = []
  end

  # Fired whenever a rank change happens.
  # The update event comes in the form
  #   { community_id: 'ABC', rank: 12 }
  def rank_update(event)
    self.rank_events << event
  end

  # Write the header to the db when it is fired from Overlook.
  # The header contains the map name
  #
  # The header event comes in the form
  #   { map_name: 'cs_office' }
  def header(header)
    # do something with the header.map_name
  end

  # Called when the replay has been parsed successfully.
  # Flush the user ranks to the repository
  def done(data)
    rank_events.each do |rank_update|
      # do something
    end
  end
end


subscriber = ReplayAnalyzerSubscriber.new

demo = Overlook::Csgo::Demo.new(File.open('demo.dem'))
demo.subscribe(subscriber)
demo.parse
```

You may also decompose sharecodes

```ruby
Overlook.decode_share_code('CSGO-MXzcE-vo6oX-LuOhB-Vhn7m-xiHeB')
  => {:matchid=>"3004024506927808536", :outcomeid=>"3004030760400191518", :tokenid=>"34492"}
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/taylorfinnell/overlook.

