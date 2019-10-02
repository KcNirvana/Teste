.class Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings$1;
.super Ljava/lang/Object;
.source "LoadHistorySettings.java"

# interfaces
.implements Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ILoadSubtitleFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;->recoveryExtraSubtitleFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;->access$000(Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;)Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->getSubtitleTracks()Ljava/util/List;

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;->loadFinishAndSelectTrack()V

    :cond_0
    return-void
.end method
