package com.spookyskeleton

import android.graphics.Color
import com.facebook.react.module.annotations.ReactModule
import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.uimanager.ThemedReactContext
import com.facebook.react.uimanager.annotations.ReactProp

@ReactModule(name = SpookySkeletonViewManager.NAME)
class SpookySkeletonViewManager :
  SpookySkeletonViewManagerSpec<SpookySkeletonView>() {
  override fun getName(): String {
    return NAME
  }

  public override fun createViewInstance(context: ThemedReactContext): SpookySkeletonView {
    return SpookySkeletonView(context)
  }

  @ReactProp(name = "color")
  override fun setColor(view: SpookySkeletonView?, color: String?) {
    view?.setBackgroundColor(Color.parseColor(color))
  }

  companion object {
    const val NAME = "SpookySkeletonView"
  }
}
