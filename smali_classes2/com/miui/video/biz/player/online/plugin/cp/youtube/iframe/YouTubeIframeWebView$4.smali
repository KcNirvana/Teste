.class Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$4;
.super Ljava/lang/Object;
.source "YouTubeIframeWebView.java"

# interfaces
.implements Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$GetCurrentStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->isInPlaybackState(Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsInPlaybackStateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;

.field final synthetic val$callback:Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsInPlaybackStateCallback;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsInPlaybackStateCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$4;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;

    iput-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$4;->val$callback:Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsInPlaybackStateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentState(Ljava/lang/String;)V
    .locals 1

    const-string v0, "state_paused"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "state_playing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$4;->val$callback:Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsInPlaybackStateCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsInPlaybackStateCallback;->onGetIsInPlaybackState(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$4;->val$callback:Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsInPlaybackStateCallback;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsInPlaybackStateCallback;->onGetIsInPlaybackState(Z)V

    :goto_1
    return-void
.end method
