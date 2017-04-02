# Rubot

- The application is a simulation of a toy robot moving on a square tabletop,
  of dimensions 5 units x 5 units.
- There are no other obstructions on the table surface.
- The robot is free to roam around the surface of the table, but must be
  prevented from falling to destruction. Any movement that would result in the
  robot falling from the table must be prevented, however further valid
  movement commands must still be allowed.

## Installation

Build and install via Rake:

    $ rake install

## Usage

### Commands File
  
You can prepare and run a commands file by piping its contents to the rubot command.

```text
# commands.rubot
PLACE 0,0,NORTH
MOVE
REPORT
```

    $ rubot < commands.rubot
    $ 0,1,NORTH
    $

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/paulccarey/rubot.

## Considerations

The following documents any considerations in the design of the Robot Simulation.

### Table

* Knows its limits/bounds
* Knows if a location is valid

### Robot

* Knows and Changes its orientation
* Knows its location
* Moves its location

## Future Improvements

* Table could track locations of Robot(s) especially if multiple, acting as a registry.
