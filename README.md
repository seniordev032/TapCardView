# SwipeCardView
UIView to detect a tap position for swipe.
If you do customize, Tinder-style card UI is a possible.

SwipeCardView is to detect a tap position as left, right, bottom.
And a flip animation is a possible.

[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Version](https://img.shields.io/cocoapods/v/SwipeCardView.svg?style=flat)](http://cocoapods.org/pods/DataSources)
[![License](https://img.shields.io/cocoapods/l/SwipeCardView.svg?style=flat)](http://cocoapods.org/pods/SwipeCardView)
 ![Swift 3.x](https://img.shields.io/badge/Swift-3.x-orange.svg)
 [![Support](https://img.shields.io/badge/support-iOS%208%2B%20-blue.svg?style=flat)](https://www.apple.com/nl/ios/)

# OverView
![](demo.gif)

# Install

### Carthage
Installing with Carthage, add it to your Cartfile.

```
github "seniordev32/SwipeCardView"
```

Do this command with terminal.

```
$ carthage update
```

Then, You need to add `SwipeCardView.framework` to your project.

### CocoaPods

For installing with CocoaPods, add it to your Podfile.

```
pod "SwipeCardView", :git => "https://github.com/seniordev32/SwipeCardView.git"
```

Do this command with terminal.

```
$ pod update
```

# Usage

SwipeCarView is devides Swipe position into left, right, bottom.
`horizontalBorder` of property decides horizontal border of Swipe position.
`verticalBorder` of property decides vertical border of Swipe position.

![](demo2.png)

## Basic
The basic usage is as follows.

```
class ViewController: UIViewController {

  override func viewDidLoad() {
      super.viewDidLoad()

      let frame = CGRect(x:100, y:100, width:300, height:400)
      let cardView = SwipeCardView(frame: frame)
      cardView.delegate = self
      view.addSubView(cardView)
    }
}

extension ViewController: CardViewDelegate {

    func tapPosition(type: SwipePosition, sender: SwipeCardView) {

        print(type)

        switch type {
        case .left:
            break
        case .right:
            break
        case .bottom:
            break
        }
    }
}
```

## Customization
If you do customize like `Example/CustomSwipeCardView`, Tinder-style card UI is a possible.

# Licence

Licence MIT
