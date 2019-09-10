<p align="center">
    <img width="737" alt="Screen Shot 2019-09-10 at 12 00 29" src="https://user-images.githubusercontent.com/32227073/64625565-c98ba880-d3c2-11e9-9439-40dbf2255655.png">
</p>

![Swift](https://img.shields.io/badge/Swift-5.0-orange.svg)
[![Build Status](https://api.travis-ci.org/ViniciusDeep/Providey.svg?branch=master)](https://travis-ci.org/ViniciusDeep/Providey)


✨ Nice way to make your requests


## At a Glance

### With Providey

```swift
Providey<[Post]>().request(router: .home, withMethod: .get, params: nil) { (result) in
     switch result {
         case .failure(let error):
                print(error)
         case .success(let posts):
                print(posts)
            }
     }
}
```


## Small Advantages

- You don't need write always the same thing


## IDEA
- The idea of this project, is abstract the layer of service, to make easy work with your API. The big idea is to community can contribute to make this lib best.


## TO-DO
* Improvement in additional methods.
* Work better in routes.
* Possibilites user create routes.
* And always improve code.


## Installation
1. This lib is avaiable in Swift Package Manager, so just install...
 

## License

**Providey** is under MIT license. See the [LICENSE](LICENSE) file for more info.
