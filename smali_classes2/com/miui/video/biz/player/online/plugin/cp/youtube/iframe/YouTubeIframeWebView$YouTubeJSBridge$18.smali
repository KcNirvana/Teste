.class Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$18;
.super Ljava/lang/Object;
.source "YouTubeIframeWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;->onPlaybackRateChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$18;->this$1:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    iput-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$18;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$18;->this$1:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    iget-object v0, v0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->access$1000(Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;)Lcom/miui/video/player/service/media/IAsyncVideoView$RatePlaybackChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$18;->val$result:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :try_start_0
    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$18;->val$result:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_0
    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$18;->this$1:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    iget-object v1, v1, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->access$1000(Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;)Lcom/miui/video/player/service/media/IAsyncVideoView$RatePlaybackChangedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/miui/video/player/service/media/IAsyncVideoView$RatePlaybackChangedListener;->onRateChanged(F)V

    :cond_0
    return-void
.end method
