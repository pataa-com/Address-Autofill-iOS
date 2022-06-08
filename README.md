
# Pataa AutoFill SDK Implementation Guide

The Address Autofill SDK for iOS framework provides fast & simple interface that allows you to quickly fetch the address and customer details against a Pataa code.

![image](https://user-images.githubusercontent.com/103625941/163770534-6cec5e08-00c1-48f5-9ab8-4db4027aa820.png)

![image](https://user-images.githubusercontent.com/103625941/164167880-9334e305-62e1-47b1-86c2-1e336a40e481.png)

![image](https://user-images.githubusercontent.com/103625941/164168176-cdf9148e-98e3-4dd4-8bb7-e19b1400ef8e.png)

# Install SDK

To use the Pataa Autofill iOS SDK, you have two options.

## 1. Follow the steps for a Cocoapods install:
  
- in your project root directory run this command on terminal

```
pod init
```

- then open open podfile and past this in your project podfile

```
pod 'Address-Autofill-iOS'
```

- then save and run this command on terminal

```
pod install
```

## 2. Follow the steps below for a manual install:

- Download and unzip the PataaAutoFillSDK. ([Download Framework zip from here](https://github.com/pataa-com/Address-Autofill-iOS/releases))
- Drag the PataaAutoFillSDK.xcframework inside your project under the main project file.
- Embed the framework.
- Select your project.xcodeproj file.
- Under General, add the PataaAutoFillSDK framework in the Frameworks, Libraries & Embedded Content section.![](https://lh3.googleusercontent.com/b4bgV5GDyZckh_IYdMaixrhj8PijUh1QOP64rOOUUokRlWs9NH23DAENHvVF9UzpTecDHlJw3HuY3H2WtdPsA6dHOt-tSLfLDjKDLP7NyKepNqHpRUUKavQT0hnLCUjvbTJ66d4MgUkkswQ8yg)
 

# Integration Steps for Objective-C

Follow the steps below for Objective-C:

- Put Location permission in project's info.plist file.

```
<key>NSLocationWhenInUseUsageDescription</key>
<string>Application requires user’s location for better user experience.</string>
 ```
 
- Import PataaAutoFillSDK.h to your ViewController.h file.
- Import PataaAutoFillSDK.h into every class where you plan to use this SDK.

![](https://lh3.googleusercontent.com/jR2PpdvTKRfQPoDR9ZgXS-8sjSzNboc6MMntpXVrJvwAJyhMx1EV38f5ZTKNwB2MFDAF5CSZdSb0vsdTUgPwd2J0L9HQLNEsKFb0bdf4M9NhhT-_RIR5k5Y-uyqxgs0W8WvGksRnujHYGG5xxg)
    
```
#import <PataaAutoFillSDK/PataaAutoFillSDK.h>
```

- Create a UIView on your UIViewController on the storyboard/xib & assign PataaAutoFillView class & create an IBOutlet of that UIView on your ViewController class. Please set the height of UIView 100 for better visibility.![](https://lh3.googleusercontent.com/i1ls4JQ8ZxNi-rmM5IKjfaU9eEMTgz_AjTSLZKPqNnXnPTMfDbJiaFKXWT_SAW2o1wuUXgQx_OtO8cq1HJ7HbGToA3r7vBkwoDDIdisnfw856zJyZOesa_RLMK4R4LiYxudZtWDx_hxQ5BcFZg)
    
- Initialize SDK with your key & app prefix(Team ID) in ViewDidLoad() method. 

Note:- App prefix is not mandetory in development mode.


![](https://lh5.googleusercontent.com/SLjG_oXGiDegxXTEZpAm7IvnHoZmARJy4pjk0FEp37VNkVTtQ9vD-NU-SxJYCYoNpkYn1d1QILDSgMvuyOZaEn_0j3eLsZlZTn8RPjhVSYNc7T66tudhvmpILv5orkST5qrKJOKm5rxQHkyBhA)

  
```
[objectName initializeSDKWithKey:@"YOUR_API_KEY" withAppPrefix:@"APP_PREFIX"];
```
  

## Integration Steps for Swift

Follow the steps below for Swift:

- Import PataaAutoFillSDK to your ViewController.swift file.
- Import PataaAutoFillSDK into every class where you plan to use this SDK.

![](https://lh3.googleusercontent.com/QN3PcUi9uXe_A1cFiPcQt1RRE5Z0oOxi0Dv4lHE9_26u7Ld6Kiz1pAaf8ctd8KiXCy6ribz8ardZXz4eq1w5yxgHkcnmyy_Pm8ITSgc0ad4H4vgTfCjlIYcE9RL_v0NjD5uTz9Pzkw2reYWXFQ)

- Create a UIView on your UIViewController on the storyboard/xib & assign PataaAutoFillView class & create an IBOutlet of that UIView on your ViewController class. Please set the height of UIView 100 for better visibility.

![](https://lh5.googleusercontent.com/OMN0oUQvoz2a0MW1H3xfAoaY44aMb1oJc2H_gTCHA7MD00b1_I5GB4kVT05nB5pFD1Vp-5PisV9tFcQPCFZE8fViBn9xdrfrNSL0gmrSxGb-GNlfW-kO_UfU7EDC2ts-wR4Qv2MFS5QNorDsVg)
    
- Initialize SDK with your key & app prefix(Team ID) in ViewDidLoad() method.

Note:- App prefix is not mandetory in development mode.
    
```
objectName.initializeSDK(withKey: "YOUR_API_KEY", withAppPrefix: "APP_PREFIX")
```

![](https://lh6.googleusercontent.com/SR89RILpVV2NLH5H0iRWaCbsVu4APV0eFyWj7UWKP7_aCkE7M2Pg_Cuqr9JK_I1rEZdZsgmzKqyTgq1hKbbe75QI7lV1kcBHKZIJkHtGOlM0RuBXqaDSOMvnwW8VdcDJKMR8iSC-1b_sKj6NmA)

# Get Pataa Details

## Follow the steps below for Objective-C:

To get the details of entered pataa code. Please assign the PataaAutoFillDelegate to your view controller & implement PataaAutoFillDelegate in your ViewController.h file

  
![](https://lh4.googleusercontent.com/0WmTGRq0fbW3_B16ac9UwdsorFQRJzKIcFUrb1ziQcKo_zBnx93hImIq_0gIDgXJS9qf1dvtRyL_9EAWD1ngJXt51xS4-LqhvgEBAAv4Jg6dssWtyZ1XmaJxos8LD6WAEjCsCzjpZ7s7VtCKoA)

```
[objecName setDelegate:self];
```

After that please implement the delegate methods in your view controller inside a ViewController.m file.

![](https://lh3.googleusercontent.com/Z-NOsHAs59XZvn-5jbXnUKuqb2OUiUMZvKXJWKqEdi3Str6-rC1GoPYtu1sUcga-G8VrhrWIEK2GZKmPp1zbvMmvFV7tlRxaP3EX3HRJYEVoUc6m8COYh5HrPKAW6QUgyIWR6i5PGKfcLLcg8g)

```
- (void)didReceivedPataaDetails:(PAPataaDetail *)pataaDetails withError:(NSError *)error {

}
```

In PAPataaDetails, You will get the all details your pataa & user. To get the pataa details please use the following code:

```
- (void)didReceivedPataaDetails:(PAPataaDetail *)pataaDetails withError:(NSError *)error {
        NSLog(@"%@", pataaDetails.pataa.pataaCode)
        NSLog(@"%@", pataaDetails.pataa.address1)
        NSLog(@"%@", pataaDetails.pataa.address2)
        NSLog(@"%@", pataaDetails.pataa.address3)
        NSLog(@"%@", pataaDetails.pataa.address4)
        NSLog(@"%@", pataaDetails.pataa.cityName)
        NSLog(@"%@", pataaDetails.pataa.stateName)
        NSLog(@"%@", pataaDetails.pataa.countryName)
}
```

To get the user details please use the following code:

```
- (void)didReceivedPataaDetails:(PAPataaDetail *)pataaDetails withError:(NSError *)error {
        NSLog(@"%@", pataaDetails.user.mobile)
        NSLog(@"%@", pataaDetails.user.countryCode)
        NSLog(@"%@", pataaDetails.user.firstName)
        NSLog(@"%@", pataaDetails.user.lastName)
}
```
  

## Follow the steps below for Swift:

To get the details of entered pataa code. Please assign the PataaAutoFillDelegate to your view controller.

  
```
objectName.delegate = self
```

![](https://lh4.googleusercontent.com/TGaGi_0h1e2AGfgkfciMl9UdxhTZDP55gGaAVRHmmWNS6HquNbCtuX584hZ4V_DMdbBYM49Zr2QJTW3aZtmd4jTMg0mzFz3w4gNatPVlqQHDMPx6deZsBJSHWsS83NNPwfxwbkrctkXy-5aGbQ)

  

After that please implement the delegate methods in your view controller inside a UIViewController or using an extension.

  

![](https://lh3.googleusercontent.com/YENy5OOhqJZ6JRJ-h8CeF46h-chnSY_N5bCkRIcj27WkDV5QDiQqGMly4C_ycYdumsQMLSbHVrOKHwBAvTu21iMaZe-bLFzZc_Qo8sm_MvZSh5R9ilGKx8Vf95ffW0PQjj0UddSP8mY-qwqCtQ)

  
  
```
extension  ViewController: PataaAutoFillDelegate {
    func  didReceivedPataaDetails(_ pataaDetails: PAPataaDetail?, withError error: Error?) {
    
    }
}
```

In PAPataaDetails, You will get the all details your pataa & user. To get the pataa details please use the following code:

```
func  didReceivedPataaDetails(_ pataaDetails: PAPataaDetail?, withError error: Error?) {
    if  let pataaDetails = pataaDetails, let pataa = pataaDetails.pataa {
        print(pataa.pataaCode)
        print(pataa.address1)
        print(pataa.address2)
        print(pataa.address3)
        print(pataa.zipcode)
        print(pataa.cityName)
        print(pataa.stateName)
        print(pataa.countryName)
    }
}
```

  

To get the user details please use the following code:

```
func  didReceivedPataaDetails(_ pataaDetails: PAPataaDetail?, withError error: Error?) {
	if  let pataaDetails = pataaDetails, let user = pataaDetails.user {
		print(user.countryCode)
		print(user.firstName)
		print(user.lastName)
		print(user.mobile)
	}
}
```
