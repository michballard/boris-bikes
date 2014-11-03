| [Makers Academy](http://www.makersacademy.com) | Weeks 2 & 3 |
| ------ | ------ |

This exercise involved modelling the London 'Boris Bikes' bike hire scheme using object oriented programming.  This code was built on design principles such as SOLID and DRY.  Test driven coding and pair programming was also utilised.

Functionality
-------------
- A docking station can have a bike added to it, either working or broken
- A bike can be broken
- A person can rent a bike 
- A person can return a bike
- A van can pick up broken bikes from stations and drop them off at garages
- A van can pick up fixed bikes from garage and drop them off at stations
- The garage can fix broken bikes

Technologies used
-----------------
- Ruby
- Rspec

Testing
-------
Screenshot of test results from terminal:

![Screenshot](/images/screenshot.png)

How to run it
-------------
Clone the repository:
```shell
$ git clone git@github.com:michballard/boris-bikes.git
```

Change directory:
```shell
$ cd boris_bikes
```

Open up IRB and require file:
```shell
> require './run_bikes.rb'
```

####Methods available in this project

To create new objects:
```shell
> bike = Bike.new
> station = DockingStation.new
> person = Person.new
> van = Van.new
> garage = Garage.new
```

To load bike into a docking station:
```shell
> station.dock(bike)
```

To release a bike from a docking station:
```shell
> station.release(bike)
```

To break a bike:
```shell
> bike.break!
```

To borrow a bike: 
```shell
> person.rents_bike!
```

To return a bike:
```shell
> person.returns_bike!
```

To fix a bike: 
```shell
> garage.dock(bike)
```

To collect broken bikes from station:
```shell
> van.collect_broken_bikes_from(station)
```

To release broken bikes to garage:
```shell
> van.release_broken_bikes_to(garage)
```

To pick up fixed bikes from garage:
```shell
> van.collect_fixed_bikes_from(garage)
```

To return fixed bikes to station:
```shell
> van.release_fixed_bikes_to(station)
```