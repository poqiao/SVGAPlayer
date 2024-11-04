# To enable ProGuard in your project, edit project.properties
# to define the proguard.config property as described in that file.
#
# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in ${sdk.dir}/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the ProGuard
# include property in project.properties.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in D:\Android\sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles

#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
# To enable ProGuard in your project, edit project.properties
# to define the proguard.config property as described in that file.
#
# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in ${sdk.dir}/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the ProGuard
# include property in project.properties.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}
#-keep class packagename.** {*;}
-optimizationpasses 5
-dontusemixedcaseclassnames
-dontskipnonpubliclibraryclasses
-dontpreverify
-verbose
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*

# 保留行号
-keepattributes SourceFile,LineNumberTable

#-dontwarn  #//dontwarn去掉警告
#-dontskipnonpubliclibraryclassmembers
#-keep public class * extends android.app.Fragment
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
#-keep public class * extends android.preference.Preference
#-keep public class * extends android.support.v4.**
-keep public class com.android.vending.licensing.ILicensingService
-keepclasseswithmembernames class * {
    native <methods>;
}
#-keepclasseswithmembernames class * {
#    public <init>(android.content.Context, android.util.AttributeSet);
#}
#-keepclasseswithmembernames class * {
#    public <init>(android.content.Context, android.util.AttributeSet, int);
#}
#----------------enum-----------------

#----------------Parcelable-----------------
-keepclassmembers class * implements android.os.Parcelable {
    static ** CREATOR;
    <fields>;
    <methods>;
}

-keep class * implements java.io.Serializable {
    *;
}
##---------------Begin: proguard configuration for Gson ----------
# Gson specific classes
-dontwarn sun.misc.**
#-keep class com.google.gson.stream.** { *; }

# Application classes that will be serialized/deserialized over Gson
-keep class com.google.gson.examples.android.model.** { *; }

# Prevent proguard from stripping interface information from TypeAdapterFactory,
# JsonSerializer, JsonDeserializer instances (so they can be used in @JsonAdapter)
-keep class * implements com.google.gson.TypeAdapterFactory
-keep class * implements com.google.gson.JsonSerializer
-keep class * implements com.google.gson.JsonDeserializer

-keepattributes Signature
-keepattributes *Annotation*

#----------------android-----------------
-dontwarn android.**
-keep class android.** { *;}
#----------------v4-----------------
-dontwarn android.support.v4.**
-keep class android.support.v4.** { *; }
#----------------v7-----------------
-dontwarn android.support.v7.**
-keep class android.support.v7.** { *;}

#----------------EventBus事件巴士-----------------
-keepclassmembers class ** {
    @org.greenrobot.eventbus.Subscribe <methods>;
}
-keep enum org.greenrobot.eventbus.ThreadMode { *; }

# Only required if you use AsyncExecutor
-keepclassmembers class * extends org.greenrobot.eventbus.util.ThrowableFailureEvent {
    <init>(Java.lang.Throwable);
}


#-------------云信相关的混淆配置------------
-dontwarn com.netease.nim.**
-keep class com.netease.nim.** {*;}

-dontwarn com.netease.nimlib.**
-keep class com.netease.nimlib.** {*;}

-dontwarn com.netease.share.**
-keep class com.netease.share.** {*;}

-dontwarn com.netease.mobsec.**
-keep class com.netease.mobsec.** {*;}

#如果你使用全文检索插件，需要加入
-dontwarn org.apache.lucene.**
-keep class org.apache.lucene.** {*;}



#如果你开启数据库功能，需要加入
-keep class net.sqlcipher.** {*;}
#-------------云信相关的混淆配置------------


#-------------TakePhoto的混淆配置------------
-keep class com.jph.takephoto.** { *; }
-dontwarn com.jph.takephoto.**

-keep class com.darsh.multipleimageselect.** { *; }
-dontwarn com.darsh.multipleimageselect.**

-keep class com.soundcloud.android.crop.** { *; }
-dontwarn com.soundcloud.android.crop.**

