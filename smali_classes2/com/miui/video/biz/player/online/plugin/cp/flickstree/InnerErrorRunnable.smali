.class Lcom/miui/video/biz/player/online/plugin/cp/flickstree/InnerErrorRunnable;
.super Ljava/lang/Object;
.source "FlickVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private framework_err:I

.field private impl_err:I

.field private mOnInnerErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;


# direct methods
.method public constructor <init>(Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/InnerErrorRunnable;->mOnInnerErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    iput p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/InnerErrorRunnable;->framework_err:I

    iput p3, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/InnerErrorRunnable;->impl_err:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/InnerErrorRunnable;->mOnInnerErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/InnerErrorRunnable;->mOnInnerErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    const/4 v1, 0x0

    iget v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/InnerErrorRunnable;->framework_err:I

    iget v3, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/InnerErrorRunnable;->impl_err:I

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;->onError(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    :cond_0
    return-void
.end method
