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


## Error Support

in case you face any issue building the project then try changing below setting: 

inside your target -> go to Build Setting -> loog for Build Options ->
toggle 'User Script Sandboxing = No'

<img width="785" alt="Screenshot 2024-06-16 at 1 23 13 PM" src="https://github.com/manojchawan/dog-fetcher-sdk/assets/30523794/fd0dfb85-4f60-4b6a-aa1b-8ec245a7347c">



## Screenshots

https://github.com/manojchawan/dog-fetcher-sdk/assets/30523794/11d91503-6dbe-43b1-bea0-1396fa1fa785

https://github.com/manojchawan/dog-fetcher-sdk/assets/30523794/7bf806b6-fd7d-4d81-b12e-802c1ec9570e

https://github.com/manojchawan/dog-fetcher-sdk/assets/30523794/75714c31-96f5-4bc6-94be-64da1f66d6e5

## 🚀 About Me
I'm an iOS Developer who started coding journey with android. you can connect with me on following channels.

- github: [@manojchawan](https://github.com/manojchawan)
- linkedIn: [@manojchawan](https://www.linkedin.com/in/manojchawan)
- twitter: [@manoj_chawan](https://twitter.com/manoj_chawan)
- instagram: [@manoj_chawan_](https://www.instagram.com/manoj_chawan_)


