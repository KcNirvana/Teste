.class Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager$4;
.super Ljava/lang/Object;
.source "VideoPlayTrackManager.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager$4;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimedText(Ltv/danmaku/ijk/media/player/IMediaPlayer;Ltv/danmaku/ijk/media/player/misc/ITimedText;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager$4;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-static {p1, p2}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->access$500(Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;Ltv/danmaku/ijk/media/player/misc/ITimedText;)V

    return-void
.end method