#-------------TakePhoto的混淆配置------------



#腾讯崩溃收集
-dontwarn com.tencent.bugly.**
-keep public class com.tencent.bugly.**{*;}
-keep class android.support.**{*;}

# 微信 MMKV 混淆规则
-keepclasseswithmembers,includedescriptorclasses class com.tencent.mmkv.** {
    native <methods>;
    long nativeHandle;
    private static *** onMMKVCRCCheckFail(***);
    private static *** onMMKVFileLengthError(***);
    private static *** mmkvLogImp(...);
    private static *** onContentChangedByOuterProcess(***);
}
# glide4.0
-keep public class * implements com.bumptech.glide.module.GlideModule
-keep public class * extends com.bumptech.glide.module.AppGlideModule
-keep public enum com.bumptech.glide.load.resource.bitmap.ImageHeaderParser$** {
  **[] $VALUES;
  public *;
}
# for DexGuard only
#-keepresourcexmlelements manifest/application/meta-data@value=GlideModule

# BaseAdapter
-keep class com.chad.library.adapter.** {
*;
}
-keep public class * extends com.chad.library.adapter.base.BaseQuickAdapter
-keep public class * extends com.chad.library.adapter.base.BaseViewHolder
-keepclassmembers  class **$** extends com.chad.library.adapter.base.BaseViewHolder {
     <init>(...);
}


# Ping++ 混淆过滤
-dontwarn com.pingplusplus.**
-keep class com.pingplusplus.** {*;}
# 支付宝混淆过滤
-dontwarn com.alipay.**
-keep class com.alipay.** {*;}
# 微信或QQ钱包混淆过滤
-dontwarn  com.tencent.**
-keep class com.tencent.** {*;}

# 银联支付混淆过滤
#-dontwarn  com.unionpay.**
#-keep class com.unionpay.** {*;}
#
## 招行一网通混淆过滤
#-keepclasseswithmembers class cmb.pb.util.CMBKeyboardFunc {
#    public <init>(android.app.Activity);
#    public boolean HandleUrlCall(android.webkit.WebView,java.lang.String);
#    public void callKeyBoardActivity();
#}

# 内部WebView混淆过滤
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}

-keep class org.json.** {*;}

-dontwarn com.qykj.xyy.base.bindadapter.**
-keep class com.rychat.tebal.cggin.base.bindadapter.** {*;}
# 网络加载
-dontwarn com.tongdaxing.xchat_core.**
-keep class com.qy.xchat_core.** {*;}

-keepclassmembers class * {
    @com.qy.xchat_framework.coremanager.CoreEvent <methods>;
}

-keep class com.baidu.bottom.** { *; }
-keep class com.baidu.kirin.** { *; }
-keep class com.baidu.mobstat.** { *; }
-keep class io.agora.** { *; }

# 七牛
-keep class com.qiniu.**{*;}
-keep class com.qiniu.**{public <init>();}
-ignorewarnings

# shareSdk
-keep class cn.sharesdk.**{*;}
-keep class com.sina.**{*;}
-keep class **.R$* {*;}
-keep class **.R{*;}
-keep class com.mob.**{*;}
-dontwarn com.mob.**
-dontwarn cn.sharesdk.**
-dontwarn **.R$*

# fastjson
-dontwarn com.alibaba.fastjson.**
-keep class com.alibaba.fastjson.**{*; }

# retrofit2
# Platform calls Class.forName on types which do not exist on Android to determine platform.
-dontnote retrofit2.Platform
# Platform used when running on Java 8 VMs. Will not be used at runtime.
-dontwarn retrofit2.Platform$Java8
# Retain declared checked exceptions for use by a Proxy instance.
-keepattributes Exceptions

# okhttp3
-dontwarn okhttp3.**
#  okio
-dontwarn okio.**
# A resource is loaded with a relative path so the package of this class must be preserved.
-keepnames class okhttp3.internal.publicsuffix.PublicSuffixDatabase

