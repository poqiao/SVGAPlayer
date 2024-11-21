package com.example.testapplication

import android.app.Application
import android.net.http.HttpResponseCache
import android.util.Log
import com.glidebitmappool.GlideBitmapPool
import com.opensource.svgaplayer.SVGACache
import com.opensource.svgaplayer.SVGAParser
import com.opensource.svgaplayer.utils.log.SVGALogger
import java.io.File

class BaseApplication : Application() {
    override fun onCreate() {
        super.onCreate()
        GlideBitmapPool.initialize(100 * 1024 * 1024); // 初始化 Bitmap 池，大小为 10MB
        SVGAParser.shareParser().init(this)
        SVGALogger.setLogEnabled(true)

    }
}