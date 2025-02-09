# change 

## ProjectA Structure

- **ProjectA** - Workspace
- **ProjectB** - Local linked framework
- **ProjectC** - Remote linked framework installed via CocoaPods

## Linking Steps

1. **Linking ProjectB (Local Framework)**

   - In `ProjectA`'s Podfile, specify the local path for ProjectB:
     ```ruby
     pod 'ProjectB', :path => '../ProjectB'
     ```

2. **Linking ProjectC (Remote Framework)**

   - Add the following line to `ProjectA`'s Podfile:
     ```ruby
     pod 'ProjectC', :git => 'git@github.com:tashyeghiazaryan/ProjectC.git', :tag => '1.0.3'
     ```
   - Ensure you specify the correct version tag.

3. **Install Dependencies**

   - Navigate to ProjectA’s directory and run:
     ```sh
     pod install
     ```

# How to Compile ProjectC to XCFramework

## Steps to Build XCFramework

1. **Make Changes and Check Build**

   - Ensure all necessary updates are applied to ProjectC.
   - Build the project to check for errors.

2. **Run the Framework Creation Script**

   - Execute the provided script to generate the XCFramework:
     ```sh
     ./create_framework.sh
     ```

3. **Copy the Built Framework**

   - If the build is successful, copy the generated XCFramework:
     ```sh
     cp -R build/ProjectC/ProjectC.xcframework ProjectC/downloads/
     ```

4. **Update the Podspec Version**

   - Open `ProjectC.podspec` and update `spec.version`, e.g.:
     ```ruby
     spec.version = "1.0.2"
     ```

5. **Commit and Tag the Changes**

   - Push the changes to the repository and create a new tag:
     ```sh
     git add .
     git commit -m "Updated ProjectC to version 1.0.2"
     git push
     git tag 1.0.2
     git push origin 1.0.2
     ```

6. **Update ProjectA’s Podfile**

   - In `ProjectA`’s Podfile, update the tag version for ProjectC:
     ```ruby
     pod 'ProjectC', :git => 'git@github.com:tashyeghiazaryan/ProjectC.git', :tag => '1.0.2'
     ```

7. **Install the Updated Version in ProjectA**

   - Run:
     ```sh
     pod install
     ```

This ensures that ProjectA correctly links ProjectB and ProjectC, and ProjectC is properly compiled into an XCFramework with version control.

