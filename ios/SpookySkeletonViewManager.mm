#import <React/RCTViewManager.h>
#import <React/RCTUIManager.h>
#import "RCTBridge.h"
#import "Utils.h"

@interface SpookySkeletonViewManager : RCTViewManager
@end

@implementation SpookySkeletonViewManager

RCT_EXPORT_MODULE(SpookySkeletonView)

- (UIView *)view
{
  auto view = [[UIView alloc] init];
  [view performSelector:@selector(showSkeleton)];
  return view;
}

RCT_CUSTOM_VIEW_PROPERTY(color, NSString, UIView)
{
  [view setBackgroundColor: [Utils hexStringToColor:json]];
}

@end
