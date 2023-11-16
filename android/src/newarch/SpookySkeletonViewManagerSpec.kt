package com.spookyskeleton

import android.view.View

import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.uimanager.SimpleViewManager
import com.facebook.react.uimanager.ViewManagerDelegate
import com.facebook.react.viewmanagers.SpookySkeletonViewManagerDelegate
import com.facebook.react.viewmanagers.SpookySkeletonViewManagerInterface

abstract class SpookySkeletonViewManagerSpec<T : View> : SimpleViewManager<T>(), SpookySkeletonViewManagerInterface<T> {
  private val mDelegate: ViewManagerDelegate<T>

  init {
    mDelegate = SpookySkeletonViewManagerDelegate(this)
  }

  override fun getDelegate(): ViewManagerDelegate<T>? {
    return mDelegate
  }
}
