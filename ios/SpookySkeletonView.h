// This guard prevent this file to be compiled in the old architecture.
#ifdef RCT_NEW_ARCH_ENABLED
#import <React/RCTViewComponentView.h>
#import <UIKit/UIKit.h>

#ifndef SpookySkeletonViewNativeComponent_h
#define SpookySkeletonViewNativeComponent_h

NS_ASSUME_NONNULL_BEGIN

@interface SpookySkeletonView : RCTViewComponentView
@end

NS_ASSUME_NONNULL_END

#endif /* SpookySkeletonViewNativeComponent_h */
#endif /* RCT_NEW_ARCH_ENABLED */
