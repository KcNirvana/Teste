.class Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$16;
.super Ljava/lang/Object;
.source "YouTubeIframeWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;->jsGetSupportedPlaybackRateList(Lcom/miui/video/player/service/media/IAsyncVideoView$RateSupportedPlaybackRateListCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

.field final synthetic val$callback:Lcom/miui/video/player/service/media/IAsyncVideoView$RateSupportedPlaybackRateListCallback;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;Lcom/miui/video/player/service/media/IAsyncVideoView$RateSupportedPlaybackRateListCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$16;->this$1:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    iput-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$16;->val$callback:Lcom/miui/video/player/service/media/IAsyncVideoView$RateSupportedPlaybackRateListCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$16;->this$1:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    iget-object v0, v0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;

    const-string v1, "javascript:youtubeJSBridge.getSupportedPlaybackRateList()"

    new-instance v2, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$16$1;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$16$1;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$16;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method
