.class Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager$5;
.super Ljava/lang/Object;
.source "VideoPlayTrackManager.java"

# interfaces
.implements Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ILoadSubtitleFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->addExtraSubtitleFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager$5;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    iput-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager$5;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager$5;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->getSubtitleTracks()Ljava/util/List;

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager$5;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager$5;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->access$200(Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->selectSubtitleTrack(I)V

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager$5;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->access$600(Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$string;->lv_subtitle_manual_add_sub:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    invoke-static {}, Lcom/miui/video/base/database/CLVDatabase;->getInstance()Lcom/miui/video/base/database/CLVDatabase;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager$5;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->access$700(Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/base/database/CLVDatabase;->queryHistoryEntityByPath(Ljava/lang/String;)Lcom/miui/video/base/database/LocalVideoHistoryEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager$5;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->access$700(Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager$5;->val$path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setExtraSubtitlePath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager$5;->val$path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setCurrentSubtitlePath(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/video/base/database/CLVDatabase;->getInstance()Lcom/miui/video/base/database/CLVDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/CLVDatabase;->updatePlayPositionInfo(Lcom/miui/video/base/database/LocalVideoHistoryEntity;)V

    invoke-static {}, Lcom/miui/video/base/database/CLVDatabase;->getInstance()Lcom/miui/video/base/database/CLVDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/CLVDatabase;->saveLocalHistory(Lcom/miui/video/base/database/LocalVideoHistoryEntity;)V

    :cond_0
    return-void
.end method
