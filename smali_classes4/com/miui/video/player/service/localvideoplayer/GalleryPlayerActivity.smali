.class public Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;
.super Lcom/miui/video/base/widget/CoreFragmentActivity;
.source "GalleryPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$SysEventMonitor;
    }
.end annotation


# static fields
.field public static final ACTION_LOCAL_VIDEO_PLAY:Ljava/lang/String; = "com.miui.videoplayer.LOCAL_VIDEO_PLAY"

.field public static final ACTION_LOCK_PLAY:Ljava/lang/String; = "android.intent.action.VIEW"

.field public static final ACTION_VIDEO_PLAY:Ljava/lang/String; = "duokan.intent.action.VIDEO_PLAY"

.field private static final AI_MUSIC_VIDEO_TAG:Ljava/lang/String; = "960"

.field public static final EXTRA_KEY_PREVIEW_MODE:Ljava/lang/String; = "preview_mode"

.field private static final FASHIONGALLERY_PREVIEW_CLOSED:Ljava/lang/String; = "com.mfashiongallery.emag.PREVIEW_CLOSED"

.field private static final INTENT_KEY_ACTION_SCREENSAVER:Ljava/lang/String; = "com.miui.gallery.ACTION_SCREENSAVER"

.field private static final INTENT_KEY_FROM_SCREENSAVER:Ljava/lang/String; = "screensaver"

.field public static final KEY_START_ACTIVITY_WHEN_LOCKED:Ljava/lang/String; = "StartActivityWhenLocked"

.field private static final MIUI_VIDEO_EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "miui_video_extra_calling_package"

.field private static final PLAY_FROM_FASHION_GALLERY:Ljava/lang/String; = "com.mfashiongallery.emag"

.field private static final SCREENSAVER_ACTION_KILL:Ljava/lang/String; = "screensaver-action-kill"

.field public static final TAG:Ljava/lang/String; = "GalleryPlayerActivity"


# instance fields
.field private aiMusicBtn:Landroid/view/View;

.field private aiMusicTextView:Landroid/widget/TextView;

.field private isAIMusic:Z

.field private mAIMusicAnimators:Landroid/animation/AnimatorSet;

.field public mAnimationMusic:Landroid/view/View;

.field private mBackgroundColor:Ljava/lang/String;

.field private mCallingPackageName:Ljava/lang/String;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mControllerView:Lcom/miui/video/player/service/controller/ControllerView;

.field private mEventMonitor:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$SysEventMonitor;

.field private mFromFashionGallery:Z

.field private mFullScreen:Z

.field private mIntent:Landroid/content/Intent;

.field private mIsAIMusic:Z

.field private mIsFromCameraAndLocked:Z

.field private mIsFromGallery:Z

.field private mIsPreview:Z

.field private mIsScreenSaver:Z

.field private mIsSecret:Z

.field protected mLastBm:Landroid/graphics/Bitmap;

.field public mLastFrame:Landroid/widget/ImageView;

.field public mMusicLoading:Landroid/widget/ImageView;

.field public mMusicSwitch:Landroid/widget/ImageView;

.field private mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

.field private mRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

.field private mStartActivityWhenLock:Z

.field private mSuicideReceiver:Landroid/content/BroadcastReceiver;

.field protected mSupportSlide:Z

.field private mUIHandler:Lcom/miui/video/base/common/task/WeakHandler;

.field private mUri:Landroid/net/Uri;

.field private musicAnimation:Landroid/view/animation/Animation;

