.class Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings$2;
.super Ljava/lang/Object;
.source "LoadHistorySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;
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

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;->loadFinishAndSelectTrack()V

    return-void
.end method
