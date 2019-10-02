.class Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$8;
.super Ljava/lang/Object;
.source "YouTubeIframeWebView.java"

# interfaces
.implements Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$GetCurrentStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;->jsIsPlaying(Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsPlayingCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

.field final synthetic val$callback:Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsPlayingCallback;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsPlayingCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$8;->this$1:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    iput-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$8;->val$callback:Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsPlayingCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentState(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$8;->val$callback:Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsPlayingCallback;

    if-eqz v0, :cond_1

    const-string v0, "state_playing"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$8;->val$callback:Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsPlayingCallback;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsPlayingCallback;->onGetIsPlayingResult(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$8;->val$callback:Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsPlayingCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsPlayingCallback;->onGetIsPlayingResult(Z)V

    :cond_1
    :goto_0
    return-void
.end method
