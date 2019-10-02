.class Lcom/miui/video/galleryplus/player/VideoPlayTrackManager$2;
.super Ljava/lang/Object;
.source "VideoPlayTrackManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;->notifySubtrackReady()V
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

    iput-object p1, p0, Lcom/miui/video/galleryplus/player/VideoPlayTrackManager$2;->this$0:Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/VideoPlayTrackManager$2;->this$0:Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;

    invoke-static {v0}, Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;->access$300(Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;)Lcom/miui/video/galleryplus/subtitle/interfaces/ISubtitleTrackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/VideoPlayTrackManager$2;->this$0:Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;

    invoke-static {v0}, Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;->access$300(Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;)Lcom/miui/video/galleryplus/subtitle/interfaces/ISubtitleTrackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/galleryplus/player/VideoPlayTrackManager$2;->this$0:Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;->getSubtitleTracks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/video/galleryplus/subtitle/interfaces/ISubtitleTrackListener;->onSubTrackLoaded(Ljava/util/List;)V

    :cond_0
    return-void
.end method
