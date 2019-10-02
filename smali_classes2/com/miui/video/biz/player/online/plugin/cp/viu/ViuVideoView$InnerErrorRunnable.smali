.class Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$InnerErrorRunnable;
.super Ljava/lang/Object;
.source "ViuVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerErrorRunnable"
.end annotation


# instance fields
.field private framework_err:I

.field private impl_err:I

.field private mOnInnerErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

.field final synthetic this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;


# direct methods
.method public constructor <init>(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;II)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$InnerErrorRunnable;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$InnerErrorRunnable;->mOnInnerErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    iput p3, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$InnerErrorRunnable;->framework_err:I

    iput p4, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$InnerErrorRunnable;->impl_err:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$InnerErrorRunnable;->mOnInnerErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$InnerErrorRunnable;->mOnInnerErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    const/4 v1, 0x0

    iget v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$InnerErrorRunnable;->framework_err:I

    iget v3, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$InnerErrorRunnable;->impl_err:I

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;->onError(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$InnerErrorRunnable;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;

    iget v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$InnerErrorRunnable;->framework_err:I

    iget v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$InnerErrorRunnable;->impl_err:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->onErrorStatsEvent(II)V

    return-void
.end method
