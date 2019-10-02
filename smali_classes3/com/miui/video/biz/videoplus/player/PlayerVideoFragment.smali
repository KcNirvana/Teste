.class public Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;
.super Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;
.source "PlayerVideoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;


# static fields
.field public static final ACTION_PLAY_STATE_CHANGE:Ljava/lang/String; = "VIDEO_PLUS_PLAY_STATE_CHANGE"

.field public static final STATE_CRASH:I = 0x3

.field public static final STATE_NONE:I = -0x1

.field public static final STATE_PAUSED:I = 0x2

.field public static final STATE_PLAYING:I = 0x1

.field public static final STATE_PREVIEW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PlayerVideoFragment"


# instance fields
.field private mAutoPlay:Z

.field private mBitmapCover:Landroid/graphics/Bitmap;

.field private mBrightCount:F

.field private mBtnTogglePlay:Landroid/widget/ImageView;

.field private mCurrentBright:I

.field private mCurrentState:I

.field private mCurrentVolume:I

.field private mIsContinuePlay:Z

.field private mIsUserExpectPlaying:Z

.field private mIsVolume:Z

.field private mMaxBright:I

.field private mMaxVolume:I

.field private mOnCompletionListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnErrorListener;

.field private mOnPreparedListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;

.field private mPendingGonePreview:Z

.field private mPreviewImageView:Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;

.field private mSeekBarVolume:Landroid/widget/SeekBar;

.field private mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

.field private mSubtitleOffsetEntity:Lcom/miui/video/base/database/SubtitleOffsetEntity;

.field private mTrackSaveManager:Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;

.field private mVideoEntity:Lcom/miui/video/base/database/LocalVideoEntity;

.field private mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

.field private mVolumeBright:Landroid/widget/ImageView;

.field private mVolumeBrightContainer:Landroid/view/ViewGroup;

