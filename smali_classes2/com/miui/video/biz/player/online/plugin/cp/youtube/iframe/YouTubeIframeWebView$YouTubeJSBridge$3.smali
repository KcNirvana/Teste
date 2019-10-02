.class Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$3;
.super Ljava/lang/Object;
.source "YouTubeIframeWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;->jsSeekTo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

.field final synthetic val$positionSec:I


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$3;->this$1:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    iput p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$3;->val$positionSec:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$3;->this$1:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;

    iget-object v0, v0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:youtubeJSBridge.seekTo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$3;->val$positionSec:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$3$1;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$3$1;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView$YouTubeJSBridge$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method
