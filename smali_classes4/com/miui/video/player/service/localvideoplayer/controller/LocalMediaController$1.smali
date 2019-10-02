.class Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$1;
.super Ljava/lang/Object;
.source "LocalMediaController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-nez p3, :cond_0

    const-string p1, "MediaController"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSeeking from user = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {p1, p2}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->onSeekingByProgress(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$000(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mIsSeeking:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->onSeekEnd()V

    return-void
.end method
