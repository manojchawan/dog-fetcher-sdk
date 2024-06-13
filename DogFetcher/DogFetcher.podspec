Pod::Spec.new do |spec|

  spec.name         = "DogFetcher"
  spec.version      = "1.0.1"
  spec.summary      = "SDK for random dog images"
  spec.description  = "This SDK will fetch new dog image randomly each time from internet with provided API support also you can fetch multiple image in array"
  spec.homepage     = "https://github.com/manojchawan/dog-fetcher-sdk"
  spec.license      = "MIT"
  spec.author             = { "manoj chawan" => "chawanmanoj93@gmail.com" }
  spec.social_media_url   = "https://x.com/manoj_chawan"
  spec.platform     = :ios, "16.0"
  spec.source       = { :git => "https://github.com/manojchawan/dog-fetcher-sdk.git", :tag => "#{spec.version.to_s}" }

  spec.source_files  = "DogFetcher/**/*.{swift}"
  spec.swift_versions = "5.5"
  spec.frameworks = "XCTest"
  
end
