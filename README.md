# Pre-work - Tip Calculator

Tip Calculator is a tip calculator application for iOS.

Submitted by: Pranav Nair

Time spent: 4 hours spent in total

## User Stories

The following **required** functionality is complete:

* [X] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [X] User can select between tip percentages by tapping different values on the segmented control and the tip value is updated accordingly

The following **optional** features are implemented:

* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [X] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [X] A light/dark color theme to the settings view.
- [X] A tip percentage changer for each tip percentage on the segmented control.
- [X] Remembering the new tip percentages on the segmented control across app restarts
- [X] A "Reset" button that resets the tip percentage values on the segmented control to 15, 18, and 20%.

## Video Walkthrough

Here's a walkthrough of implemented user stories:

![](https://i.imgur.com/NaIDftc.gif)

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Describe any challenges encountered while building the app.

One challenge I encountered was updating the values shown on the segmented control whenever the tip percentages were changed in the settings view. The percentages 57% and 58% would always show up on the segmented value as one value lower than what was input. To fix this, I had to carefully inspect the code in the SettingsViewController file and see exactly where the code is changing. I eventually edited the defaults variable so that they held the percentages rather than their decimal form, as it was a rounding error that caused the issue. Another challenge I faced was implementing a subview within the ViewController file. I had spend lots of time researching this topic in order to implement it properly. Both of these challenges revealed to me that debugging was a crucial part of the coding process and that it is perfectly fine to search up topics online for guidance as long as I implement what I learn in my own way.

## License

    Copyright [2022] [Pranav Nair]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
