.class Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager$1;
.super Ljava/lang/Object;
.source "VideoPlayTrackManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->access$000(Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->access$100(Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;)Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->start()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->access$200(Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->getSelectedSubtitleTrack()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-static {v1}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->access$300(Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;)Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->getSelectedSubtitleTrack()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-virtual {v2}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->getCurrentSubtitleTimeOffset()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;->onSubtitleTrackSelectedCallback(Ljava/lang/String;I)V

    return-void
.end method