#--------------------------------- JPush 极光推送   专有配置区---------------------------------
# JPush 极光推送
-dontoptimize
-dontpreverify

#厂商
#小米
-dontwarn com.xiaomi.push.**
-keep class com.xiaomi.push.** { *; }

#华为
-keepattributes *Annotation*
-keepattributes Exceptions
-keepattributes InnerClasses
-keepattributes Signature
-keepattributes SourceFile,LineNumberTable
-keep class com.hianalytics.android.**{*;}
-keep class com.huawei.updatesdk.**{*;}
-keep class com.huawei.hms.**{*;}

#oppo
-dontwarn com.coloros.mcsdk.**
-keep class com.coloros.mcsdk.** { *; }
-dontwarn com.heytap.**
-keep class com.heytap.** { *; }
-dontwarn com.mcs.**
-keep class com.mcs.** { *; }

#vivo
-dontwarn com.vivo.push.**
-keep class com.vivo.push.**{*; }
-keep class com.vivo.vms.**{*; }

#--------------------------------- JPush 极光推送   专有配置区---------------------------------
-dontwarn cn.jpush.**
-keep class cn.jpush.** { *; }
-keep class * extends cn.jpush.android.helpers.JPushMessageReceiver { *; }

-dontwarn cn.jiguang.**
-keep class cn.jiguang.** { *; }



#网易图片验证码
-keepattributes *Annotation*
-keep public class com.netease.nis.captcha.**{*;}

-keep public class android.webkit.**

-keepattributes SetJavaScriptEnabled
-keepattributes JavascriptInterface

-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}

# 安全检测库的bean不混淆
-dontwarn com.hncxco.safetychecker.bean.**
-keep class com.hncxco.safetychecker.bean.**{*;}

-dontwarn com.tongdaxing.xchat_framework.im.**
-keep class com.qy.xchat_framework.im.**{*;}

# 即构混淆代码
-keep class com.zego.**{*;}


# SVGAPlayer
-keep class com.squareup.wire.** { *; }
-keep class com.opensource.svgaplayer.proto.** { *; }


# hjq.toast
-keep class com.hjq.toast.** {*;}

#--------------------------------- linkedme 专有配置区---------------------------------

#--------------------------------- 现在支付 专有配置区---------------------------------
-keep class com.alipay.android.app.IAlixPay{*;}
-keep class com.alipay.android.app.IAlixPay$Stub{*;}
-keep class com.alipay.android.app.IRemoteServiceCallback{*;}
-keep class com.alipay.android.app.IRemoteServiceCallback$Stub{*;}
-keep class com.alipay.sdk.app.PayTask{ public *;}
-keep class com.alipay.sdk.auth.AlipaySDK{ public *;}
-keep class com.alipay.sdk.auth.APAuthInfo{ public *;}
-keep class com.alipay.mobilesecuritysdk.*
-keep class com.ut.*
-keep class cn.gov.pbc.tsm.*{*;}
-keep class com.UCMobile.PayPlugin.*{*;}
-keep class com.unionpay.*{*;}
-dontwarn com.unionpay.**

-keep class com.ipaynow.plugin.api.IpaynowPlugin{
    <fields>;
    <methods>;
}
-keep class com.ipaynow.plugin.manager.route.dto.RequestParams{
    <fields>;
    <methods>;
}
-keep class com.ipaynow.plugin.manager.route.dto.ResponseParams{
    <fields>;
    <methods>;
}
-keep class com.ipaynow.plugin.manager.route.impl.ReceivePayResult{
    <fields>;
    <methods>;
}
-keep class com.alipay.android.app.IAlixPay {
    <fields>;
    <methods>;
}
-keep class com.ipaynow.plugin.utils.StringUtils{
    <fields>;
    <methods>;
}
-keep class com.alipay.android.app.IRemoteServiceCallback {
    <fields>;
    <methods>;
}