.field private mVolumeCount:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mCurrentState:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mBitmapCover:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mIsContinuePlay:Z

    new-instance v0, Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-direct {v0}, Lcom/miui/video/base/statistics/StatisticsEntity;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$1;-><init>(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mOnCompletionListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$2;-><init>(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mOnPreparedListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$3;-><init>(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mOnErrorListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnErrorListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;)Lcom/miui/video/base/statistics/StatisticsEntity;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->switchToState(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mCurrentState:I

    return p0
.end method

.method static synthetic access$202(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mCurrentState:I

    return p1
.end method

.method static synthetic access$302(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mIsUserExpectPlaying:Z

    return p1
.end method

.method static synthetic access$400(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mPendingGonePreview:Z

    return p0
.end method

.method static synthetic access$402(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mPendingGonePreview:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;)Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mPreviewImageView:Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;

    return-object p0
.end method

.method private changePlayState()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mCurrentState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mIsUserExpectPlaying:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->setContinuePlayTime(J)V

    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->switchToState(I)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mIsUserExpectPlaying:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->switchToState(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->setPauseTime(J)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/statistics/StatisticsEntity;->clearParams()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    const-string v1, "stop_local"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->setEventKey(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "play_id"

    sget-object v2, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-static {}, Lcom/miui/video/base/statistics/StatisticsUtils2;->getInstance()Lcom/miui/video/base/statistics/StatisticsUtils2;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/StatisticsUtils2;->reportEventStatistics(Lcom/miui/video/base/statistics/StatisticsEntity;)Z

    :goto_0
    :pswitch_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createDetailData()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/entity/BaseEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->isFakeAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->getName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->getName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->getName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;

    invoke-direct {v2}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;-><init>()V

    sget v3, Lcom/miui/video/biz/videoplus/R$string;->plus_player_detail_file_location:I

    invoke-virtual {p0, v3}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->setDetail(Ljava/lang/String;)V

    sget v1, Lcom/miui/video/biz/videoplus/R$drawable;->icon_plus_place:I

    invoke-virtual {v2, v1}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->setIcon(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v1, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;

    invoke-direct {v1}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;-><init>()V

    sget v2, Lcom/miui/video/biz/videoplus/R$string;->plus_player_detail_file_name:I

    invoke-virtual {p0, v2}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->setTitle(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->setDetail(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/miui/video/framework/utils/FormatUtils;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "px"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->setExtras(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;

    invoke-direct {v1}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;-><init>()V

    sget v2, Lcom/miui/video/biz/videoplus/R$string;->plus_player_detail_file_path:I

    invoke-virtual {p0, v2}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->setTitle(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->setDetail(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;

    invoke-direct {v1}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;-><init>()V

    sget v2, Lcom/miui/video/biz/videoplus/R$string;->plus_player_detail_file_time:I

    invoke-virtual {p0, v2}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->setTitle(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const-wide/16 v4, 0x3e8

    if-eqz v2, :cond_5

    sget-object v2, Lcom/miui/video/framework/utils/FormatUtils;->DATE_41:Ljava/text/SimpleDateFormat;

    iget-object v6, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v6}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v6

    mul-long v6, v6, v4

    invoke-static {v2, v6, v7}, Lcom/miui/video/framework/utils/FormatUtils;->formatDate(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->setDetail(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/text/SimpleDateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    check-cast v2, Ljava/text/SimpleDateFormat;

    iget-object v6, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v6}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v6

    mul-long v6, v6, v4

    invoke-static {v2, v6, v7}, Lcom/miui/video/framework/utils/FormatUtils;->formatDate(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->setDetail(Ljava/lang/String;)V

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v6}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v6

    mul-long v6, v6, v4

    invoke-static {v6, v7}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->getWeekDayString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v6}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v6

    mul-long v6, v6, v4

    invoke-static {v6, v7, v3}, Lcom/miui/video/framework/utils/FormatUtils;->formatTime(JI)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/player/entities/LineEntity;->setExtras(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private doOnFragmentShow()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mAutoPlay:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mIsContinuePlay:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mIsFailedVideo:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mIsUserExpectPlaying:Z

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->switchToState(I)V

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mIsUserExpectPlaying:Z

    invoke-direct {p0, v1}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->switchToState(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mIsUserExpectPlaying:Z

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mCurrentState:I

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mCurrentState:I

    :cond_3
    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->switchToState(I)V

    iput-boolean v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mAutoPlay:Z

    iput-boolean v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mIsContinuePlay:Z

    :goto_1
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isConnectedDevice()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isShowingPhotoOnRemote()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->startShowPhotoOnRemote()V

    :cond_4
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->showPhotoOnRemote(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private initBrightness()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/utils/SystemUtils;->getCurrentBrightness(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mCurrentBright:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mBrightCount:F

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/utils/SystemUtils;->getMaxBrightness(Landroid/content/res/Resources;)I

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMaxBright:I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mSeekBarVolume:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMaxBright:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mSeekBarVolume:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMaxBright:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    const-string v0, "PlayerVideoFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mMaxBright:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMaxBright:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mCurrentBright:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mCurrentBright:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initSubtitleData()V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->getHistoryVideoEntity(Ljava/lang/String;)Lcom/miui/video/base/database/LocalVideoEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoEntity:Lcom/miui/video/base/database/LocalVideoEntity;

    const-string v1, "PlayerVideoFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFilePath\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mTrackSaveManager:Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoEntity:Lcom/miui/video/base/database/LocalVideoEntity;

    invoke-interface {v1, v2}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->setVideoEntity(Lcom/miui/video/base/database/LocalVideoEntity;)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mTrackSaveManager:Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;

    invoke-interface {v1, v2}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->setTrackSaveManager(Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/video/base/database/LocalVideoEntity;->getExtraSubtitlePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/video/base/database/LocalVideoEntity;->getSubtitleOffsetEntities()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/base/database/LocalVideoEntity;->getSubtitleOffsetEntities()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v0}, Lcom/miui/video/base/database/LocalVideoEntity;->getSubtitleOffsetEntities()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/video/base/database/SubtitleOffsetEntity;

    invoke-virtual {v4}, Lcom/miui/video/base/database/SubtitleOffsetEntity;->getPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/miui/video/base/database/LocalVideoEntity;->getSubtitleOffsetEntities()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/video/base/database/SubtitleOffsetEntity;

    iput-object v4, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mSubtitleOffsetEntity:Lcom/miui/video/base/database/SubtitleOffsetEntity;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private initViewsWithData()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mPreviewImageView:Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getRotation()I

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getRotation()I

    move-result v0

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getHeight()I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getWidth()I

    move-result v1

    :goto_1
    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mPreviewImageView:Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;

    invoke-virtual {v2, v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->setProbablySize(II)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v2, v0, v1}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->setProbablySize(II)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isNeedEnterTransition()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mPreviewImageView:Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->asView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->initSubtitleData()V

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mIsFailedVideo:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mAutoPlay:Z

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mIsContinuePlay:Z

    :cond_3
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->loadImage()V

    :cond_4
    return-void
.end method

.method private initVolume()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/utils/SystemUtils;->getCurrentVolume(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mCurrentVolume:I

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/utils/SystemUtils;->getMaxVolume(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMaxVolume:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVolumeCount:F

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mSeekBarVolume:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMaxVolume:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mSeekBarVolume:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mCurrentVolume:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    const-string v0, "PlayerVideoFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mMaxVolume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMaxVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mCurrentVolume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mCurrentVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private is8kVideo(II)Z
    .locals 2

    const/16 v0, 0x10e0

    const/16 v1, 0x1e00

    if-lt p1, v1, :cond_0

    if-ge p2, v0, :cond_1

    :cond_0
    if-lt p1, v0, :cond_2

    if-lt p2, v1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private loadImage()V
    .locals 4

    const-string v0, "PlayerVideoFragment"

    const-string v1, " loadImagettt"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mIsFailedVideo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mPreviewImageView:Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;

    sget v1, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_getthumbs_crash:I

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->setImageResource(I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getTransAnimBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mPreviewImageView:Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;

    invoke-virtual {v1, v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mPreviewImageView:Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomVideoGlide;->into(Ljava/lang/String;Landroid/widget/ImageView;ILcom/bumptech/glide/request/RequestListener;)V

    :goto_0
    return-void
.end method

.method private loadPreViewImage()V
    .locals 4

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getTransAnimBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mPreviewImageView:Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;

    invoke-virtual {v1, v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mPreviewImageView:Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomVideoGlide;->into(Ljava/lang/String;Landroid/widget/ImageView;ILcom/bumptech/glide/request/RequestListener;)V

    return-void
.end method

.method private refreshPlayButtonVisibility()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isInPipMode()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isProcessingEnterTransition()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;->isUserLockedRotate()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->is8kVideo(II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/miui/video/framework/miui/Build;->isSupport8KVideo()Z

    :cond_2
    iget v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mCurrentState:I

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mBtnTogglePlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mBtnTogglePlay:Landroid/widget/ImageView;

    sget v3, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_big_play:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mBtnTogglePlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mBtnTogglePlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mBtnTogglePlay:Landroid/widget/ImageView;

    sget v3, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_big_pause:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mBtnTogglePlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mBtnTogglePlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mBtnTogglePlay:Landroid/widget/ImageView;

    sget v3, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_big_play:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mAutoPlay:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mBtnTogglePlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mBtnTogglePlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mBtnTogglePlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private refreshPreViewSurface(J)V
    .locals 3

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mCurrentState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mCurrentState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mCurrentState:I

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "PlayerVideoFragment"

    const-string v1, " yqf_test refreshPreViewSurface"

    invoke-static {v0, v1}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mPreviewImageView:Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->showPreviewSurface()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->getPreViewSurface()Landroid/view/Surface;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->showPreviewFrameAtTime(Landroid/view/Surface;JLjava/lang/String;)V

    const-string v0, "PlayerVideoFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  position\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private resetActivityBright()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->getDefaultActivityBright()F

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/player/utils/SystemUtils;->setActivityBrightnessDefault(Landroid/app/Activity;F)V

    const-string v0, "PlayerVideoFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " resetActivityBright "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-interface {v2}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->getDefaultActivityBright()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private switchToState(I)V
    .locals 6

    const-string v0, "PlayerVideoFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchToState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mPreviewImageView:Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;

    invoke-virtual {v1, v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->setVisibility(I)V

    :cond_0
    iget v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mCurrentState:I

    if-ne v1, p1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    const-string v2, "VIDEO_PLUS_PLAY_STATE_CHANGE"

    const/4 v3, 0x0

    invoke-interface {v1, v2, p1, v3}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mCurrentState:I

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mCurrentState:I

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isInPlayBackStateOnRemote()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->pauseOnRemote()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->pause()V

    :goto_0
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->refreshPlayButtonVisibility()V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;->setPauseState()V

    :cond_3
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isFragmentShowing()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-interface {v1, v2}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->setKeepScreenOn(Z)V

    goto/16 :goto_3

    :pswitch_1
    iget-object v4, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v5}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getHeight()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->is8kVideo(II)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/miui/video/framework/miui/Build;->isSupport8KVideo()Z

    move-result v5

    if-nez v5, :cond_4

    const-string p1, "PlayerVideoFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This is 8k video : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "PlayerVideoFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " do not support 8k video"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;->hideSeekBar()V

    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->switchToState(I)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const/16 v1, 0x65

    invoke-static {p1, v3, v1, v0}, Lcom/miui/video/biz/videoplus/player/dialog/OnErrorAlertDialog;->build(Landroid/app/Activity;Landroid/net/Uri;IZ)Lcom/miui/video/base/widget/ui/MiVAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->show()V

    return-void

    :cond_4
    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->parse(Ljava/lang/String;I)Lcom/miui/video/biz/videoplus/player/VideoInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->getType()I

    move-result v4

    if-ne v4, v2, :cond_5

    const-string p1, "PlayerVideoFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This is 8k video : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "PlayerVideoFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " do not support 8k video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " video type VIDEO_TYPE_FAST_SLOW "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;->hideSeekBar()V

    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->switchToState(I)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const/16 v1, 0x66

    invoke-static {p1, v3, v1, v0}, Lcom/miui/video/biz/videoplus/player/dialog/OnErrorAlertDialog;->build(Landroid/app/Activity;Landroid/net/Uri;IZ)Lcom/miui/video/base/widget/ui/MiVAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->show()V

    return-void

    :cond_5
    const/4 v3, -0x1

    if-eq v1, v3, :cond_6

    if-nez v1, :cond_8

    :cond_6
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->close()V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->setDataSource(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mOnCompletionListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnCompletionListener;

    invoke-interface {v1, v3}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->setOnCompletionListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnCompletionListener;)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mOnPreparedListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;

    invoke-interface {v1, v3}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->setOnPreparedListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mOnErrorListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnErrorListener;

    invoke-interface {v1, v3}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->setOnErrorListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnErrorListener;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isInPlaybackState()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_7
    iput-boolean v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mPendingGonePreview:Z

    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isInPlayBackStateOnRemote()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->showShareScreenView()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isPlayingOnRemote()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->startOnRemote()V

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isConnectedDevice()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->close()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->showShareScreenView()V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->setDataSource(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->start()V

    :cond_b
    :goto_2
    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->hideController(Z)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;->setPlayingState()V

    :cond_c
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isFragmentShowing()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-interface {v1, v2}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->setKeepScreenOn(Z)V

    :cond_d
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->hidePreviewSurface()V

    goto :goto_3

    :pswitch_2
    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mIsUserExpectPlaying:Z

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mPreviewImageView:Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;

    invoke-virtual {v1, v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;->setPreviewState()V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->refreshPlayButtonVisibility()V

    :cond_e
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->hideMoreDialog()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->hideShareScreenView()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isFragmentShowing()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-interface {v1, v0}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->setKeepScreenOn(Z)V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->resetActivityBright()V

    :cond_f
    :goto_3
    packed-switch p1, :pswitch_data_1

    goto :goto_4

    :pswitch_3
    invoke-super {p0, v2}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onVolumeBrightEnable(Z)V

    goto :goto_4

    :pswitch_4
    invoke-super {p0, v0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onVolumeBrightEnable(Z)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private switchToState(IZ)V
    .locals 3

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mCurrentState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mCurrentState:I

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mCurrentState:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    if-nez v0, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->close()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mOnCompletionListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnCompletionListener;

    invoke-interface {v0, v2}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->setOnCompletionListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mOnPreparedListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;

    invoke-interface {v0, v2}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->setOnPreparedListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mOnErrorListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnErrorListener;

    invoke-interface {v0, v2}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->setOnErrorListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnErrorListener;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mPendingGonePreview:Z

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isInPlayBackStateOnRemote()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->showShareScreenView()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isPlayingOnRemote()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->startOnRemote()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isConnectedDevice()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->close()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->showShareScreenView()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->setDataSource(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->start()V

    :cond_7
    :goto_1
    if-eqz p2, :cond_8

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->hideController(Z)V

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v1}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->showController(Z)V

    :goto_2
    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    invoke-interface {p2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;->setPlayingState()V

    :cond_9
    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {p2}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->hidePreviewSurface()V

    :goto_3
    packed-switch p1, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    invoke-super {p0, v1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onVolumeBrightEnable(Z)V

    goto :goto_4

    :pswitch_1
    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onVolumeBrightEnable(Z)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateBright(F)V
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mBrightCount:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mBrightCount:F

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenWidthPixels()I

    move-result p1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mBrightCount:F

    mul-int/lit8 p1, p1, 0x2

    div-int/lit8 p1, p1, 0x3

    int-to-float p1, p1

    div-float/2addr v0, p1

    iget p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMaxBright:I

    int-to-float p1, p1

    mul-float v0, v0, p1

    float-to-int p1, v0

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mCurrentBright:I

    add-int/2addr p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMaxBright:I

    if-le p1, v0, :cond_1

    iget p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMaxBright:I

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mSeekBarVolume:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/miui/video/biz/videoplus/player/utils/SystemUtils;->setActivityBrightness(Landroid/app/Activity;I)V

    return-void
.end method

.method private updateVolume(F)V
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVolumeCount:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVolumeCount:F

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenWidthPixels()I

    move-result p1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVolumeCount:F

    mul-int/lit8 p1, p1, 0x2

    div-int/lit8 p1, p1, 0x3

    int-to-float p1, p1

    div-float/2addr v0, p1

    iget p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMaxVolume:I

    int-to-float p1, p1

    mul-float v0, v0, p1

    float-to-int p1, v0

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mCurrentVolume:I

    add-int/2addr p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMaxVolume:I

    if-le p1, v0, :cond_1

    iget p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMaxVolume:I

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mSeekBarVolume:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/miui/video/biz/videoplus/player/utils/SystemUtils;->setVolume(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public addAndSelectExtraLocalSubtitle(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->addAndSelectExtraLocalSubtitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mSubtitleOffsetEntity:Lcom/miui/video/base/database/SubtitleOffsetEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mSubtitleOffsetEntity:Lcom/miui/video/base/database/SubtitleOffsetEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/database/SubtitleOffsetEntity;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mSubtitleOffsetEntity:Lcom/miui/video/base/database/SubtitleOffsetEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/database/SubtitleOffsetEntity;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mSubtitleOffsetEntity:Lcom/miui/video/base/database/SubtitleOffsetEntity;

    invoke-virtual {p1}, Lcom/miui/video/base/database/SubtitleOffsetEntity;->getTimeOffset()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mSubtitleOffsetEntity:Lcom/miui/video/base/database/SubtitleOffsetEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/database/SubtitleOffsetEntity;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mSubtitleOffsetEntity:Lcom/miui/video/base/database/SubtitleOffsetEntity;

    invoke-virtual {v1}, Lcom/miui/video/base/database/SubtitleOffsetEntity;->getTimeOffset()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->setSubtitleTimedTextDelay(Ljava/lang/String;J)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->hideMoreDialog()V

    return-void
.end method

.method public bridge synthetic attachMediaController(Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->attachMediaController(Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;)V

    return-void
.end method

.method public bridge synthetic attachShareScreenController(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->attachShareScreenController(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;)V

    return-void
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isInPlayBackStateOnRemote()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->closeOnRemote()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->close()V

    :goto_0
    return-void
.end method

.method public closeOnRemote()V
    .locals 7

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getShareScreenVideoController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getCurrentPositionOnRemote()I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getDurationOnRemote()I

    move-result v5

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getShareScreenVideoController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;->closeOnRemote()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->saveHistory(Landroid/content/Context;Landroid/net/Uri;ZIIZ)V

    :cond_0
    return-void
.end method

.method public bridge synthetic connectDevice(Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->connectDevice(Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;)V

    return-void
.end method

.method public bridge synthetic disconnectDevice()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->disconnectDevice()V

    return-void
.end method

.method public bridge synthetic enterPip()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->enterPip()V

    return-void
.end method

.method public getAudioTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->getAudioTracks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBaseRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->getTransformView()Lcom/miui/video/biz/videoplus/player/widget/ITransformView;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/widget/ITransformView;->getBaseRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConnectedDevice()Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;
    .locals 1

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->getConnectedDevice()Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;

    move-result-object v0

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->ui_player_video_content:I

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isInPlayBackStateOnRemote()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getCurrentPositionOnRemote()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getCurrentPositionOnRemote()I
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getShareScreenVideoController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getShareScreenVideoController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;->getCurrentPositionOnRemote()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getDetailViewId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->ui_player_video_detail:I

    return v0
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->getTransformView()Lcom/miui/video/biz/videoplus/player/widget/ITransformView;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/widget/ITransformView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->getTransformView()Lcom/miui/video/biz/videoplus/player/widget/ITransformView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/widget/ITransformView;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public getDuration()I
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isInPlayBackStateOnRemote()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getDurationOnRemote()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->getDuration()I

    move-result v0

    return v0
.end method

.method public getDurationOnRemote()I
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getShareScreenVideoController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getShareScreenVideoController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;->getDurationOnRemote()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getFoundDevices()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->getFoundDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImageController()Lcom/miui/video/biz/videoplus/player/IPlayerImageController;
    .locals 1

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->getImageController()Lcom/miui/video/biz/videoplus/player/IPlayerImageController;

    move-result-object v0

    return-object v0
.end method

.method public getNextPhoto(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-interface {p2, p1}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->getNextEntity(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getPageName()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->getPageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayMode()I
    .locals 3

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/utils/SettingsManager;->getInstance()Lcom/miui/video/biz/videoplus/player/utils/SettingsManager;

    move-result-object v0

    const-string v1, "video_plus_play_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/player/utils/SettingsManager;->loadInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPlaySpeed()F
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->getPlaySpeed()F

    move-result v0

    return v0
.end method

.method public getPrevPhoto(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-interface {p2, p1}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->getPrevEntity(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getSubtitleFontColorIndex()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->getSubtitleFontColorIndex()I

    move-result v0

    return v0
.end method

.method public getSubtitleFontSizeIndex()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->getSubtitleFontSizeIndex()I

    move-result v0

    return v0
.end method

.method public getSubtitleTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->getSubtitleTracks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSuppMatrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->getTransformView()Lcom/miui/video/biz/videoplus/player/widget/ITransformView;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/widget/ITransformView;->getSuppMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;
    .locals 1

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object v0

    return-object v0
.end method

.method public getViewRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->getTransformView()Lcom/miui/video/biz/videoplus/player/widget/ITransformView;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/widget/ITransformView;->getViewRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getVolumeOnRemote()I
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getShareScreenVideoController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getShareScreenVideoController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;->getVolumeOnRemote()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected hideController(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->hideController(Z)V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->refreshPlayButtonVisibility()V

    return-void
.end method

.method public bridge synthetic hideMoreDialog()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->hideMoreDialog()V

    return-void
.end method

.method public bridge synthetic initFindViews()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->initFindViews()V

    return-void
.end method

.method public bridge synthetic initViewsEvent()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->initViewsEvent()V

    return-void
.end method

.method public bridge synthetic isConnectedDevice()Z
    .locals 1

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->isConnectedDevice()Z

    move-result v0

    return v0
.end method

.method public isExpectPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->isExpectPlaying()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isFragmentShowing()Z
    .locals 1

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->isFragmentShowing()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isImage()Z
    .locals 1

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->isImage()Z

    move-result v0

    return v0
.end method

.method public isInPlayBackStateOnRemote()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getShareScreenVideoController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getShareScreenVideoController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;->isInPlayBackStateOnRemote()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInPlaybackState()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->isInPlaybackState()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isInPlayBackStateOnRemote()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isPlayingOnRemote()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isPlayingOnRemote()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getShareScreenVideoController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getShareScreenVideoController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;->isPlayingOnRemote()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic isShareScreenServiceRunning()Z
    .locals 1

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->isShareScreenServiceRunning()Z

    move-result v0

    return v0
.end method

.method public isShowingPhotoOnRemote()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getShareScreenVideoController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getShareScreenVideoController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;->isShowingPhotoOnRemote()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAlphaChanged(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onAlphaChanged(F)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mBtnTogglePlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public bridge synthetic onBackPressed()Z
    .locals 1

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isFragmentShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mBtnTogglePlay:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isPlaying()Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mIsUserExpectPlaying:Z

    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->switchToState(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->setPauseTime(J)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {p1}, Lcom/miui/video/base/statistics/StatisticsEntity;->clearParams()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    const-string v0, "stop_local"

    invoke-virtual {p1, v0}, Lcom/miui/video/base/statistics/StatisticsEntity;->setEventKey(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object p1

    const-string v0, "play_id"

    sget-object v1, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object p1

    const-string v0, "type"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-static {}, Lcom/miui/video/base/statistics/StatisticsUtils2;->getInstance()Lcom/miui/video/base/statistics/StatisticsUtils2;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {p1, v0}, Lcom/miui/video/base/statistics/StatisticsUtils2;->reportEventStatistics(Lcom/miui/video/base/statistics/StatisticsEntity;)Z

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mIsUserExpectPlaying:Z

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mCurrentState:I

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mCurrentState:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mCurrentState:I

    if-ne v1, v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->setContinuePlayTime(J)V

    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->switchToState(I)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method public onCloseOnRemote()V
    .locals 8

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getCurrentPositionOnRemote()I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getDurationOnRemote()I

    move-result v4

    sub-int v0, v3, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v6, 0x0

    const/16 v1, 0x7d0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v5, 0x0

    move v2, v7

    invoke-static/range {v0 .. v5}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->saveHistory(Landroid/content/Context;Landroid/net/Uri;ZIIZ)V

    if-eqz v7, :cond_2

    invoke-direct {p0, v6}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->switchToState(I)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isConnectedDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isShowingPhotoOnRemote()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->startShowPhotoOnRemote()V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->showPhotoOnRemote(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->pause()V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->hideShareScreenView()V

    return-void
.end method

.method public bridge synthetic onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "isPlaying"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mAutoPlay:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "key_auto_play"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mAutoPlay:Z

    :goto_0
    return-void
.end method

.method protected onDataChanged()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onDataChanged()V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->initViewsWithData()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onDestroyView()V

    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    return-void
.end method

.method public bridge synthetic onDeviceConnectFail(Lcom/milink/api/v1/type/ErrorCode;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onDeviceConnectFail(Lcom/milink/api/v1/type/ErrorCode;)V

    return-void
.end method

.method public onDeviceConnectSuccess()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onDeviceConnectSuccess()V

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mCurrentState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->close()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->setDataSource(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->pauseOnRemote()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->close()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->showShareScreenView()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->startShowPhotoOnRemote()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->showPhotoOnRemote(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDeviceDisconnected()V
    .locals 3

    const-string v0, "PlayerVideoFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceDisconnected , mCurrentState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mCurrentState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->pause()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->hideShareScreenView()V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->refreshPlayButtonVisibility()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mOnCompletionListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnCompletionListener;

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->setOnCompletionListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mOnPreparedListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->setOnPreparedListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mOnErrorListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnErrorListener;

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->setOnErrorListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->start()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;->setPlayingState()V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->hideShareScreenView()V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->refreshPlayButtonVisibility()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->hideShareScreenView()V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->refreshPlayButtonVisibility()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onDeviceListChanged()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onDeviceListChanged()V

    return-void
.end method

.method public onDoubleTap()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->changePlayState()V

    return-void
.end method

.method public bridge synthetic onEnterEditMode()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onEnterEditMode()V

    return-void
.end method

.method protected onEnterTransitionEnd()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onEnterTransitionEnd()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->asView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->doOnFragmentShow()V

    return-void
.end method

.method protected onEnterTransitionStart()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onEnterTransitionStart()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mPreviewImageView:Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic onExitCancel()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onExitCancel()V

    return-void
.end method

.method public bridge synthetic onExitConfirm()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onExitConfirm()V

    return-void
.end method

.method public bridge synthetic onExitEditMode()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onExitEditMode()V

    return-void
.end method

.method public bridge synthetic onExitStart()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onExitStart()V

    return-void
.end method

.method protected onFragmentHide(Z)V
    .locals 5

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onFragmentHide(Z)V

    const-string v0, "PlayerVideoFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFragmentHide: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->close()V

    invoke-virtual {p0, p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->unRegisterOnVideoListenerOnRemote(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController$OnVideoListener;)V

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mCurrentState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDuration()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->setMediaDuration(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->setEndTime(J)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/statistics/StatisticsEntity;->clearParams()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    const-string v1, "play_end_local"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->setEventKey(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "play_id"

    sget-object v2, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "video_play_duration"

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->getPlayDurationTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "video_duration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "error"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->switchToState(I)V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isShowingPhotoOnRemote()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->stopShowPhotoOnRemote()V

    :cond_2
    return-void
.end method

.method protected onFragmentShow()V
    .locals 3

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onFragmentShow()V

    const-string v0, "PlayerVideoFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFragmentShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->registerOnVideoListenerOnRemote(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController$OnVideoListener;)V

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mAutoPlay:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mIsContinuePlay:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->hideController(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isNeedEnterTransition()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->doOnFragmentShow()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->refreshPlayButtonVisibility()V

    :goto_0
    return-void
.end method

.method protected onInflateContentView(Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;)V
    .locals 2

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->preview_image_view:I

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mPreviewImageView:Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->video_view:I

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mBtnTogglePlay:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mBtnTogglePlay:Landroid/widget/ImageView;

    sget v1, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_big_play:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mBtnTogglePlay:Landroid/widget/ImageView;

    invoke-virtual {p1, v1, v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mBtnTogglePlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->initViewsWithData()V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->volume_control_bar:I

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVolumeBrightContainer:Landroid/view/ViewGroup;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->iv_volume_bright:I

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVolumeBright:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->seek_bar_plus_volume_bright:I

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mSeekBarVolume:Landroid/widget/SeekBar;

    return-void
.end method

.method protected onInflateDetailView(Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;)V
    .locals 3

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->createDetailData()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/miui/video/biz/videoplus/player/widget/adapter/SimpleAdapter;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/miui/video/biz/videoplus/player/widget/adapter/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->setAdapter(Lcom/miui/video/biz/videoplus/player/widget/adapter/IBaseAdapter;)V

    return-void
.end method

.method public onLandscapeMode()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onLandscapeMode()V

    return-void
.end method

.method public onOrientationChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onOrientationChanged(Z)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isFragmentShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->refreshPlayButtonVisibility()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onPause()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isFragmentShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mIsUserExpectPlaying:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/AppUtils;->isInPipMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isPlayingOnRemote()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->setPauseTime(J)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->switchToState(I)V

    :cond_1
    return-void
.end method

.method public onPauseOnRemote()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->pause()V

    return-void
.end method

.method public onPip(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onPip(Z)V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->refreshPlayButtonVisibility()V

    return-void
.end method

.method public onPortraitMode()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onPortraitMode()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onResume()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isFragmentShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mIsUserExpectPlaying:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->setContinuePlayTime(J)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->switchToState(I)V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "PlayerVideoFragment"

    const-string v1, "  onSaveInstanceState "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "isPlaying"

    iget-boolean v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mIsUserExpectPlaying:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic onScrollBegin()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onScrollBegin()V

    return-void
.end method

.method public bridge synthetic onScrollEnd()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onScrollEnd()V

    return-void
.end method

.method public bridge synthetic onServiceStarted()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onServiceStarted()V

    return-void
.end method

.method public bridge synthetic onServiceStopped()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onServiceStopped()V

    return-void
.end method

.method public bridge synthetic onSingleTap()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onSingleTap()V

    return-void
.end method

.method public onStartOnRemote()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->start()V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onStop()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isFragmentShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mIsUserExpectPlaying:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isPlayingOnRemote()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->setPauseTime(J)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->switchToState(I)V

    :cond_1
    return-void
.end method

.method public onUserLockRotate()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onUserLockRotate()V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->refreshPlayButtonVisibility()V

    return-void
.end method

.method public onUserUnLockRotate()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onUserUnLockRotate()V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->refreshPlayButtonVisibility()V

    return-void
.end method

.method public onVolumeOrBrightChanged(F)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onVolumeOrBrightChanged(F)V

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mCurrentState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mCurrentState:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mIsVolume:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->updateVolume(F)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->updateBright(F)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public onVolumeOrBrightEnd()V
    .locals 3

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onVolumeOrBrightEnd()V

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mCurrentState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mCurrentState:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mBtnTogglePlay:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVolumeBrightContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mIsVolume:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/statistics/StatisticsEntity;->clearParams()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    const-string v1, "change_sound_local"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->setEventKey(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "play_id"

    sget-object v2, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-static {}, Lcom/miui/video/base/statistics/StatisticsUtils2;->getInstance()Lcom/miui/video/base/statistics/StatisticsUtils2;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/StatisticsUtils2;->reportEventStatistics(Lcom/miui/video/base/statistics/StatisticsEntity;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/statistics/StatisticsEntity;->clearParams()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    const-string v1, "change_brightness_local"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->setEventKey(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "play_id"

    sget-object v2, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-static {}, Lcom/miui/video/base/statistics/StatisticsUtils2;->getInstance()Lcom/miui/video/base/statistics/StatisticsUtils2;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/StatisticsUtils2;->reportEventStatistics(Lcom/miui/video/base/statistics/StatisticsEntity;)Z

    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public onVolumeOrBrightStart(F)V
    .locals 4

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onVolumeOrBrightStart(F)V

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mCurrentState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mCurrentState:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenHeightPixels()I

    move-result v0

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/common/library/utils/DeviceUtils;->getNavigationBarHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    invoke-interface {v2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mBtnTogglePlay:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVolumeBrightContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/high16 v2, 0x40000000    # 2.0f

    mul-float p1, p1, v2

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    const-string p1, "PlayerVideoFragment"

    const-string v0, " showBrightControl "

    invoke-static {p1, v0}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVolumeBright:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_brightness_control:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iput-boolean v3, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mIsVolume:Z

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->initBrightness()V

    iput-boolean v3, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mIsVolume:Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVolumeBright:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_volume_control:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mIsVolume:Z

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->initVolume()V

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mIsVolume:Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->switchToState(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mIsUserExpectPlaying:Z

    return-void
.end method

.method public pauseOnRemote()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getShareScreenVideoController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getShareScreenVideoController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;->pauseOnRemote()V

    :cond_0
    return-void
.end method

.method public bridge synthetic processFragmentHide(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->processFragmentHide(Z)V

    return-void
.end method

.method public bridge synthetic processFragmentShow()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->processFragmentShow()V

    return-void
.end method

.method public registerOnVideoListenerOnRemote(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController$OnVideoListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getShareScreenVideoController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getShareScreenVideoController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;->registerOnVideoListenerOnRemote(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController$OnVideoListener;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic registerShareScreenServiceListener(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->registerShareScreenServiceListener(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;)V

    return-void
.end method

.method public bridge synthetic releaseShareScreenService()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->releaseShareScreenService()V

    return-void
.end method

.method public seekTo(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isInPlayBackStateOnRemote()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->seekToOnRemote(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->seekTo(I)V

    :goto_0
    return-void
.end method

.method public seekToAtPreview(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->seekToAtPreview(I)V

    return-void
.end method

.method public seekToOnRemote(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getShareScreenVideoController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getShareScreenVideoController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;->seekToOnRemote(I)V

    :cond_0
    return-void
.end method

.method public selectAudioTrack(Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->selectAudioTrack(Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;)V

    return-void
.end method

.method public selectSubtitleTrack(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->selectSubtitleTrack(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;)V

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mTrackSaveManager:Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->getPosInTrack()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;->onSubtitleTrackSelectedCallback(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->getType()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mSubtitleOffsetEntity:Lcom/miui/video/base/database/SubtitleOffsetEntity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mSubtitleOffsetEntity:Lcom/miui/video/base/database/SubtitleOffsetEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/database/SubtitleOffsetEntity;->getTimeOffset()I

    move-result v1

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mTrackSaveManager:Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;->onSubtitleTrackSelectedCallback(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setContinuePlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mIsContinuePlay:Z

    return-void
.end method

.method public bridge synthetic setData(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->setData(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isConnectedDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->getHistory(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->setDataSourceOnRemote(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->setDataSource(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setDataSourceOnRemote(Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getShareScreenVideoController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getShareScreenVideoController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;->setDataSourceOnRemote(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setEditMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mPreviewImageView:Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->setEditMode(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->getTransformView()Lcom/miui/video/biz/videoplus/player/widget/ITransformView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/widget/ITransformView;->setEditMode(Z)V

    return-void
.end method

.method public setInlineDuration(J)V
    .locals 0

    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->setLooping(Z)V

    return-void
.end method

.method public setOnUpdateListener(Lcom/miui/video/biz/videoplus/player/widget/ITransformView$OnUpdateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mPreviewImageView:Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->setOnUpdateListener(Lcom/miui/video/biz/videoplus/player/widget/ITransformView$OnUpdateListener;)V

    return-void
.end method

.method public setPlayMode(I)V
    .locals 2

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/utils/SettingsManager;->getInstance()Lcom/miui/video/biz/videoplus/player/utils/SettingsManager;

    move-result-object v0

    const-string v1, "video_plus_play_mode"

    invoke-virtual {v0, v1, p1}, Lcom/miui/video/biz/videoplus/player/utils/SettingsManager;->saveInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaController:Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;->setPlaySpeed(F)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->setPlaySpeed(F)V

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->hideMoreDialog()V

    return-void
.end method

.method public bridge synthetic setPlayerActivity(Lcom/miui/video/biz/videoplus/player/IPlayerActivity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->setPlayerActivity(Lcom/miui/video/biz/videoplus/player/IPlayerActivity;)V

    return-void
.end method

.method public setSlowMotionTime(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->setSlowMotionTime(JJ)V

    return-void
.end method

.method public setSubtitleFontColorIndex(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->setSubtitleFontColorIndex(I)V

    return-void
.end method

.method public setSubtitleFontSizeIndex(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->setSubtitleFontSizeIndex(I)V

    return-void
.end method

.method public setSubtitleTimedTextDelay(Ljava/lang/String;J)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mSubtitleOffsetEntity:Lcom/miui/video/base/database/SubtitleOffsetEntity;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    cmp-long v0, p2, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mSubtitleOffsetEntity:Lcom/miui/video/base/database/SubtitleOffsetEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/database/SubtitleOffsetEntity;->getTimeOffset()I

    move-result v0

    long-to-int p2, p2

    add-int v3, v0, p2

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mSubtitleOffsetEntity:Lcom/miui/video/base/database/SubtitleOffsetEntity;

    invoke-virtual {p2, v3}, Lcom/miui/video/base/database/SubtitleOffsetEntity;->setTimeOffset(I)Lcom/miui/video/base/database/SubtitleOffsetEntity;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mSubtitleOffsetEntity:Lcom/miui/video/base/database/SubtitleOffsetEntity;

    if-eqz v0, :cond_1

    cmp-long p2, p2, v1

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mSubtitleOffsetEntity:Lcom/miui/video/base/database/SubtitleOffsetEntity;

    invoke-virtual {p2, v3}, Lcom/miui/video/base/database/SubtitleOffsetEntity;->setTimeOffset(I)Lcom/miui/video/base/database/SubtitleOffsetEntity;

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    int-to-long v0, v3

    invoke-interface {p2, p1, v0, v1}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->setSubtitleTimedTextDelay(Ljava/lang/String;J)V

    const-string p2, "PlayerVideoFragment"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " setSubtitleTimedTextDelay "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "PlayerVideoFragment"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " setSubtitleTimedTextDelay "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mTrackSaveManager:Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;

    invoke-virtual {p2, p1, v3}, Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;->onSubtitleTrackSelectedCallback(Ljava/lang/String;I)V

    return-void
.end method

.method public setTrackSaveManager(Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;)V
    .locals 0

    return-void
.end method

.method public setVideoEntity(Lcom/miui/video/base/database/LocalVideoEntity;)V
    .locals 0

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->setVolume(F)V

    return-void
.end method

.method public setVolumeOnRemote(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getShareScreenVideoController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getShareScreenVideoController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;->setVolumeOnRemote(I)V

    :cond_0
    return-void
.end method

.method protected showController(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->showController(Z)V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->refreshPlayButtonVisibility()V

    return-void
.end method

.method public bridge synthetic showMoreDialog(Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->showMoreDialog(Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;)V

    return-void
.end method

.method public showPhotoOnRemote(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, ".mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".3gp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    sget v0, Lcom/miui/video/biz/videoplus/R$string;->plus_player_share_screen_video_not_support:I

    invoke-virtual {p1, v0}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getShareScreenVideoController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getShareScreenVideoController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;->showPhotoOnRemote(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public showSubtitleSurfaceFullScreen(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->showSubtitleSurfaceFullScreen(Z)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->switchToState(I)V

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mIsUserExpectPlaying:Z

    return-void
.end method

.method public startOnRemote()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getShareScreenVideoController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getShareScreenVideoController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;->startOnRemote()V

    :cond_0
    return-void
.end method

.method public bridge synthetic startShareScreenService()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->startShareScreenService()V

    return-void
.end method

.method public startShowPhotoOnRemote()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getShareScreenVideoController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getShareScreenVideoController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;->startShowPhotoOnRemote()V

    :cond_0
    return-void
.end method

.method public startWithoutHideController()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->switchToState(IZ)V

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mIsUserExpectPlaying:Z

    return-void
.end method

.method public bridge synthetic stopShareScreenService()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->stopShareScreenService()V

    return-void
.end method

.method public stopShowPhotoOnRemote()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getShareScreenVideoController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getShareScreenVideoController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;->stopShowPhotoOnRemote()V

    :cond_0
    return-void
.end method

.method public unRegisterOnVideoListenerOnRemote(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController$OnVideoListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getShareScreenVideoController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getShareScreenVideoController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;->unRegisterOnVideoListenerOnRemote(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController$OnVideoListener;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic unRegisterShareScreenServiceListener(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->unRegisterShareScreenServiceListener(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;)V

    return-void
.end method

.method public updatePos(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->refreshPreViewSurface(J)V

    return-void
.end method

.method public updateSuppMatrix(Landroid/graphics/Matrix;)V
    .locals 13

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mPreviewImageView:Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerImageView;->updateSuppMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->getTransformView()Lcom/miui/video/biz/videoplus/player/widget/ITransformView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/widget/ITransformView;->updateSuppMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->getTransformViewPreSurface()Lcom/miui/video/biz/videoplus/player/widget/ITransformView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mVideoView:Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;->getTransformViewPreSurface()Lcom/miui/video/biz/videoplus/player/widget/ITransformView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/widget/ITransformView;->updateSuppMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->isShowingPhotoOnRemote()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getBaseRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getViewRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float v12, v2, v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v5, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v5

    div-float/2addr v3, v12

    float-to-int v6, v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v4

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p1

    div-float/2addr v1, v12

    float-to-int v7, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p1

    mul-float p1, p1, v2

    float-to-int v8, p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p1

    mul-float p1, p1, v2

    float-to-int v9, p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p1

    float-to-int v10, p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p1

    float-to-int v11, p1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v5

    move-object v4, p0

    invoke-virtual/range {v4 .. v12}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->zoomPhotoOnRemote(Ljava/lang/String;IIIIIIF)V

    :cond_1
    return-void
.end method

.method public zoomPhotoOnRemote(Ljava/lang/String;IIIIIIF)V
    .locals 10

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getShareScreenVideoController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getShareScreenVideoController()Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;->zoomPhotoOnRemote(Ljava/lang/String;IIIIIIF)V

    :cond_0
    return-void
.end method
