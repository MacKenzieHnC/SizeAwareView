// This guard prevent this file to be compiled in the old architecture.
#ifdef RCT_NEW_ARCH_ENABLED
#import <React/RCTViewComponentView.h>
#import <UIKit/UIKit.h>

#ifndef SizeAwareViewViewNativeComponent_h
#define SizeAwareViewViewNativeComponent_h

NS_ASSUME_NONNULL_BEGIN

@interface SizeAwareViewView : RCTViewComponentView
@end

NS_ASSUME_NONNULL_END

#endif /* SizeAwareViewViewNativeComponent_h */
#endif /* RCT_NEW_ARCH_ENABLED */