.field videoTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/video/base/widget/CoreFragmentActivity;-><init>()V

    new-instance v0, Lcom/miui/video/base/common/task/WeakHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mUIHandler:Lcom/miui/video/base/common/task/WeakHandler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mFullScreen:Z

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mStartActivityWhenLock:Z

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mFromFashionGallery:Z

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIsFromGallery:Z

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIsScreenSaver:Z

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIsSecret:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mBackgroundColor:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mCallingPackageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIntent:Landroid/content/Intent;

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIsAIMusic:Z

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->isAIMusic:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->videoTitle:Ljava/lang/String;

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$6;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$6;-><init>(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mSuicideReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$7;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$7;-><init>(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Lcom/miui/video/player/service/localvideoplayer/PresenterManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->setAnimationMusicWidth(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->isAIMusic:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->isAIMusic:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIsSecret:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)I
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->getLastMinPos()I

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)I
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->getLastMaxPos()I

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->playVideo()V

    return-void
.end method

.method static synthetic access$1800(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->initAiMusicAnimation()V

    return-void
.end method

.method static synthetic access$1900(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mAIMusicAnimators:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->doAfterPermissionGranted()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIsFromCameraAndLocked:Z

    return p0
.end method

.method static synthetic access$500(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mFromFashionGallery:Z

    return p0
.end method

.method static synthetic access$600(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mStartActivityWhenLock:Z

    return p0
.end method

.method static synthetic access$700(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIsScreenSaver:Z

    return p0
.end method

.method static synthetic access$800(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Lorg/videolan/libvlc/MediaMetadataRetriever;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    return-object p0
.end method

.method static synthetic access$902(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;Lorg/videolan/libvlc/MediaMetadataRetriever;)Lorg/videolan/libvlc/MediaMetadataRetriever;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mRetriever:Lorg/videolan/libvlc/MediaMetadataRetriever;

    return-object p1
.end method

.method private checkShowPermissionDetail()V
    .locals 1

    invoke-static {p0}, Lcom/miui/video/base/utils/PermissionUtils;->needShowPermissionDetail(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/miui/video/base/utils/PermissionUtils;->showingCurrentPermissionDetail(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->finish()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x903

    invoke-static {p0, v0}, Lcom/miui/video/base/utils/PermissionUtils;->startPermissionDetailForResult(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->grantPermissionAndContinue()V

    :goto_0
    return-void
.end method

.method private doAfterPermissionGranted()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->handleIntent()V

    return-void
.end method

.method private getLastMaxPos()I
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mUri:Landroid/net/Uri;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/video/player/service/corelocalvideo/manager/LocalSlideSPHelper;->getInstance(Landroid/content/Context;)Lcom/miui/video/player/service/corelocalvideo/manager/LocalSlideSPHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, p0, v2}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->getRealFilePathFromContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/video/player/service/corelocalvideo/manager/LocalSlideSPHelper;->readLocalPos(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getLastMinPos()I
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mUri:Landroid/net/Uri;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/video/player/service/corelocalvideo/manager/LocalSlideSPHelper;->getInstance(Landroid/content/Context;)Lcom/miui/video/player/service/corelocalvideo/manager/LocalSlideSPHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, p0, v2}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->getRealFilePathFromContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/video/player/service/corelocalvideo/manager/LocalSlideSPHelper;->readLocalPos(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getMetaData()V
    .locals 1

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;-><init>(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)V

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->exeIOTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private grantPermissionAndContinue()V
    .locals 1

    invoke-static {p0}, Lcom/miui/video/base/utils/PermissionUtils;->isAllPermissionGrant(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/video/base/utils/PermissionUtils;->requestAllPermissions(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->doAfterPermissionGranted()V

    :goto_0
    return-void
.end method

.method private handleIntent()V
    .locals 6

    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mContext:Landroid/content/Context;

    const-string v2, "SyncSetting"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/video/framework/uri/CUtils;->openHostLink(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "StartActivityWhenLocked"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIsFromCameraAndLocked:Z

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getFullScreenController()Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIsFromCameraAndLocked:Z

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->setIsFromCameraAndLocked(Z)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "screensaver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIsScreenSaver:Z

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "miui_video_extra_calling_package"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mCallingPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mCallingPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->getCallingPackage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mCallingPackageName:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mBackgroundColor:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "com.miui.video.extra.is_secret"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIsSecret:Z

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "preview_mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIsPreview:Z

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->videoTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.videoplayer.LOCAL_VIDEO_PLAY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIsFromGallery:Z

    :cond_1
    sget-object v1, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receive Intent getData mUri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " ; getAction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ; mIsPreview = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIsPreview:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " ; mIsFromCameraAndLocked = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIsFromCameraAndLocked:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIsFromCameraAndLocked:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->TAG:Ljava/lang/String;

    const-string v4, "handleIntent setLockWindowFlags"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/miui/video/common/library/utils/SystemUtils;->setLockWindowFlags(Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->TAG:Ljava/lang/String;

    const-string v4, "handleIntent setWindowFlags"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/miui/video/common/library/utils/SystemUtils;->setWindowFlags(Landroid/app/Activity;)V

    :goto_0
    iget-boolean v1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIsScreenSaver:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.miui.gallery.ACTION_SCREENSAVER"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v4, v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1, v4, v2}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "screensaver-action-kill"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mSuicideReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_3

    :cond_4
    :goto_1
    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleIntent: found screen_saver: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->finish()V

    return-void

    :cond_6
    :goto_3
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "from"

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "com.mfashiongallery.emag"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    iput-boolean v3, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mFromFashionGallery:Z

    :cond_7
    const-string v4, "StartActivityWhenLocked"

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/miui/video/framework/utils/FormatUtils;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mStartActivityWhenLock:Z

    const-string v4, "background"

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mBackgroundColor:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->setRequestedOrientation(I)V

    const-string v3, "fullscreen"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/miui/video/framework/utils/FormatUtils;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mFullScreen:Z

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->videoTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->videoTitle:Ljava/lang/String;

    :cond_8
    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mFromFashionGallery:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->videoTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, " "

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->videoTitle:Ljava/lang/String;

    :cond_9
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIntent:Landroid/content/Intent;

    const-string v2, "mediaTitle"

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->videoTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->setBackground()V

    :cond_a
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    if-nez v0, :cond_b

    goto :goto_5

    :cond_b
    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIsPreview:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->playVideo()V

    goto :goto_4

    :cond_c
    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->getMetaData()V

    :goto_4
    return-void

    :cond_d
    :goto_5
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->finish()V

    return-void
.end method

.method private initAiMusicAnimation()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mAnimationMusic:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/player/service/R$dimen;->bg_ai_music_animation_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    mul-int/lit8 v1, v1, 0x2

    const/4 v0, 0x1

    aput v1, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v5, 0x12c

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->aiMusicTextView:Landroid/widget/TextView;

    const-string v5, "alpha"

    new-array v6, v2, [F

    fill-array-data v6, :array_0

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v5, 0x64

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v5, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$2;

    invoke-direct {v5, p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$2;-><init>(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->initAnimation()V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mAIMusicAnimators:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mAIMusicAnimators:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v1, v2, v4

    aput-object v3, v2, v0

    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mAIMusicAnimators:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$3;

    invoke-direct {v1, p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$3;-><init>(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initAnimation()V
    .locals 8

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->musicAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->musicAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->musicAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->musicAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->musicAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    :cond_0
    return-void
.end method

.method private playVideo()V
    .locals 8

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getVideoViewPresenter()Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getVideoViewPresenter()Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mCallingPackageName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIsFromGallery:Z

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->setCallingPackageName(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getVideoViewPresenter()Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->videoTitle:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mFullScreen:Z

    iget-boolean v6, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIsSecret:Z

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mSupportSlide:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->isAIMusic:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    const/4 v7, 0x1

    :goto_1
    move-object v4, p0

    invoke-virtual/range {v1 .. v7}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->playFromGallery(Landroid/net/Uri;Ljava/lang/String;Landroid/app/Activity;ZZZ)V

    :cond_2
    return-void
.end method

.method private setAnimationMusicWidth(I)V
    .locals 3

    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animation test -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mAnimationMusic:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mAnimationMusic:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setBackground()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mControllerView:Lcom/miui/video/player/service/controller/ControllerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mBackgroundColor:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mControllerView:Lcom/miui/video/player/service/controller/ControllerView;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mBackgroundColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/ControllerView;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mControllerView:Lcom/miui/video/player/service/controller/ControllerView;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/player/service/R$color;->black:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/ControllerView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public cancelAiMusic()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mMusicSwitch:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->cancelAnimation()V

    return-void
.end method

.method public cancelAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mMusicLoading:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mMusicSwitch:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->musicAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->musicAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->needSave()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->showSaveDialog()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->setResult()V

    :cond_1
    invoke-super {p0}, Lcom/miui/video/base/widget/CoreFragmentActivity;->finish()V

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public getRealFilePathFromContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    move-object v5, v0

    check-cast v5, [Ljava/lang/String;

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_1
    const-string p2, "_data"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object p1, v0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0
.end method

.method public hideLastFrame()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mLastFrame:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mLastFrame:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public initAiMusicMarginBottom(Z)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->aiMusicBtn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/player/service/R$dimen;->ai_music_button_margin_bottom_nav:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/player/service/R$dimen;->ai_music_button_margin_bottom:I

    goto :goto_0

    :goto_1
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->aiMusicBtn:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mAnimationMusic:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/miui/video/player/service/R$dimen;->ai_music_animation_margin_bottom_nav:I

    :goto_2
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_3

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/miui/video/player/service/R$dimen;->ai_music_animation_margin_bottom:I

    goto :goto_2

    :goto_3
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mAnimationMusic:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected initBase()V
    .locals 0

    return-void
.end method

.method public initFindViews()V
    .locals 0

    return-void
.end method

.method public initViewsEvent()V
    .locals 0

    return-void
.end method

.method public initViewsValue()V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x4d3

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->grantPermissionAndContinue()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x904

    if-ne p2, v0, :cond_1

    invoke-static {p0}, Lcom/miui/video/base/utils/PermissionUtils;->onPermissionDetailResult(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->grantPermissionAndContinue()V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/base/widget/CoreFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAiMusicSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mMusicSwitch:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->cancelAnimation()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/base/widget/CoreFragmentActivity;->onBackPressed()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/video/base/widget/CoreFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0, p0, p1}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/miui/video/framework/utils/AppUtils;->isFullScreen(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setStatusBarLightMode(Landroid/view/Window;Z)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setStatusBarLightMode(Landroid/view/Window;Z)Z

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate & Build.version.sdk : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/player/service/R$color;->black:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1}, Lcom/miui/video/base/widget/CoreFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/common/library/utils/DeviceUtils;->adjustNotchNotch(Landroid/view/Window;)V

    sget p1, Lcom/miui/video/player/service/R$layout;->lp_gallery_player:I

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->setContentView(I)V

    sget p1, Lcom/miui/video/player/service/R$id;->controller:I

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/video/player/service/controller/ControllerView;

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mControllerView:Lcom/miui/video/player/service/controller/ControllerView;

    sget p1, Lcom/miui/video/player/service/R$id;->lp_last_frame:I

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mLastFrame:Landroid/widget/ImageView;

    sget p1, Lcom/miui/video/player/service/R$id;->ai_music_switch:I

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mMusicSwitch:Landroid/widget/ImageView;

    sget p1, Lcom/miui/video/player/service/R$id;->ai_music_loading:I

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mMusicLoading:Landroid/widget/ImageView;

    sget p1, Lcom/miui/video/player/service/R$id;->ai_music_btn:I

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->aiMusicBtn:Landroid/view/View;

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mMusicSwitch:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/miui/video/player/service/R$id;->music_animation:I

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mAnimationMusic:Landroid/view/View;

    sget p1, Lcom/miui/video/player/service/R$id;->ai_music_text:I

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->aiMusicTextView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/miui/video/base/utils/NavigationUtils;->haveNavigation(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->initAiMusicMarginBottom(Z)V

    const-string p1, "com.miui.videoplayer.LOCAL_VIDEO_PLAY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIsFromGallery:Z

    invoke-static {p0}, Lcom/miui/video/base/utils/NavigationUtils;->haveNavigation(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/miui/video/base/utils/NavigationUtils;->hideNavigationBar(Landroid/app/Activity;)V

    invoke-static {p0, v0}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setTranslucentStatus(Landroid/content/Context;Z)V

    invoke-static {p0, v0}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setStatusBarDarkMode(Landroid/content/Context;Z)V

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->isInMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->setBackground()V

    :cond_1
    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$SysEventMonitor;

    invoke-direct {p1, p0, p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$SysEventMonitor;-><init>(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mEventMonitor:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$SysEventMonitor;

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mEventMonitor:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$SysEventMonitor;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$SysEventMonitor;->start()V

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mUIHandler:Lcom/miui/video/base/common/task/WeakHandler;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mControllerView:Lcom/miui/video/player/service/controller/ControllerView;

    invoke-direct {p1, p0, v1, v2, v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/miui/video/base/common/task/WeakHandler;Lcom/miui/video/player/service/controller/ControllerView;Z)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->checkShowPermissionDetail()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/miui/video/base/widget/CoreFragmentActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mUIHandler:Lcom/miui/video/base/common/task/WeakHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mUIHandler:Lcom/miui/video/base/common/task/WeakHandler;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mEventMonitor:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$SysEventMonitor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mEventMonitor:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$SysEventMonitor;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$SysEventMonitor;->stop()V

    :cond_1
    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIsScreenSaver:Z

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mSuicideReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->TAG:Ljava/lang/String;

    const-string v2, "fail to unregister receiver!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->onActivityDestroy()V

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    :cond_3
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mLastBm:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mLastBm:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mLastBm:Landroid/graphics/Bitmap;

    :cond_4
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/miui/video/base/widget/CoreFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/video/base/widget/CoreFragmentActivity;->onMultiWindowModeChanged(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mAnimationMusic:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mMusicSwitch:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIsAIMusic:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mMusicSwitch:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/miui/video/base/widget/CoreFragmentActivity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {p1, p0, p2}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/miui/video/base/widget/CoreFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->checkShowPermissionDetail()V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->onNewIntent(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/miui/video/base/widget/CoreFragmentActivity;->onPause()V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->onActivityPause()V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6

    new-instance v1, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$4;

    invoke-direct {v1, p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$4;-><init>(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)V

    new-instance v2, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$5;

    invoke-direct {v2, p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$5;-><init>(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)V

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/miui/video/base/utils/PermissionUtils;->onRequestPermissionsResult(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onRestart()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/base/widget/CoreFragmentActivity;->onRestart()V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->onActivityReStart()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/miui/video/base/widget/CoreFragmentActivity;->onResume()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/video/common/library/utils/DeviceUtils;->setFullScreenMode(Z)V

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIsFromCameraAndLocked:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume setLockWindowFlags"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/miui/video/common/library/utils/SystemUtils;->setLockWindowFlags(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume setWindowFlags"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/miui/video/common/library/utils/SystemUtils;->setWindowFlags(Landroid/app/Activity;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->onActivityResume()V

    :cond_1
    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIsFromCameraAndLocked:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/miui/video/framework/utils/SDKUtils;->equalAPI_27_API()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->setShowWhenLocked(Z)V

    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 2

    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/miui/video/base/widget/CoreFragmentActivity;->onStart()V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->onActivityStart()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/miui/video/base/widget/CoreFragmentActivity;->onStop()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/video/common/library/utils/DeviceUtils;->setFullScreenMode(Z)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mPresenter:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->onActivityStop()V

    :cond_0
    invoke-static {p0}, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->getInstance(Landroid/content/Context;)Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->clear()V

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public runAction(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public showLastFrame()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mLastFrame:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mLastBm:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mLastFrame:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mLastFrame:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mLastBm:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public startMusicAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mAnimationMusic:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mMusicSwitch:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mMusicLoading:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mMusicLoading:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->musicAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public updateAIMusicUI(Z)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    invoke-static {}, Lcom/miui/video/framework/utils/SDKUtils;->equalAPI_24_NOUGAT()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mIsAIMusic:Z

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->initAnimation()V

    invoke-static {p0}, Lcom/miui/video/base/utils/AIMusicSPHelper;->getInstance(Landroid/content/Context;)Lcom/miui/video/base/utils/AIMusicSPHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/base/utils/AIMusicSPHelper;->isFirst()Z

    move-result p1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mAnimationMusic:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mAnimationMusic:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$9;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$9;-><init>(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mAnimationMusic:Landroid/view/View;

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$10;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$10;-><init>(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)V

    const-wide/16 v1, 0x9c4

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mAnimationMusic:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mMusicSwitch:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
