.class Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$16$1;
.super Ljava/lang/Object;
.source "YouTubeIframeWebView.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$16;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$16;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$16$1;->this$2:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$16$1;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$16$1;->this$2:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$16;

    iget-object v0, v0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$16;->this$1:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    invoke-static {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;->access$200(Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "YouTubeIframeWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveValue  Get getSupportedResolutions : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$16$1;->this$2:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$16;

    iget-object v0, v0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$16;->val$callback:Lcom/miui/video/player/service/media/IAsyncVideoView$RateSupportedPlaybackRateListCallback;

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$16$1;->this$2:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$16;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$16;->val$callback:Lcom/miui/video/player/service/media/IAsyncVideoView$RateSupportedPlaybackRateListCallback;

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/media/IAsyncVideoView$RateSupportedPlaybackRateListCallback;->onRateList(Ljava/util/List;)V

    :cond_2
    return-void
.end method
