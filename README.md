# CTA

A Node.js wrapper for the Chicago Transit Authority's Bus and Train Tracker APIs.

### Dependencies

In order to use this package, you must first have bus and/or train api keys from the 

You can apply for a train tracker api key here: [http://www.transitchicago.com/developers/traintrackerapply.aspx](http://www.transitchicago.com/developers/traintrackerapply.aspx)

and a bus tracker api key by following the instructions here: [http://www.transitchicago.com/developers/bustracker.aspx](http://www.transitchicago.com/developers/bustracker.aspx)

## Usage

### Install

	npm install cta


### Init
```
var Cta = require('cta');
Cta.init({busApiKey: "your-bus-api-key-here", trainApiKey: "your-train-api-key-here"});
```

### Train API

#### Arrivals
Returns arrival times for a particular station identified by either a map id, or stop id. See [this appendix page](http://www.example.com) for a complete list.

##### Parameters
* Either `stopId` **OR** `mapId` is required. Both cannot be specified.
* `max` is optional and specifies a limit of how many arrival times to return
* `route` is optional

##### Example

```
Cta.Train.Arrivals({stopId: '12345', max: 5})
```

#### Trains

*Coming Soon*

#### Locations

*Coming Soon*

### Bus API

#### Arrivals

*Coming Soon*


## Developers

### Coffeescript

Run `grunt` to watch for Coffeescript changes in `src` and compile them to `lib`.

### Tests

Run `grunt mocha` to execute your test suite with coverage statistics.

The `npm test` command runs the test suite without coverage (Travis-CI).

### Contribute

[Create an issue](https://github.com/andrewallen2012/node-cta/issues/new) to report a problem or suggest an improvement.

Pull requests are welcome, just make sure to include tests.



### Stay up to date

[Watch this project](https://github.com/andrewallen2012/node-cta#) on Github.

[Follow Andrew Allen](http://twitter.com/intent/user?screen_name=_andrew_allen_) on Twitter.
