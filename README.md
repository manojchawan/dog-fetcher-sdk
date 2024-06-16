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
![Simulator Screenshot - iPhone 15 Pro - 2024-06-16 at 13 05 09](https://github.com/manojchawan/dog-fetcher-sdk/assets/30523794/fe6e171b-adf3-451c-981e-a519bf9a3391)
![Simulator Screenshot - iPhone 15 Pro - 2024-06-16 at 13 05 22](https://github.com/manojchawan/dog-fetcher-sdk/assets/30523794/97edd996-1e08-4400-bb1b-c3a270d9092d)
![Simulator Screenshot - iPhone 15 Pro - 2024-06-16 at 13 06 49](https://github.com/manojchawan/dog-fetcher-sdk/assets/30523794/b6446794-0297-423d-a6d1-4d92dcfcbc5a)
![Simulator Screenshot - iPhone 15 Pro - 2024-06-16 at 13 06 30](https://github.com/manojchawan/dog-fetcher-sdk/assets/30523794/eb7a181f-b8dd-49cc-98df-2b02592ebce7)



## 🚀 About Me
I'm an iOS Developer who started coding journey with android. you can connect with me on following channels.

- github: [@manojchawan](https://github.com/manojchawan)
- linkedIn: [@manojchawan](https://www.linkedin.com/in/manojchawan)
- twitter: [@manoj_chawan](https://twitter.com/manoj_chawan)
- instagram: [@manoj_chawan_](https://www.instagram.com/manoj_chawan_)


