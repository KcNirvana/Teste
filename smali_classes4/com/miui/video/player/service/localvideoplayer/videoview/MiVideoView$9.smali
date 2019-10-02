.class Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$9;
.super Ljava/lang/Object;
.source "MiVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->asyncSaveHistory(Landroid/net/Uri;ZIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

.field final synthetic val$audioTrack:I

.field final synthetic val$duration:I

.field final synthetic val$playCompleted:Z

.field final synthetic val$position:I

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;Landroid/net/Uri;ZIII)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$9;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    iput-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$9;->val$uri:Landroid/net/Uri;

    iput-boolean p3, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$9;->val$playCompleted:Z

    iput p4, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$9;->val$duration:I

    iput p5, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$9;->val$position:I

    iput p6, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$9;->val$audioTrack:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$9;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$9;->val$uri:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$9;->val$playCompleted:Z

    iget v3, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$9;->val$duration:I

    iget v4, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$9;->val$position:I

    iget v5, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$9;->val$audioTrack:I

    invoke-virtual/range {v0 .. v5}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->onSavePlayHistory(Landroid/net/Uri;ZIII)V

    return-void
.end method
