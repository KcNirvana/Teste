.class Lcom/miui/video/galleryplus/player/VideoPlayTrackManager$1;
.super Ljava/lang/Object;
.source "VideoPlayTrackManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/player/VideoPlayTrackManager$1;->this$0:Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/VideoPlayTrackManager$1;->this$0:Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;

    invoke-static {v0}, Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;->access$000(Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/VideoPlayTrackManager$1;->this$0:Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;

    invoke-static {v0}, Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;->access$100(Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;)Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;->start()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/player/VideoPlayTrackManager$1;->this$0:Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;

    invoke-static {v0}, Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;->access$200(Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/galleryplus/player/VideoPlayTrackManager$1;->this$0:Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;->getSelectedSubtitleTrack()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/galleryplus/subtitle/SubtitleTrack;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/subtitle/SubtitleTrack;->getPath()Ljava/lang/String;

    return-void
.end method
