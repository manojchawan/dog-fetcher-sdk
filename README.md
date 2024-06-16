
# Dog-Fetcher

Pod for fetching random dog images from the internet


## Requirements

* Swift 5.5+
* iOS 16.0+
## Installation

Install DogFetcher with CocoaPod

```swift
platform :ios, '16.0'
use_modular_headers!

target 'MyApp' do
  pod 'DogFetcher'
end
```
    
## Usage/Examples

```swift
import DogFetcher

class Myclass{

  func getDogImages(){
    Task{
        do{
          private let dogFinder = DogFinder()
          guard let images = try await dogFinder.getImages(number: 3) else { return }
          guard let image = try await dogFinder.getImage() else { return }
        }catch let err {
          debugPrint(err)
        }
    }
  } 
}

```


## Screenshots

https://github.com/manojchawan/dog-fetcher-sdk/assets/30523794/11d91503-6dbe-43b1-bea0-1396fa1fa785

https://github.com/manojchawan/dog-fetcher-sdk/assets/30523794/7bf806b6-fd7d-4d81-b12e-802c1ec9570e

https://github.com/manojchawan/dog-fetcher-sdk/assets/30523794/75714c31-96f5-4bc6-94be-64da1f66d6e5
