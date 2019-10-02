.class public Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;
.super Ljava/lang/Object;
.source "MediaControllerPresenter.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/player/mediacontroller/IMediaController;
.implements Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;
.implements Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;
.implements Lcom/miui/video/biz/videoplus/player/widget/indicator/IImagePagerIndicator;


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaController"

.field public static final isImagePagerIndicatorOpen:Z = true

.field public static isNewSeekbarOpen:Z


# instance fields
.field private isMediaEntityChange:Z

.field private mIsInEditMode:Z

.field private mIsInPipMode:Z

.field private mIsLandscape:Z

.field private mIsSeeking:Z

.field private mIsSharingScreen:Z

.field private mIsShow:Z

.field private mIsUserLockedRotate:Z

.field private mIsVolume:Z

.field private mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

.field private mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

.field private mOrientationController:Lcom/miui/video/biz/videoplus/player/OrientationController;

.field private mPendingSeekPosition:I

.field private mPendingSeekPositionAtPreview:I

.field private mPlaySpeed:F

.field private mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

.field private mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

.field private mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

.field private mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

.field private mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

.field private mState:I

.field private mUpdateProgressRunnable:Ljava/lang/Runnable;

.field private misInMultiWindowMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/miui/video/biz/videoplus/player/IPlayerActivity;Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;Lcom/miui/video/biz/videoplus/player/OrientationController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsShow:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsInPipMode:Z

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->misInMultiWindowMode:Z

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isMediaEntityChange:Z

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPendingSeekPositionAtPreview:I

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mState:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlaySpeed:F

    new-instance v0, Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-direct {v0}, Lcom/miui/video/base/statistics/StatisticsEntity;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$5;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$5;-><init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-virtual {p0, p2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->bindPortraitView(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;)V

    invoke-virtual {p0, p3}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->bindLandscapeView(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;)V

    iput-object p4, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mOrientationController:Lcom/miui/video/biz/videoplus/player/OrientationController;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;)Lcom/miui/video/biz/videoplus/player/IPlayerActivity;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;)Lcom/miui/video/biz/videoplus/player/IPlayerController;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsSeeking:Z

    return p0
.end method

.method static synthetic access$300(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;)Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;)Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;)F
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlaySpeed:F

    return p0
.end method

