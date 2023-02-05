package com.sizeawareview;

import android.view.View;

import androidx.annotation.Nullable;

import com.facebook.react.uimanager.SimpleViewManager;
import com.facebook.react.uimanager.ViewManagerDelegate;
import com.facebook.react.viewmanagers.SizeAwareViewViewManagerDelegate;
import com.facebook.react.viewmanagers.SizeAwareViewViewManagerInterface;

public abstract class SizeAwareViewViewManagerSpec<T extends View> extends SimpleViewManager<T> implements SizeAwareViewViewManagerInterface<T> {
  private final ViewManagerDelegate<T> mDelegate;

  public SizeAwareViewViewManagerSpec() {
    mDelegate = new SizeAwareViewViewManagerDelegate(this);
  }

  @Nullable
  @Override
  protected ViewManagerDelegate<T> getDelegate() {
    return mDelegate;
  }
}
