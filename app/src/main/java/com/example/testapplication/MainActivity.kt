package com.example.testapplication

import android.app.Activity
import android.os.Bundle
import android.util.Log
import android.widget.Button
import com.opensource.svgaplayer.SVGAImageView
import com.opensource.svgaplayer.SVGAParser
import com.opensource.svgaplayer.SVGAVideoEntity
import java.net.URL

class MainActivity : Activity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.main_activity)
        val svga1 = findViewById<SVGAImageView>(R.id.svga_1)
        val svga2 = findViewById<SVGAImageView>(R.id.svga_2)
        val svga3 = findViewById<SVGAImageView>(R.id.svga_3)
        val svga4 = findViewById<SVGAImageView>(R.id.svga_4)
        val svga5 = findViewById<SVGAImageView>(R.id.svga_5)
        val svga6 = findViewById<SVGAImageView>(R.id.svga_6)
        val svga7 = findViewById<SVGAImageView>(R.id.svga_7)
        val svga8 = findViewById<SVGAImageView>(R.id.svga_8)
        val svga9 = findViewById<SVGAImageView>(R.id.svga_9)
        val svga10 = findViewById<SVGAImageView>(R.id.svga_10)
        val btn = findViewById<Button>(R.id.btn)
        val svgaParser1 = SVGAParser.shareParser()
        val svgaParser2 = SVGAParser(this)

        svgaParser1.decodeFromURL(URL("http://img.iyangyang.fun/FvJ5ZgHDily_BZ0AfhM5-NCW_Obb?imageslim"), object :
                SVGAParser.ParseCompletion {
            override fun onComplete(videoItem: SVGAVideoEntity) {
                svga1.setVideoItem(videoItem)
                svga1.startAnimation()
            }

            override fun onError() {
            }

        })
        svgaParser2.decodeFromURL(URL("http://img.iyangyang.fun/FvJ5ZgHDily_BZ0AfhM5-NCW_Obb?imageslim"), object :
                SVGAParser.ParseCompletion {
            override fun onComplete(videoItem: SVGAVideoEntity) {
                svga2.setVideoItem(videoItem)
                svga2.startAnimation()
            }

            override fun onError() {
            }

        })
        svgaParser2.decodeFromURL(URL("http://img.iyangyang.fun/FvJ5ZgHDily_BZ0AfhM5-NCW_Obb?imageslim"), object :
                SVGAParser.ParseCompletion {
            override fun onComplete(videoItem: SVGAVideoEntity) {
                svga3.setVideoItem(videoItem)
                svga3.startAnimation()
            }

            override fun onError() {
            }

        })
        svgaParser2.decodeFromURL(URL("http://img.iyangyang.fun/FvJ5ZgHDily_BZ0AfhM5-NCW_Obb?imageslim"), object :
                SVGAParser.ParseCompletion {
            override fun onComplete(videoItem: SVGAVideoEntity) {
                svga4.setVideoItem(videoItem)
                svga4.startAnimation()
            }

            override fun onError() {
            }

        })
        svgaParser2 . decodeFromURL (URL("http://img.iyangyang.fun/FvJ5ZgHDily_BZ0AfhM5-NCW_Obb?imageslim"), object :
        SVGAParser.ParseCompletion {
            override fun onComplete(videoItem: SVGAVideoEntity) {
                svga5.setVideoItem(videoItem)
                svga5.startAnimation()
            }

            override fun onError() {
            }

        })
        svgaParser2.decodeFromURL(URL("http://img.iyangyang.fun/FvJ5ZgHDily_BZ0AfhM5-NCW_Obb?imageslim"), object :
        SVGAParser.ParseCompletion {
            override fun onComplete(videoItem: SVGAVideoEntity) {
                svga6.setVideoItem(videoItem)
                svga6.startAnimation()
            }

            override fun onError() {
            }

        })
        svgaParser2.decodeFromURL(URL("http://img.iyangyang.fun/FvJ5ZgHDily_BZ0AfhM5-NCW_Obb?imageslim"), object :
        SVGAParser.ParseCompletion {
            override fun onComplete(videoItem: SVGAVideoEntity) {
                svga7.setVideoItem(videoItem)
                svga7.startAnimation()
            }

            override fun onError() {
            }

        })
        svgaParser2.decodeFromURL(URL("http://img.iyangyang.fun/FvJ5ZgHDily_BZ0AfhM5-NCW_Obb?imageslim"), object :
        SVGAParser.ParseCompletion {
            override fun onComplete(videoItem: SVGAVideoEntity) {
                svga8.setVideoItem(videoItem)
                svga8.startAnimation()
            }

            override fun onError() {
            }

        })
//        svgaParser2.decodeFromURL(URL("http://img.iyangyang.fun/FvJ5ZgHDily_BZ0AfhM5-NCW_Obb?imageslim"),object :
//                SVGAParser.ParseCompletion {
//            override fun onComplete(videoItem: SVGAVideoEntity) {
//                svga9.setVideoItem(videoItem)
//                svga9.startAnimation()
//            }
//
//            override fun onError() {
//            }
//
//        })
        btn.setOnClickListener {
            svgaParser2.decodeFromURL(URL("http://img.iyangyang.fun/FvJ5ZgHDily_BZ0AfhM5-NCW_Obb?imageslim"), object :
                    SVGAParser.ParseCompletion {
                override fun onComplete(videoItem: SVGAVideoEntity) {
                    svga9.setVideoItem(videoItem)
                    svga9.startAnimation()
                }

                override fun onError() {
                }

            })
        }

    }

}