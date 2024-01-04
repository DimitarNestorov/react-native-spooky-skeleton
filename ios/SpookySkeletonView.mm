#ifdef RCT_NEW_ARCH_ENABLED
#import "SpookySkeletonView.h"

#import <react/renderer/components/RNSpookySkeletonViewSpec/ComponentDescriptors.h>
#import <react/renderer/components/RNSpookySkeletonViewSpec/EventEmitters.h>
#import <react/renderer/components/RNSpookySkeletonViewSpec/Props.h>
#import <react/renderer/components/RNSpookySkeletonViewSpec/RCTComponentViewHelpers.h>

#import "RCTFabricComponentsPlugins.h"
#import "Utils.h"

using namespace facebook::react;

@interface SpookySkeletonView () <RCTSpookySkeletonViewViewProtocol>

@end

@implementation SpookySkeletonView {
    UIView * _view;
}

+ (ComponentDescriptorProvider)componentDescriptorProvider
{
    return concreteComponentDescriptorProvider<SpookySkeletonViewComponentDescriptor>();
}

- (instancetype)initWithFrame:(CGRect)frame
{
  if (self = [super initWithFrame:frame]) {
    static const auto defaultProps = std::make_shared<const SpookySkeletonViewProps>();
    _props = defaultProps;

    _view = [[UIView alloc] init];

    [_view performSelector:@selector(showSkeleton)];
    
    self.contentView = _view;
  }

  return self;
}

- (void)updateProps:(Props::Shared const &)props oldProps:(Props::Shared const &)oldProps
{
    const auto &oldViewProps = *std::static_pointer_cast<SpookySkeletonViewProps const>(_props);
    const auto &newViewProps = *std::static_pointer_cast<SpookySkeletonViewProps const>(props);

    if (oldViewProps.color != newViewProps.color) {
        NSString * colorToConvert = [[NSString alloc] initWithUTF8String: newViewProps.color.c_str()];
        [_view setBackgroundColor: [Utils hexStringToColor:colorToConvert]];
    }

    [super updateProps:props oldProps:oldProps];
}

Class<RCTComponentViewProtocol> SpookySkeletonViewCls(void)
{
    return SpookySkeletonView.class;
}

@end
#endif
