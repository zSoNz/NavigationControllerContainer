# NavigationControllerContainer

A lightweight Swift library for managing navigation within a container-based architecture using `UINavigationController`. This library provides a flexible way to embed and manage navigation flows inside a parent view controller, supporting custom transition animations.

## Features

- Encapsulates `UINavigationController` within a container view controller.
- Supports custom animated transitions through `NavigationCoordinatorAnimatorType`.
- Provides a default implementation with `NavigationControllerDefaultPresenter`.

## Installation

NavigationControllerContainer is available through CocoaPods. To install it, simply add the following line to your Podfile:
```ruby
pod "NavigationControllerContainer"
```

## Usage

### Creating a Container

You can inherit your class (eg coordinator) from the NavigationControllerContainer:

```swift
class SomeFlow: NavigationControllerContainer<NavigationControllerNewPresenter> {

    override func setup() {
        super.setup()
        
        //Make some navigation logic here
    }
    
}
```
or just create an instance of this container inside your navigation class:

```swift
let someFlow = NavigationControllerContainer(presenter: NavigationControllerDefaultPresenter.default)
```

### Container usage

```swift
//Inside SomeFlow class
private func showOtherFlow() {
    let otherFlow = NavigationControllerContainer(presenter: NavigationControllerDefaultPresenter.default)
    self.flowNavigation.setViewControllers([otherFlow], animated: true)
}
```

### Custom Presenter with Animated Transitions

To use custom transitions, implement the `NavigationCoordinatorAnimatorType` protocol:

```swift
class CustomNavigationAnimator: NSObject, NavigationCoordinatorAnimatorType {

    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.3
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        // Implement custom animation logic here
    }
}

class CustomNavigationPresenter: NavigationControllerPresenter {
    let controllerAnimatedTransitioning: NavigationCoordinatorAnimatorType? = CustomNavigationAnimator()
}
```

Then create the container with the custom presenter:

```swift
let customPresenter = CustomNavigationPresenter()
let navigationContainer = NavigationControllerContainer(presenter: customPresenter)
```

## License

This project is available under the New BSD license. See the LICENSE file for more info.
