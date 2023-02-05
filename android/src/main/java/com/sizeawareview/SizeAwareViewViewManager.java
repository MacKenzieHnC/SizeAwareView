package com.sizeawareview;

import android.graphics.Color;

import androidx.annotation.Nullable;

import com.facebook.react.module.annotations.ReactModule;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.annotations.ReactProp;

@ReactModule(name = SizeAwareViewViewManager.NAME)
public class SizeAwareViewViewManager extends SizeAwareViewViewManagerSpec<SizeAwareViewView> {

  public static final String NAME = "SizeAwareViewView";

  @Override
  public String getName() {
    return NAME;
  }

  @Override
  public SizeAwareViewView createViewInstance(ThemedReactContext context) {
    return new SizeAwareViewView(context);
  }

  @Override
  @ReactProp(name = "color")
  public void setColor(SizeAwareViewView view, @Nullable String color) {
    view.setBackgroundColor(Color.parseColor(color));
  }
}