-keep class com.ipaynow.plugin.utils.NativeUtils{
   <fields>;
   <methods>;
}
#--------------------------------- 现在支付 专有配置区---------------------------------

#--------------------------------- 支付宝身份验证 专有配置区---------------------------------
-keepclassmembers class ** {
    @com.squareup.otto.Subscribe public *;
    @com.squareup.otto.Produce public *;
}

-keep public class com.alipay.mobile.security.zim.api.**{
    public <fields>;
    public <methods>;
}

-keep class com.alipay.mobile.security.zim.biz.ZIMFacadeBuilder {
  !private <fields>;
   !private <methods>;
}

-keep class com.alipay.android.phone.mobilecommon.logger.AlipayMonitorLogService {
    !private <fields>;
    !private <methods>;
}

-keep class com.alipay.android.phone.mobilecommon.rpc.AlipayRpcService {
    !private <fields>;
    !private <methods>;
}

-keep class com.alipay.android.phone.mobilecommon.apsecurity.AlipayApSecurityService {
    !private <fields>;
    !private <methods>;
}

-keep class com.alipay.zoloz.toyger.bean.ToygerMetaInfo {
    !private <fields>;
    !private <methods>;
}

-keep class com.alipay.zoloz.toyger.algorithm.** { *; }

-keep class com.alipay.zoloz.toyger.blob.** {
    !private <fields>;
    !private <methods>;
}

-keep class com.alipay.zoloz.toyger.face.** {
    !private <fields>;
    !private <methods>;
}

-keep class com.alipay.zoloz.hardware.camera.impl.** {
    !private <fields>;
    !private <methods>;
}


-keep public class com.alipay.mobile.security.zim.plugin.**{
    public <fields>;
    public <methods>;
}

-keep class * extends com.alipay.mobile.security.zim.gw.BaseGwService{
    !private <fields>;
    !private <methods>;
}

-keep class * extends com.alipay.mobile.security.bio.service.BioMetaInfo{
    !private <fields>;
    !private <methods>;
}

-keep class com.alipay.zoloz.toyger.workspace.FaceRemoteConfig{
    *;
}

-keep public class com.alipay.zoloz.toyger.**{
    *;
}
-keep public class com.alipay.mobile.security.zim.gw.**{
    *;
}
#--------------------------------- 支付宝身份验证 专有配置区---------------------------------


#--------------------------------- LiveEventBus 专有配置区---------------------------------
-dontwarn com.jeremyliao.liveeventbus.**
-keep class com.jeremyliao.liveeventbus.** { *; }
-keep class androidx.lifecycle.** { *; }
-keep class androidx.arch.core.** { *; }
#--------------------------------- LiveEventBus 专有配置区---------------------------------


#--------------------------------- 热云 专有配置区---------------------------------
###针对移动智能终端补充设备标识体系统一调用SDK###
-dontwarn org.bouncycastle.**
-keep class org.bouncycastle.** {*;}
-keep class XI.CA.XI.**{*;}
-keep class XI.K0.XI.**{*;}
-keep class XI.XI.K0.**{*;}
-keep class XI.xo.XI.XI.**{*;}
-keep class com.asus.msa.SupplementaryDID.**{*;}
-keep class com.asus.msa.sdid.**{*;}
-keep class com.bun.lib.**{*;}
-keep class com.bun.miitmdid.**{*;}
-keep class com.huawei.hms.ads.identifier.**{*;}
-keep class com.samsung.android.deviceidservice.**{*;}
-keep class com.zui.opendeviceidlibrary.**{*;}
-keep class org.json.**{*;}
-keep public class com.netease.nis.sdkwrapper.Utils {public <methods>;}
-dontwarn com.reyun.tracking.**
-keep class com.reyun.tracking.** {*;}
#--------------------------------- 热云 专有配置区---------------------------------




#--------------------------------- 百度人脸识别 专有配置区---------------------------------

-keep class tv.danmaku.ijk.** { *; }
-dontwarn tv.danmaku.ijk.**

