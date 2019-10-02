.class public Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;
.super Ljava/lang/Object;
.source "TrackSaveManager.java"

# interfaces
.implements Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/ITrackSelectedListener;


# instance fields
.field private videoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;->videoPath:Ljava/lang/String;

    return-void
.end method

.method private buildSubtitleOffsetEntityList(Lcom/miui/video/base/database/LocalVideoEntity;Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/database/LocalVideoEntity;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/SubtitleOffsetEntity;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/miui/video/base/database/LocalVideoEntity;->getSubtitleOffsetEntities()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/base/database/SubtitleOffsetEntity;

    invoke-virtual {v2}, Lcom/miui/video/base/database/SubtitleOffsetEntity;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p3}, Lcom/miui/video/base/database/SubtitleOffsetEntity;->setTimeOffset(I)Lcom/miui/video/base/database/SubtitleOffsetEntity;

    move-object v0, v2

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Lcom/miui/video/base/database/SubtitleOffsetEntity;

    invoke-direct {v0}, Lcom/miui/video/base/database/SubtitleOffsetEntity;-><init>()V

    invoke-virtual {v0, p2}, Lcom/miui/video/base/database/SubtitleOffsetEntity;->setPath(Ljava/lang/String;)Lcom/miui/video/base/database/SubtitleOffsetEntity;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/miui/video/base/database/SubtitleOffsetEntity;->setTimeOffset(I)Lcom/miui/video/base/database/SubtitleOffsetEntity;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object p1
.end method


# virtual methods
.method public onAudioTrackSelectedCallback(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;->videoPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/video/framework/utils/CipherUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/miui/video/base/database/CLVDatabase;->getInstance()Lcom/miui/video/base/database/CLVDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;->videoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/CLVDatabase;->queryLocalVideoEntityByPath(Ljava/lang/String;)Lcom/miui/video/base/database/LocalVideoEntity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/LocalVideoEntity;->setCurrentAudioTrack(I)V

    invoke-static {v0}, Lcom/miui/video/base/database/CLVDatabase;->localVideoEntityToVideoHistoryEntity(Lcom/miui/video/base/database/LocalVideoEntity;)Lcom/miui/video/base/database/LocalVideoHistoryEntity;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/PlayHistoryManagerThread;->executeSaveHistory(Lcom/miui/video/base/database/LocalVideoHistoryEntity;)V

    return-void
.end method

.method public onSubtitleTrackSelectedCallback(Ljava/lang/String;I)V
    .locals 2

    invoke-static {}, Lcom/miui/video/base/database/CLVDatabase;->getInstance()Lcom/miui/video/base/database/CLVDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;->videoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/CLVDatabase;->queryLocalVideoEntityByPath(Ljava/lang/String;)Lcom/miui/video/base/database/LocalVideoEntity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/LocalVideoEntity;->setCurrentSubtitlePath(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;->buildSubtitleOffsetEntityList(Lcom/miui/video/base/database/LocalVideoEntity;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/LocalVideoEntity;->setSubtitleOffsetEntities(Ljava/util/List;)V

    invoke-static {v0}, Lcom/miui/video/base/database/CLVDatabase;->localVideoEntityToVideoHistoryEntity(Lcom/miui/video/base/database/LocalVideoEntity;)Lcom/miui/video/base/database/LocalVideoHistoryEntity;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/PlayHistoryManagerThread;->executeSaveHistory(Lcom/miui/video/base/database/LocalVideoHistoryEntity;)V

    return-void
.end method
