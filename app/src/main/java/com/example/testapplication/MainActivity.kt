package com.example.testapplication

import android.app.Activity
import android.os.Bundle
import android.os.PersistableBundle
import android.util.Log
import android.widget.Button
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import com.example.testapplication.ui.theme.TestApplicationTheme
import com.opensource.svgaplayer.SVGADrawable
import com.opensource.svgaplayer.SVGADynamicEntity
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
        val btn = findViewById<Button>(R.id.btn)
        val svgaParser1 = SVGAParser.shareParser()
        val svgaParser2 = SVGAParser(this)
        if (svgaParser1 === svgaParser2) {
            Log.d("SVGAParser", "AAAAAAA")
        }
        Log.d("SVGAParser", "BBBBBBBBBB")
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
//        svgaParser2.decodeFromURL(URL("http://img.iyangyang.fun/FvJ5ZgHDily_BZ0AfhM5-NCW_Obb?imageslim"), object :
//                SVGAParser.ParseCompletion {
//            override fun onComplete(videoItem: SVGAVideoEntity) {
//                svga3.setVideoItem(videoItem)
//                svga3.startAnimation()
//            }
//
//            override fun onError() {
//            }
//
//        })
//        svgaParser2.decodeFromURL(URL("http://img.iyangyang.fun/FvJ5ZgHDily_BZ0AfhM5-NCW_Obb?imageslim"), object :
//                SVGAParser.ParseCompletion {
//            override fun onComplete(videoItem: SVGAVideoEntity) {
//                svga2.setVideoItem(videoItem)
//                svga2.startAnimation()
//            }
//
//            override fun onError() {
//            }
//
//        })
//        svgaParser2 . decodeFromURL (URL("http://img.iyangyang.fun/FvJ5ZgHDily_BZ0AfhM5-NCW_Obb?imageslim"), object :
//        SVGAParser.ParseCompletion {
//            override fun onComplete(videoItem: SVGAVideoEntity) {
//                svga2.setVideoItem(videoItem)
//                svga2.startAnimation()
//            }
//
//            override fun onError() {
//            }
//
//        })
//        svgaParser2.decodeFromURL(URL("http://img.iyangyang.fun/FvJ5ZgHDily_BZ0AfhM5-NCW_Obb?imageslim"), object :
//        SVGAParser.ParseCompletion {
//            override fun onComplete(videoItem: SVGAVideoEntity) {
//                svga2.setVideoItem(videoItem)
//                svga2.startAnimation()
//            }
//
//            override fun onError() {
//            }
//
//        })
//        svgaParser2.decodeFromURL(URL("http://img.iyangyang.fun/FvJ5ZgHDily_BZ0AfhM5-NCW_Obb?imageslim"), object :
//        SVGAParser.ParseCompletion {
//            override fun onComplete(videoItem: SVGAVideoEntity) {
//                svga2.setVideoItem(videoItem)
//                svga2.startAnimation()
//            }
//
//            override fun onError() {
//            }
//
//        })
//        svgaParser2.decodeFromURL(URL("http://img.iyangyang.fun/FvJ5ZgHDily_BZ0AfhM5-NCW_Obb?imageslim"), object :
//        SVGAParser.ParseCompletion {
//            override fun onComplete(videoItem: SVGAVideoEntity) {
//                svga2.setVideoItem(videoItem)
//                svga2.startAnimation()
//            }
//
//            override fun onError() {
//            }
//
//        })
//        svgaParser2.decodeFromURL(URL("http://img.iyangyang.fun/FvJ5ZgHDily_BZ0AfhM5-NCW_Obb?imageslim"),object :
//                SVGAParser.ParseCompletion {
//            override fun onComplete(videoItem: SVGAVideoEntity) {
//                svga2.setVideoItem(videoItem)
//                svga2.startAnimation()
//            }
//
//            override fun onError() {
//            }
//
//        })
//        svgaParser2.decodeFromURL(URL("http://img.iyangyang.fun/FvJ5ZgHDily_BZ0AfhM5-NCW_Obb?imageslim"),object :
//                SVGAParser.ParseCompletion {
//            override fun onComplete(videoItem: SVGAVideoEntity) {
//                svga2.setVideoItem(videoItem)
//                svga2.startAnimation()
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
                    svga2.setVideoItem(videoItem)
                    svga2.startAnimation()
                }

                override fun onError() {
                }

            })
        }

    }

}