-keep public class * extends android.view.View{
    *** get*();
    void set*(***);
    public <init>(android.content.Context);
    public <init>(android.content.Context, java.lang.Boolean);
    public <init>(android.content.Context, android.util.AttributeSet);
    public <init>(android.content.Context, android.util.AttributeSet, int);
}

-keep class com.tencent.mm.opensdk.** {*;}
-keep class com.tencent.wxop.** {*;}
-keep class com.tencent.mm.sdk.** {*;}

-keep class com.ishumei.** {*;}

-ignorewarnings

#关闭某个运营商功能时编译通不过可以加上下面的代码
#-dontpreverify

# for SecVerify
-keep class com.mob.**{*;}
# for CTCC
-keep class cn.com.chinatelecom.account.**{*;}
-keep class cn.com.chinatelecom.account.api.ClientUtils{*;}
# for CUCC
-keep class com.sdk.**{*;}
# for CMCC
-keep class com.cmic.sso.sdk.**{*;}
-keep class com.unicom.xiaowo.account.shield.**{*;}

#图片选择器
-keep class com.luck.picture.lib.** { *; }
 #如果引入了Ucrop库请添加混淆
-dontwarn com.yalantis.ucrop**
-keep class com.yalantis.ucrop** { *; }
-keep interface com.yalantis.ucrop** { *; }

#声网小游戏混淆

-keep class com.cocos.game.**{ *; }
-keep class tech.sud.runtime.**{ *; }
-keep class tech.sud.mgp.core.**{ *; }
-keep class com.unity3d.** { *; }
-keep class tech.sud.mgp.engine.hub.real.unity.running.UnityGameCustomCommandHandler { *; }
# java.nio.file.* usage which cannot be used at runtime. Animal sniffer annotation.
-dontwarn okio.Okio
# JDK 7-only method which is @hide on Android. Animal sniffer annotation.
-dontwarn okio.DeflaterSink

-keep class tech.sud.mgp.asr.base.BaseRealSudASRImpl { *; }
-keep class tech.sud.mgp.asr.base.model.InitASRParamModel { *; }
-keep class tech.sud.mgp.base.ThreadUtils { *; }
-keep class tech.sud.mgp.logger.SudLogger { *; }
-keep class tech.sud.mgp.asr.base.utils.ByteArrayBlockingQueue { *; }

-keep class tech.sud.runtime.launcherInterface.INativePlayer {
    *;
}
-keep class tech.sud.runtime.launcherInterface.INativePlayer$INativeInterface {
    *;
}
-keep class tech.sud.** { *; }
-keep class com.unity3d.** { *; }
-keep class tech.unity3d.** { *; }
-keep class tech.sud.mgp.engine.hub.real.unity.running.UnityGameCustomCommandHandler { *; }

-keep class bitter.jnibridge.* { *; }
-keep class com.unity3d.player.* { *; }
-keep interface com.unity3d.player.IUnityPlayerLifecycleEvents { *; }
-keep class org.fmod.* { *; }
-keep class com.google.androidgamesdk.ChoreographerCallback { *; }
-keep class com.google.androidgamesdk.SwappyDisplayManager { *; }
-ignorewarnings

-keep class org.libpag.** {*;}
-keep class androidx.exifinterface.** {*;}
-keep class com.tencent.mm.opensdk.** {*;}
-keep class com.tencent.mm.sdk.** {*;}
-keep class com.tencent.wxop.** {*;}
-dontwarn com.unionpay.**
-keep class com.unionpay.** {*;}
-dontwarn com.huawei.**
-keep class com.huawei.** {*;}
-keep class com.sand.cashier.StartPay {*;}

-keep class com.tencent.** { *; }

#google 登录
-if class androidx.credentials.CredentialManager
-keep class androidx.credentials.playservices.** {
  *;
}
-keep class **.zego.**{*;}

-keep class butterknife.** { *; }
-keep interface butterknife.Unbinder { *; }
