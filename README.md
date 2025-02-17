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

### Creating a Container with Default Presenter

```swift
let navigationContainer = NavigationControllerContainer(presenter: NavigationControllerDefaultPresenter.default)
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

## API Reference

### `NavigationControllerContainer<Presenter: NavigationControllerPresenter>`

A generic container that embeds a `UINavigationController` inside a parent `UIViewController`.

- **Properties:**
  - `presenter`: Defines the navigation behavior and transitions.
  - `flowNavigation`: The embedded `UINavigationController`.

### `NavigationControllerPresenter`

A protocol defining the presenter responsible for handling navigation animations.

- **Properties:**
  - `controllerAnimatedTransitioning`: Defines custom animated transitions (optional).

### `NavigationCoordinatorAnimatorType`

A protocol extending `UIViewControllerAnimatedTransitioning` for custom navigation transitions.

### `NavigationControllerDefaultPresenter`

A default implementation of `NavigationControllerPresenter` with no custom animations.

## License

This project is available under the New BSD license. See the LICENSE file for more info.