.method private getDate()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToDateInMillis(J)J

    move-result-wide v0

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->getTodayTimeInMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    if-nez v4, :cond_1

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$string;->today:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->getYesterdayTimeInMillis()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$string;->yesterday:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->getBeforeYesterdayTimeInMillis()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$string;->before_yestoday:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-static {v0, v1, v2, v3}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->getDistanceTimesInDay(JJ)I

    move-result v2

    const/4 v3, 0x7

    if-gt v2, v3, :cond_4

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->getWeekDayString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->getYearTimeInMillis()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_5

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToMonthDay(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToYearMonthDay(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTime()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/miui/video/framework/utils/FormatUtils;->formatTime(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

.method private isShowDate()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDirectoryPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDirectoryPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/DCIM/ScreenRecorder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDirectoryPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/Tencent/MicroMsg/WeiXin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDirectoryPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/tencent/MicroMsg/WeiXin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDirectoryPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/tencent/MicroMsg/WeChat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDirectoryPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/Tencent/QQ_Images"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDirectoryPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/tencent/QQ_Images"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDirectoryPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/sina/weibo/weibo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private onOrientationLandscape()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;->onLandscapeMode()V

    :cond_0
    return-void
.end method

.method private onOrientationPortrait()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;->onPortraitMode()V

    :cond_0
    return-void
.end method

.method private refreshImageSubtitleSurface(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;->showSubtitleSurfaceFullScreen(Z)V

    :cond_0
    return-void
.end method

.method private refreshMediaEntity()V
    .locals 2

    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->setMediaEntity(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->setMediaEntity(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V

    :cond_0
    return-void
.end method

.method private refreshRotateBtnVisibility(Z)V
    .locals 0

    iget-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->misInMultiWindowMode:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->hideRotaeBtn()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->hideRotaeBtn()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->showRotaeBtn()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->showRotaeBtn()V

    :goto_0
    return-void
.end method

.method private refreshTopBar()V
    .locals 8

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsInEditMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$plurals;->plus_edit_top_titletext:I

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-interface {v3}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->getCheckedList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-interface {v6}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->getCheckedList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$plurals;->plus_edit_top_titletext:I

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-interface {v3}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->getCheckedList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-interface {v5}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->getCheckedList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->setDesc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->setDesc(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isImage()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isShowDate()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->setDesc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->setDesc(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->isFakeAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->getName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->getName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->getTime()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->setDesc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->setDesc(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v2, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->setTitle(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v2, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->setDesc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->setDesc(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private refreshVisibility(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsShow:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsInPipMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsLandscape:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->hide(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->show(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->show(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->hide(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->hide(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->hide(Z)V

    :goto_0
    return-void
.end method

.method private stopUpdatePosition()V
    .locals 2

    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaController"

    const-string v1, " stopUpdatePosition "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->stopUpdatePosition()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->stopUpdatePosition()V

    :cond_0
    return-void
.end method


# virtual methods
.method public attachMediaEntity(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlaySpeed:F

    const-string p1, "MediaController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setPlaySpeed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlaySpeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isMediaEntityChange:Z

    const-string p1, "MediaController"

    const-string v0, " attachMediaEntity "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->refreshTopBar()V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->refreshMediaEntity()V

    return-void
.end method

.method public attachPlayerController(Lcom/miui/video/biz/videoplus/player/IPlayerController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    return-void
.end method

.method public bindLandscapeView(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {p1, p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->bindPresenter(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;)V

    return-void
.end method

.method public bindPortraitView(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {p1, p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->bindPresenter(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;)V

    return-void
.end method

.method public clickBack()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public clickCancel()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public clickCollect()V
    .locals 0

    return-void
.end method

.method public clickDelete()V
    .locals 10

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    move-object v2, v1

    check-cast v2, Landroid/content/Context;

    const-string v3, ""

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/miui/video/biz/videoplus/R$plurals;->plus_edit_delete_comfire_text:I

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/miui/video/biz/videoplus/R$string;->v_cancel:I

    sget v6, Lcom/miui/video/biz/videoplus/R$string;->v_ok:I

    new-instance v7, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$1;

    invoke-direct {v7, p0, v2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$1;-><init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;Landroid/content/Context;)V

    new-instance v8, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$2;

    invoke-direct {v8, p0, v0, v2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$2;-><init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;Landroid/content/Context;)V

    const/4 v9, 0x1

    invoke-static/range {v2 .. v9}, Lcom/miui/video/biz/videoplus/app/utils/PlusDialogUtils;->showOkCancel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsLandscape:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mState:I

    if-ne v0, v1, :cond_1

    const-string v0, "4"

    goto :goto_0

    :cond_1
    const-string v0, "3"

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mState:I

    if-ne v0, v1, :cond_3

    const-string v0, "1"

    goto :goto_0

    :cond_3
    const-string v0, "2"

    :goto_0
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->clearParams()V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    const-string v2, "delete_in_player_local"

    invoke-virtual {v1, v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->setEventKey(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v1

    const-string v2, "from"

    invoke-virtual {v1, v2, v0}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-static {}, Lcom/miui/video/base/statistics/StatisticsUtils2;->getInstance()Lcom/miui/video/base/statistics/StatisticsUtils2;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/StatisticsUtils2;->reportEventStatistics(Lcom/miui/video/base/statistics/StatisticsEntity;)Z

    return-void
.end method

.method public clickHide()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->isInHiddenDir()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->getCheckedList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$3;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$3;-><init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;)V

    invoke-static {v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/utils/HideUtils;->showUnHideVideoDialog(Landroid/content/Context;Ljava/util/List;Lcom/miui/video/base/common/impl/IUIListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->getCheckedList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$4;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$4;-><init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;)V

    invoke-static {v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/utils/HideUtils;->showHideVideoDialog(Landroid/content/Context;Ljava/util/List;Lcom/miui/video/base/common/impl/IUIListener;)V

    :goto_0
    return-void
.end method

.method public clickMore()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    sget-object v1, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;->SETTING:Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->showMoreDialog(Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;)V

    :cond_0
    return-void
.end method

.method public clickPause()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;->pause()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->setPauseState()V

    :cond_0
    return-void
.end method

.method public clickRotateScreen()V
    .locals 4

    const-string v0, "2"

    iget-boolean v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsLandscape:Z

    if-eqz v1, :cond_0

    const-string v0, "1"

    :cond_0
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->clearParams()V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    const-string v2, "change_orientation_local"

    invoke-virtual {v1, v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->setEventKey(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v1

    const-string v2, "play_id"

    sget-object v3, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v1

    const-string v2, "type"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v1

    const-string v2, "orientation"

    invoke-virtual {v1, v2, v0}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-static {}, Lcom/miui/video/base/statistics/StatisticsUtils2;->getInstance()Lcom/miui/video/base/statistics/StatisticsUtils2;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/StatisticsUtils2;->reportEventStatistics(Lcom/miui/video/base/statistics/StatisticsEntity;)Z

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsLandscape:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mOrientationController:Lcom/miui/video/biz/videoplus/player/OrientationController;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/OrientationController;->requestPortrait()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mOrientationController:Lcom/miui/video/biz/videoplus/player/OrientationController;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/OrientationController;->requestLandscape()V

    :goto_0
    return-void
.end method

.method public clickShare()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsInEditMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsLandscape:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mState:I

    if-ne v0, v1, :cond_1

    const-string v0, "4"

    goto :goto_0

    :cond_1
    const-string v0, "3"

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mState:I

    if-ne v0, v1, :cond_3

    const-string v0, "1"

    goto :goto_0

    :cond_3
    const-string v0, "2"

    :goto_0
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->clearParams()V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    const-string v2, "share_in_player_local"

    invoke-virtual {v1, v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->setEventKey(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v1

    const-string v2, "from"

    invoke-virtual {v1, v2, v0}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-static {}, Lcom/miui/video/base/statistics/StatisticsUtils2;->getInstance()Lcom/miui/video/base/statistics/StatisticsUtils2;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/StatisticsUtils2;->reportEventStatistics(Lcom/miui/video/base/statistics/StatisticsEntity;)Z

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->enterEditMode()V

    return-void
.end method

.method public clickShareScreen()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsLandscape:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordOpenDeviceListSharepageLocal(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordOpenDeviceListSharepageLocal(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->exitEditMode()V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    sget-object v1, Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;->SHARE_SCREEN:Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->showMoreDialog(Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;)V

    :cond_2
    return-void
.end method

.method public clickUserLockRotate()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsUserLockedRotate:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsUserLockedRotate:Z

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsUserLockedRotate:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mOrientationController:Lcom/miui/video/biz/videoplus/player/OrientationController;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/OrientationController;->lock()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->onUserLockRotate()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->onUserLockRotate()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;->onUserLockRotate()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->onUserLockRotate()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mOrientationController:Lcom/miui/video/biz/videoplus/player/OrientationController;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/OrientationController;->unLock()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->onUserUnLockRotate()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->onUserUnLockRotate()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;->onUserUnLockRotate()V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->onUserUnLockRotate()V

    :goto_0
    const-string v0, "2"

    iget-boolean v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsUserLockedRotate:Z

    if-eqz v1, :cond_3

    const-string v0, "1"

    :cond_3
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->clearParams()V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    const-string v2, "lock_screen_local"

    invoke-virtual {v1, v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->setEventKey(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v1

    const-string v2, "play_id"

    sget-object v3, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2, v0}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-static {}, Lcom/miui/video/base/statistics/StatisticsUtils2;->getInstance()Lcom/miui/video/base/statistics/StatisticsUtils2;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/StatisticsUtils2;->reportEventStatistics(Lcom/miui/video/base/statistics/StatisticsEntity;)Z

    return-void
.end method

.method public enterEditMode()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsInEditMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsInEditMode:Z

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-interface {v1, v2, v0}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->selectEntity(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->onEnterEditMode()V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->onEnterEditMode()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->onEnterEditMode()V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->refreshTopBar()V

    return-void
.end method

.method public exitEditMode()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsInEditMode:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsInEditMode:Z

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-interface {v1, v0}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->selectAll(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->onExitEditMode()V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->onExitEditMode()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->onExitEditMode()V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->refreshTopBar()V

    return-void
.end method

.method public getCheckedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->getCheckedList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPlaySpeed()F
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlaySpeed:F

    return v0
.end method

.method public getCurrentPlayState()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mState:I

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getCurrentState()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mState:I

    return v0
.end method

.method public getMediaEntity()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    return-object v0
.end method

.method public hideController(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsShow:Z

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->refreshVisibility(Z)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->refreshImageSubtitleSurface(Z)V

    return-void
.end method

.method public hideSeekBar()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->hideSeekBar()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->hideSeekBar()V

    return-void
.end method

.method public isInEditMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsInEditMode:Z

    return v0
.end method

.method public isInHiddenDir()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->isInHiddenDir()Z

    move-result v0

    return v0
.end method

.method public isInMultiWindowMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->misInMultiWindowMode:Z

    return v0
.end method

.method public isSharingScreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsSharingScreen:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsShow:Z

    return v0
.end method

.method public isUserLockedRotate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsUserLockedRotate:Z

    return v0
.end method

.method public onActivityDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    invoke-interface {v0, p0}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;->unRegisterShareScreenServiceListener(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->release()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->release()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isInEditMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->exitEditMode()V

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsLandscape:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsLandscape:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->clickRotateScreen()V

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public onCheckedListChanged()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->onCheckedListChanged()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->onCheckedListChanged()V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->refreshTopBar()V

    return-void
.end method

.method public onDeviceConnectFail(Lcom/milink/api/v1/type/ErrorCode;)V
    .locals 0

    return-void
.end method

.method public onDeviceConnectSuccess()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsSharingScreen:Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->startShareScreen()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->startShareScreen()V

    return-void
.end method

.method public onDeviceDisconnected()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsSharingScreen:Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->stopShareScreen()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->stopShareScreen()V

    return-void
.end method

.method public onDeviceListChanged()V
    .locals 0

    return-void
.end method

.method public onMultiWindowMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->misInMultiWindowMode:Z

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->refreshRotateBtnVisibility(Z)V

    return-void
.end method

.method public onOrientationChanged(ZI)V
    .locals 2

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsLandscape:Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPendingSeekPositionAtPreview:I

    invoke-interface {v0, p1, p2, v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->onOrientationChanged(ZII)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPendingSeekPositionAtPreview:I

    invoke-interface {v0, p1, p2, v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->onOrientationChanged(ZII)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->refreshVisibility(Z)V

    iget-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsLandscape:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->onOrientationLandscape()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->onOrientationPortrait()V

    :goto_0
    return-void
.end method

.method public onPip(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsInPipMode:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->refreshVisibility(Z)V

    return-void
.end method

.method public onServiceStarted()V
    .locals 0

    return-void
.end method

.method public onServiceStopped()V
    .locals 0

    return-void
.end method

.method public setBitmaps(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "MediaController"

    const-string v1, " getSeekBarBitmapList Fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->setBitmaps(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->setBitmaps(Ljava/util/List;)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->getIndicator()Lcom/miui/video/biz/videoplus/player/widget/indicator/IImagePagerIndicator;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/IImagePagerIndicator;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->getIndicator()Lcom/miui/video/biz/videoplus/player/widget/indicator/IImagePagerIndicator;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/IImagePagerIndicator;->setCurrentItem(I)V

    return-void
.end method

.method public setIndicatorData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->getIndicator()Lcom/miui/video/biz/videoplus/player/widget/indicator/IImagePagerIndicator;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/IImagePagerIndicator;->setIndicatorData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->getIndicator()Lcom/miui/video/biz/videoplus/player/widget/indicator/IImagePagerIndicator;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/IImagePagerIndicator;->setIndicatorData(Ljava/util/List;)V

    return-void
.end method

.method public setNavigation(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->setNavigation(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->setNavigation(Z)V

    return-void
.end method

.method public setPauseState()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mState:I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->setPauseState()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->setPauseState()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->stopUpdatePosition()V

    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 3

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlaySpeed:F

    const-string v0, "MediaController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setPlaySpeed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlaySpeed:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mIsLandscape:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsLandscape:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsLandscape:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->setPlaySpeed(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->setPlaySpeed(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPlayingState()V
    .locals 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mState:I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->setPlayingState()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->setPlayingState()V

    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->getInstance()Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->pauseDecoder(Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isMediaEntityChange:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isMediaEntityChange:Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->is8kVideo(II)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerActivity:Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->getFrameSeekbarBitmaps(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "MediaController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " this is 8k video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iput v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPendingSeekPositionAtPreview:I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setPreviewState()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsUserLockedRotate:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->clickUserLockRotate()V

    :cond_0
    const-string v0, "MediaController"

    const-string v1, " setPreviewState "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mState:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlaySpeed:F

    const-string v0, "MediaController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setPlaySpeed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlaySpeed:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->setPreviewState()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->setPreviewState()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->stopUpdatePosition()V

    return-void
.end method

.method public setShareScreenController(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    invoke-interface {p1, p0}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;->registerShareScreenServiceListener(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;)V

    :cond_0
    return-void
.end method

.method public setViewAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->setViewAlpha(F)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->setViewAlpha(F)V

    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->getIndicator()Lcom/miui/video/biz/videoplus/player/widget/indicator/IImagePagerIndicator;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/IImagePagerIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->getIndicator()Lcom/miui/video/biz/videoplus/player/widget/indicator/IImagePagerIndicator;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/IImagePagerIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    return-void
.end method

.method public showController(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsShow:Z

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->refreshVisibility(Z)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->refreshImageSubtitleSurface(Z)V

    return-void
.end method

.method public startPlaying()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;->startWithoutHideController()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->setPlayingState()V

    :cond_0
    return-void
.end method

.method public startSeeking()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsSeeking:Z

    return-void
.end method

.method public stopSeeking()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mIsSeeking:Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object v0

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPendingSeekPosition:I

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public stopSeekingFromPreview()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    if-eqz v0, :cond_0

    const-string v0, "MediaController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " stopSeekingFromPreview "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPendingSeekPositionAtPreview:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object v0

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPendingSeekPositionAtPreview:I

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;->seekToAtPreview(I)V

    :cond_0
    return-void
.end method

.method public togglePlayState()V
    .locals 3

    const-string v0, "MediaController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "togglePlayState current state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->startPlaying()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->clickPause()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->startPlaying()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateSeekingValue(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;->getDuration()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    mul-int v0, v0, p1

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPendingSeekPosition:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/FormatUtils;->formatPlayTimeWithMillis(J)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->updatePosition(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->updatePosition(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateSeekingValue(JI)V
    .locals 4

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {p3}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object p3

    invoke-interface {p3}, Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;->getDuration()I

    move-result p3

    int-to-long v0, p3

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {p3}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object p3

    invoke-interface {p3}, Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;->getDuration()I

    move-result p3

    div-int/lit16 p3, p3, 0x3e8

    long-to-int p3, p1

    iput p3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPendingSeekPosition:I

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    if-eqz p3, :cond_1

    const-string p3, "MediaController"

    const-string v2, " updateSeekingValue: updatePos"

    invoke-static {p3, v2}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getWidth()I

    move-result p3

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getHeight()I

    move-result v2

    invoke-direct {p0, p3, v2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->is8kVideo(II)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {p3}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;->updatePos(J)V

    goto :goto_0

    :cond_0
    const-string p3, "MediaController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " this is 8k video do not showPreviewFrame"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    cmp-long p3, p1, v0

    if-lez p3, :cond_2

    move-wide p1, v0

    :cond_2
    iget-object p3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {p3, p1, p2, v0, v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->updatePosition(JJ)V

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {p3, p1, p2, v0, v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->updatePosition(JJ)V

    :cond_3
    return-void
.end method

.method public updateSeekingValueStatePreview(JI)V
    .locals 4

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->getInstance()Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    move-result-object p3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->getDuration(Ljava/lang/String;)J

    move-result-wide v0

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    if-eqz p3, :cond_1

    const-string p3, "MediaController"

    const-string v2, " updateSeekingValueStatePreview: updatePos"

    invoke-static {p3, v2}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getWidth()I

    move-result p3

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getHeight()I

    move-result v2

    invoke-direct {p0, p3, v2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->is8kVideo(II)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPlayerController:Lcom/miui/video/biz/videoplus/player/IPlayerController;

    invoke-interface {p3}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;->updatePos(J)V

    goto :goto_0

    :cond_0
    const-string p3, "MediaController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " this is 8k video do not showPreviewFrame"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    long-to-int p3, p1

    iput p3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPendingSeekPositionAtPreview:I

    const-string p3, "MediaController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mPendingSeekPositionAtPreview 0:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPendingSeekPositionAtPreview:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long p3, p1, v0

    if-lez p3, :cond_2

    move-wide p1, v0

    :cond_2
    invoke-static {p1, p2}, Lcom/miui/video/framework/utils/FormatUtils;->formatPlayTimeWithMillis(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/FormatUtils;->formatPlayTimeWithMillis(J)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mPortraitView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {p3, p1, p2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->updatePosition(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->mLandscapeView:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    invoke-interface {p3, p1, p2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->updatePosition(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
