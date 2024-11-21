package com.example.testapplication

import android.app.Application
import com.opensource.svgaplayer.SVGAParser
import com.opensource.svgaplayer.utils.log.SVGALogger

class BaseApplication : Application() {
    override fun onCreate() {
        super.onCreate()
        SVGAParser.shareParser().init(this)
        SVGALogger.setLogEnabled(true)

    }
}