
# react-native-the-hawaii-tour

## Getting started

`$ npm install react-native-the-hawaii-tour --save`

### Mostly automatic installation

`$ react-native link react-native-the-hawaii-tour`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-the-hawaii-tour` and add `RNTheHawaiiTour.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNTheHawaiiTour.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNTheHawaiiTourPackage;` to the imports at the top of the file
  - Add `new RNTheHawaiiTourPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-the-hawaii-tour'
  	project(':react-native-the-hawaii-tour').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-the-hawaii-tour/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-the-hawaii-tour')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNTheHawaiiTour.sln` in `node_modules/react-native-the-hawaii-tour/windows/RNTheHawaiiTour.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using The.Hawaii.Tour.RNTheHawaiiTour;` to the usings at the top of the file
  - Add `new RNTheHawaiiTourPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNTheHawaiiTour from 'react-native-the-hawaii-tour';

// TODO: What to do with the module?
RNTheHawaiiTour;
```
  