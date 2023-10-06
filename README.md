# WatchKit-App-for-IP2Location.IO
This is a WatchKit app designed for the IP2Location.IO services. It enables you to find out information about a given IP address with your Apple Watch, using the API provided by IP2Location.IO. The application shows the many contexts and use cases in which APIs can be used. It is programmed using Swift and uses the latest SwiftUI framework (as opposed to the more traditional, UIKit) and is built on the operating system watchOS 3.

<img width="305" alt="Screenshot 2023-09-30 at 16 01 59" src="https://github.com/BabatundeOnabajo/WatchKit-App-for-IP2Location.IO/assets/36359216/354ff935-c61e-447d-9732-cff0c96f5f57">
<img width="315" alt="Screenshot 2023-09-30 at 16 05 46" src="https://github.com/BabatundeOnabajo/WatchKit-App-for-IP2Location.IO/assets/36359216/305fece5-65fb-4ee1-8500-f096fb1bb4e1">
<img width="284" alt="Screenshot 2023-10-01 at 09 03 11" src="https://github.com/BabatundeOnabajo/WatchKit-App-for-IP2Location.IO/assets/36359216/fbede296-d1b4-4777-aad7-e3425ec90dde">


# Requirements
In order to use this smartwatch app, you will need the following:
* Internet connection
* API key(s) from IP2Location.IO
* Xcode Version 15.0 beta 8 or above (recommended as at September 30th 2023)
* Physical Apple Watch or emulator

It is not necessary to have an iPhone of any kind, as was once the case with previous watchOS systems (in particular, watchOS 1.0).

# Background
(to be amended shortly)

# Description of each file in this repository
(to be amended shortly)

# Instructions
Playground files are files that run in "Playgrounds", a feature of Xcode that enables you to quickly execute code without the need to run or compile a full-built app or project. Playgrounds are extremely helpful when wanting to see the effect of a particular line(s) of code. They are particularly relevant here as IP2Location.IO does not feature Swift in their examples. 
### IP2LocationResponse1.playground
In order to use this program, please follow the instructions below:
1. Download the file "IP2LocationResponse1.playground". On most Mac devices, the default location is usually the "Downloads" folder, although it may differ on your device.
2. Open Xcode (preferably Xcode Version 15.0 beta 8 or above). If you do not have Xcode, you may download it here: https://apps.apple.com/us/app/xcode/id497799835?mt=12 
3. Click "Open" under the File tab in Xcode.
4. Locate the location of the file and click "Open". This will open the Playground window.
5. Input the relevant IP address and API key in the Playground file. The area to do this should be indicated within the file when you open it.
6. Press Run or, alternatively, long-click the button at the bottom of the Playground window and press "Automatically Run".
7. You should see the JSON string printed in the console, or alternatively an error if there is an error for some reason (e.g. insufficient credit).

You should see an output similar to this below at the bottom of the Playground:

<img width="962" alt="Screenshot 2023-10-06 at 07 10 02" src="https://github.com/BabatundeOnabajo/WatchKit-App-for-IP2Location.IO/assets/36359216/0445b691-4e5d-4e02-b992-22b7803ec140">


*Note: This Playground file only returns responses for the following categories respectively: IP Address, Country Code, Country Name, Region Name, City Name, Latitude, Longitude, Zip Code, Time Zone, AS Number, AS Name, Proxy Status. There are more responses given by IP2Location.IO under various different plans, and the author of this repository has not checked for those responses. 

### IP2LocationResponse2.playground
In order to use this program, please follow the instructions below:
1. Download the file "IP2LocationResponse2.playground" here in this repository. On most Mac devices, the default location is usually the "Downloads" folder, although it may differ on your device.
2. Open Xcode (preferably Xcode Version 15.0 beta 8 or above). If you do not have Xcode, you may download it here: https://apps.apple.com/us/app/xcode/id497799835?mt=12
3. Click "Open" under the File tab in Xcode.
4. Locate the location of the file and click "Open". This will open the Playground window.
5. Press Run or, alternatively, long-click the button at the bottom of the Playground window and press "Automatically Run".
6. You should see the JSON string printed in the console, or alternatively an error if there is an error for some reason (e.g. insufficient credit).

You should see a response similar to this below at the bottom of the Playground:

<img width="960" alt="Screenshot 2023-10-06 at 07 13 06" src="https://github.com/BabatundeOnabajo/WatchKit-App-for-IP2Location.IO/assets/36359216/d2f7c5ea-1745-4910-adbf-9c4bc30110c9">



*Note: This Playground file only returns responses for the following categories respectively: IP Address, Country Code, Country Name, Region Name, City Name, Latitude, Longitude, Zip Code, Time Zone, AS Number, AS Name, Proxy Status. There are more responses given by IP2Location.IO under various different plans, and the author of this repository has not checked for those responses. If you are using a different plan that returns more responses, you will need to amend the struct called "testStruct" as appropriate. Whilst this requires knowledge of Swift, this can also be potentially figured out by someone from a different programming background. 

### Apple Smartwatch
#### Xcode (Emulator)
1. Click on the "Code" button above here in Github and press "Download Zip".
2. 
#### Physical Apple Watch
1. Click on the "Code" button above here in Github and press "Download ZIP".
2. 
# Credits
Babatunde Onabajo (ChurchMapped Limited)

# Disclaimer
The code here does not represent the views of Apple, Inc, ChurchMapped Limited or Hexasoft Development Sdn. Bhd. nor should the publication of this program be construed as an endorsement of the aforementioned companies (or any past, present or future employer of the author) in any way. Any trademarks used in this program are those of their respective holders. This repository was submitted to the IP2Location.IO annual competition (2023). 
