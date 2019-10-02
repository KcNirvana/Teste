.class public Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;
.super Ljava/lang/Object;
.source "LoadHistorySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mLoadFinishSelectTrack:Ljava/lang/Runnable;

.field private mTrackManger:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

.field private mVideoEntity:Lcom/miui/video/base/database/LocalVideoEntity;


# direct methods
.method public constructor <init>(Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings$2;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings$2;-><init>(Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;->mLoadFinishSelectTrack:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;->mTrackManger:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;)Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;->mTrackManger:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    return-object p0
.end method

.method private recoveryExtraSubtitleFile(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;->mTrackManger:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    new-instance v2, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings$1;

    invoke-direct {v2, p0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;-><init>(Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;Ljava/lang/String;Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ILoadSubtitleFinishedListener;)V

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/JobRunner;->postJob(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public loadFinishAndSelectTrack()V
    .locals 6

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;->mVideoEntity:Lcom/miui/video/base/database/LocalVideoEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/database/LocalVideoEntity;->getCurrentSubtitlePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;->mTrackManger:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-virtual {v3, v2}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->selectSubtitleTrack(I)V

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;->mTrackManger:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-virtual {v3}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->getSubtitleTracks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;

    invoke-virtual {v2, v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;->setSelected(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    instance-of v2, v2, Ljava/lang/NumberFormatException;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;->mVideoEntity:Lcom/miui/video/base/database/LocalVideoEntity;

    invoke-virtual {v2}, Lcom/miui/video/base/database/LocalVideoEntity;->getSubtitleOffsetEntities()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;->mTrackManger:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-virtual {v4}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->getAllSubtitleTracks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;->mTrackManger:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-virtual {v4}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->getAllSubtitleTracks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;

    invoke-virtual {v4}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;->mTrackManger:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-virtual {v0, v3}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->selectSubtitleTrack(I)V

    invoke-virtual {v4, v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;->setSelected(Z)V

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/base/database/SubtitleOffsetEntity;

    invoke-virtual {v1}, Lcom/miui/video/base/database/SubtitleOffsetEntity;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;->mTrackManger:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-virtual {v1}, Lcom/miui/video/base/database/SubtitleOffsetEntity;->getTimeOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->setSubtitleTimeOffset(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;->mTrackManger:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->notifySubtrackReady()V

    :cond_3
    :goto_1
    return-void
.end method

.method public run()V
    .locals 4

    invoke-static {}, Lcom/miui/video/base/database/CLVDatabase;->getInstance()Lcom/miui/video/base/database/CLVDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;->mTrackManger:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->getVideoPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/CLVDatabase;->queryLocalVideoEntityByPath(Ljava/lang/String;)Lcom/miui/video/base/database/LocalVideoEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;->mVideoEntity:Lcom/miui/video/base/database/LocalVideoEntity;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;->mTrackManger:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->getAudioTracks()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;->mVideoEntity:Lcom/miui/video/base/database/LocalVideoEntity;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;->mVideoEntity:Lcom/miui/video/base/database/LocalVideoEntity;

    invoke-virtual {v1}, Lcom/miui/video/base/database/LocalVideoEntity;->getCurrentAudioTrack()I

    move-result v1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/AudioTrack;

    invoke-virtual {v0, v2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/AudioTrack;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;->mTrackManger:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->selectAudioTrack(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;->mVideoEntity:Lcom/miui/video/base/database/LocalVideoEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/database/LocalVideoEntity;->getExtraSubtitlePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;->recoveryExtraSubtitleFile(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;->loadFinishAndSelectTrack()V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/localvideoplayer/subtitle/AudioTrack;

    invoke-virtual {v0, v2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/AudioTrack;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;->mTrackManger:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->notifyAudioReady()V

    :cond_3
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/LoadHistorySettings;->mTrackManger:Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->notifySubtrackReady()V

    :goto_0
    return-void
.end method
