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

<img width="237" alt="Screenshot 2024-06-16 at 1 37 00 PM" src="https://github.com/manojchawan/dog-fetcher-sdk/assets/30523794/1936c77c-3726-4a44-bfef-736fbec2c6cb">
<img width="237" alt="Screenshot 2024-06-16 at 1 37 22 PM" src="https://github.com/manojchawan/dog-fetcher-sdk/assets/30523794/a52c5f52-6392-4a18-ae66-47f3da5a592c">
<img width="237" alt="Screenshot 2024-06-16 at 1 37 37 PM" src="https://github.com/manojchawan/dog-fetcher-sdk/assets/30523794/aa8c7620-b416-4117-a7a8-a6f508f01cea">
<img width="237" alt="Screenshot 2024-06-16 at 1 37 43 PM" src="https://github.com/manojchawan/dog-fetcher-sdk/assets/30523794/3ffaaea9-0233-4710-8f1e-6776644c2a45">


## 🚀 About Me
I'm an iOS Developer who started coding journey with android. you can connect with me on following channels.

- github: [@manojchawan](https://github.com/manojchawan)
- linkedIn: [@manojchawan](https://www.linkedin.com/in/manojchawan)
- twitter: [@manoj_chawan](https://twitter.com/manoj_chawan)
- instagram: [@manoj_chawan_](https://www.instagram.com/manoj_chawan_)


