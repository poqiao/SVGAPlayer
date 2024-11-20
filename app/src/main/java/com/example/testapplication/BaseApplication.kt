package com.example.testapplication

import android.app.Application
import android.net.http.HttpResponseCache
import android.util.Log
import com.opensource.svgaplayer.SVGACache
import com.opensource.svgaplayer.SVGAParser
import com.opensource.svgaplayer.utils.log.SVGALogger
import java.io.File

class BaseApplication : Application() {
    override fun onCreate() {
        super.onCreate()
        SVGAParser.shareParser().init(this)
        SVGALogger.setLogEnabled(true)

    }
}