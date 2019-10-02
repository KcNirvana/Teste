.class Lcom/miui/video/galleryplus/player/VideoPlayTrackManager$3;
.super Ljava/lang/Object;
.source "VideoPlayTrackManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;->notifyAudioReady()V
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

    iput-object p1, p0, Lcom/miui/video/galleryplus/player/VideoPlayTrackManager$3;->this$0:Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/player/VideoPlayTrackManager$3;->this$0:Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/player/VideoPlayTrackManager;->selectAudioTrack(I)V

    return-void
.end method
