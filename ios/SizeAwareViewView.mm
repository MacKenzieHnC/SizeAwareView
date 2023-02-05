#ifdef RCT_NEW_ARCH_ENABLED
#import "SizeAwareViewView.h"

#import <react/renderer/components/RNSizeAwareViewViewSpec/ComponentDescriptors.h>
#import <react/renderer/components/RNSizeAwareViewViewSpec/EventEmitters.h>
#import <react/renderer/components/RNSizeAwareViewViewSpec/Props.h>
#import <react/renderer/components/RNSizeAwareViewViewSpec/RCTComponentViewHelpers.h>

#import "RCTFabricComponentsPlugins.h"
#import "Utils.h"

using namespace facebook::react;

@interface SizeAwareViewView () <RCTSizeAwareViewViewViewProtocol>

@end

@implementation SizeAwareViewView {
    UIView * _view;
}

+ (ComponentDescriptorProvider)componentDescriptorProvider
{
    return concreteComponentDescriptorProvider<SizeAwareViewViewComponentDescriptor>();
}

- (instancetype)initWithFrame:(CGRect)frame
{
  if (self = [super initWithFrame:frame]) {
    static const auto defaultProps = std::make_shared<const SizeAwareViewViewProps>();
    _props = defaultProps;

    _view = [[UIView alloc] init];

    self.contentView = _view;
  }

  return self;
}

- (void)updateProps:(Props::Shared const &)props oldProps:(Props::Shared const &)oldProps
{
    const auto &oldViewProps = *std::static_pointer_cast<SizeAwareViewViewProps const>(_props);
    const auto &newViewProps = *std::static_pointer_cast<SizeAwareViewViewProps const>(props);

    if (oldViewProps.color != newViewProps.color) {
        NSString * colorToConvert = [[NSString alloc] initWithUTF8String: newViewProps.color.c_str()];
        [_view setBackgroundColor: [Utils hexStringToColor:colorToConvert]];
    }

    [super updateProps:props oldProps:oldProps];
}

Class<RCTComponentViewProtocol> SizeAwareViewViewCls(void)
{
    return SizeAwareViewView.class;
}

@end
#endif
