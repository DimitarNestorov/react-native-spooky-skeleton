import UIKit
import SkeletonView

extension UIView {
    @objc public func showSkeleton() {
        self.isSkeletonable = true
        self.showAnimatedGradientSkeleton()
    }
}
