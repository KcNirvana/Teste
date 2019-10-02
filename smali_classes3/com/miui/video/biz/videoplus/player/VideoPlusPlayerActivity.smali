.class public Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;
.super Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;
.source "VideoPlusPlayerActivity.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/player/IPlayerActivity;
.implements Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapsObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$AudioFocusListener;,
        Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;
    }
.end annotation


# static fields
.field public static final EXTRA_AUTO_PLAY:Ljava/lang/String; = "auto_play"

.field public static final EXTRA_CURRENT_MEDIA_POSITION:Ljava/lang/String; = "current_media_position"

.field public static final EXTRA_EDIT_MODE:Ljava/lang/String; = "edit_mode"

.field public static final EXTRA_TRANSITION_ANIM:Ljava/lang/String; = "transition_anim"

.field private static final MSG_GET_SEEK_BAR_BITMAP_LIST:I = 0x66

.field private static final TAG:Ljava/lang/String; = "VideoPlusPlayerActivity"

.field private static final TOKEN_GET_BITMAPS:Ljava/lang/String; = "TOKEN_GET_BITMAPS"

.field private static final TOKEN_PAUSE_DECODER:Ljava/lang/String; = "TOKEN_PAUSE_DECODER"

.field private static final TOKEN_PREVIEW:Ljava/lang/String; = "TOKEN_PREVIEW"

.field private static final TOKEN_SHOW_FRAME:Ljava/lang/String; = "TOKEN_SHOW_FRAME"

.field private static final TOKEN_START_DECODER:Ljava/lang/String; = "TOKEN_START_DECODER"

.field private static mIsRemoveVideo:Z

.field private static sIsInPipMode:Z


# instance fields
.field private activityClassName:[Ljava/lang/String;

.field private fragmentMgr:Ljava/lang/Object;

.field private mAudioFocusListener:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$AudioFocusListener;

.field private mAutoPlay:Z

.field private mBg:Landroid/view/View;

.field private mCheckedEntityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentMediaPosition:I

.field private mHistoryEntityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/LocalVideoEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mInitActivityBeight:F

.field private mIsInEditMode:Z

.field private mIsInHiddenDir:Z

.field private mIsInMultiWindowMode:Z

.field private mIsProcessingEnterTransition:Z

.field private mIsResuming:Z

.field private mLastEventTime:J

.field private mLaunchToEditMode:Z

.field private mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

.field private mMediaEntityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaSession:Lcom/miui/video/player/service/utils/media/MiMediaSession;

.field private mMiAudioManager:Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;

.field private mNeedEnterTransition:Z

.field private mOnReceiveMediaEventListener:Lcom/miui/video/player/service/utils/media/MediaEventReceiver$MediaEventCallBack;

.field private mOrientation:I

.field private mOrientationController:Lcom/miui/video/biz/videoplus/player/OrientationController;

.field private mPagerAdapter:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;

.field private mPipExitReceiver:Lcom/miui/video/biz/videoplus/app/business/moment/utils/PipExitReceiver;

.field private mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

.field private mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

.field private mTaskHandler:Landroid/os/Handler;

.field private mTaskThread:Landroid/os/HandlerThread;

.field private mViewPager:Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;

.field private noteStateNotSavedMethod:Ljava/lang/reflect/Method;

.field private updateEditMode:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;-><init>()V

    new-instance v0, Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-direct {v0}, Lcom/miui/video/base/statistics/StatisticsEntity;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mOrientation:I

    new-instance v1, Lcom/miui/video/biz/videoplus/player/OrientationController;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/player/OrientationController;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mOrientationController:Lcom/miui/video/biz/videoplus/player/OrientationController;

    new-instance v1, Lcom/miui/video/biz/videoplus/app/business/moment/utils/PipExitReceiver;

    invoke-direct {v1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/PipExitReceiver;-><init>()V

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mPipExitReceiver:Lcom/miui/video/biz/videoplus/app/business/moment/utils/PipExitReceiver;

    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mInitActivityBeight:F

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mIsInMultiWindowMode:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mTaskThread:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mTaskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$AudioFocusListener;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$AudioFocusListener;-><init>(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;)V

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mAudioFocusListener:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$AudioFocusListener;

    new-instance v1, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$1;-><init>(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;)V

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mOnReceiveMediaEventListener:Lcom/miui/video/player/service/utils/media/MediaEventReceiver$MediaEventCallBack;

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mIsResuming:Z

    const-string v0, "Activity"

    const-string v1, "FragmentActivity"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->activityClassName:[Ljava/lang/String;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$5;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$5;-><init>(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->updateEditMode:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;)Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mAutoPlay:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mAutoPlay:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mLaunchToEditMode:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;)Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    return-object p0
.end method

.method static synthetic access$1300()Z
    .locals 1

    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mIsRemoveVideo:Z

    return v0
.end method

.method static synthetic access$1302(Z)Z
    .locals 0

    sput-boolean p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mIsRemoveVideo:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaEntityList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;)Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mViewPager:Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mCurrentMediaPosition:I

    return p0
.end method

.method static synthetic access$802(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mCurrentMediaPosition:I

    return p1
.end method

.method static synthetic access$900(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mNeedEnterTransition:Z

    return p0
.end method

.method static synthetic access$902(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mNeedEnterTransition:Z

    return p1
.end method

.method public static createIntent(Landroid/content/Context;IZZZ)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "current_media_position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "transition_anim"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "auto_play"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "edit_mode"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-class p1, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    return-object v0
.end method

.method private varargs getDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :goto_0
    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static hideNavigationBar(Landroid/app/Activity;)V
    .locals 3

    const/16 v0, 0x1107

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v2, v1, 0x2000

    if-ne v1, v2, :cond_0

    const/16 v0, 0x3107

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private invokeFragmentManagerNoteStateNotSaved()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->noteStateNotSavedMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->fragmentMgr:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->noteStateNotSavedMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->fragmentMgr:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->activityClassName:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->activityClassName:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_3
    const-string v2, "mFragments"

    invoke-direct {p0, v0, v2}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->prepareField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->fragmentMgr:Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->fragmentMgr:Ljava/lang/Object;

    const-string v2, "noteStateNotSaved"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->getDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->noteStateNotSavedMethod:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->noteStateNotSavedMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->noteStateNotSavedMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->fragmentMgr:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method

.method public static isInPipMode()Z
    .locals 1

    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->sIsInPipMode:Z

    return v0
.end method

.method private onOrientationChanged(I)V
    .locals 2

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mOrientation:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mOrientation:I

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->refreshView()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->onOrientationChanged(ZI)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->onEnterEditMode()V

    :cond_2
    iget-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mIsResuming:Z

    if-nez p1, :cond_3

    sget-boolean p1, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->sIsInPipMode:Z

    :cond_3
    return-void
.end method

.method private prepareField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    throw p2

    :cond_0
    new-instance p1, Ljava/lang/NoSuchFieldException;

    invoke-direct {p1}, Ljava/lang/NoSuchFieldException;-><init>()V

    throw p1
.end method

.method private refreshView()V
    .locals 4

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mOrientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mIsProcessingEnterTransition:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isUserLockedRotate()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, v2}, Lcom/miui/video/framework/utils/AppUtils;->applyFullScreen(Landroid/app/Activity;Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mBg:Landroid/view/View;

    sget v3, Lcom/miui/video/biz/videoplus/R$color;->c_black:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-static {p0}, Lcom/miui/video/base/utils/NavigationUtils;->haveNavigation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->hideNavigationBar(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->setNavigation(Z)V

    goto :goto_2

    :cond_1
    :goto_0
    invoke-static {p0, v2}, Lcom/miui/video/framework/utils/AppUtils;->applyFullScreen(Landroid/app/Activity;Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mBg:Landroid/view/View;

    sget v1, Lcom/miui/video/biz/videoplus/R$color;->c_white:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-static {p0}, Lcom/miui/video/base/utils/NavigationUtils;->haveNavigation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->showNavigationBar(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-virtual {v0, v2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->setNavigation(Z)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mIsProcessingEnterTransition:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p0, v2}, Lcom/miui/video/framework/utils/AppUtils;->applyFullScreen(Landroid/app/Activity;Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mBg:Landroid/view/View;

    sget v3, Lcom/miui/video/biz/videoplus/R$color;->c_black:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-static {p0}, Lcom/miui/video/base/utils/NavigationUtils;->haveNavigation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->hideNavigationBar(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->setNavigation(Z)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {p0, v1}, Lcom/miui/video/framework/utils/AppUtils;->applyFullScreen(Landroid/app/Activity;Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mBg:Landroid/view/View;

    sget v3, Lcom/miui/video/biz/videoplus/R$color;->c_white:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-static {p0}, Lcom/miui/video/base/utils/NavigationUtils;->haveNavigation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->showNavigationBar(Landroid/app/Activity;)V

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mIsInMultiWindowMode:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->setNavigation(Z)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-virtual {v0, v2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->setNavigation(Z)V

    :cond_6
    :goto_2
    invoke-static {p0, v2}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setStatusBarDarkMode(Landroid/content/Context;Z)V

    return-void
.end method

.method private refreshViewNavigationBar()V
    .locals 2

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mIsProcessingEnterTransition:Z

    if-eqz v0, :cond_3

    :cond_1
    invoke-static {p0}, Lcom/miui/video/base/utils/NavigationUtils;->haveNavigation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mIsInMultiWindowMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->setNavigation(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->setNavigation(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static showNavigationBar(Landroid/app/Activity;)V
    .locals 3

    const/16 v0, 0x700

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v2, v1, 0x2000

    if-ne v1, v2, :cond_0

    const/16 v0, 0x2700

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected cancleLastRequest()V
    .locals 0

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->getInstance()Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->cancleLastRequestBitmapList()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p1, "VideoPlusPlayerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "yyyyy KeyEvent.KEYCODE_HEADSETHOOK"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mLastEventTime:J

    sub-long v3, v0, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mLastEventTime:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->togglePlayState()V

    :cond_0
    iput-wide v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mLastEventTime:J

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public finish()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->finish()V

    const-string v0, "VideoPlusPlayerActivity"

    const-string v1, " finish "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->overridePendingTransition(II)V

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

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mCheckedEntityList:Ljava/util/List;

    return-object v0
.end method

.method public getCurpageNextEntity(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaEntityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaEntityList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaEntityList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaEntityList:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public getDefaultActivityBright()F
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mInitActivityBeight:F

    return v0
.end method

.method public getFrameSeekbarBitmaps(Ljava/lang/String;)V
    .locals 1

    const-string p1, "TOKEN_GET_BITMAPS"

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->removeAsyncTask(Ljava/lang/Object;)V

    const-string p1, "TOKEN_SHOW_FRAME"

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->removeAsyncTask(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->cancleLastRequest()V

    new-instance p1, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$2;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$2;-><init>(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;)V

    const-string v0, "TOKEN_GET_BITMAPS"

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->postAsyncTask(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public getHistoryVideoEntity(Ljava/lang/String;)Lcom/miui/video/base/database/LocalVideoEntity;
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mHistoryEntityList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mHistoryEntityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mHistoryEntityList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/base/database/LocalVideoEntity;

    invoke-virtual {v2}, Lcom/miui/video/base/database/LocalVideoEntity;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mHistoryEntityList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/base/database/LocalVideoEntity;

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getNextEntity(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaEntityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaEntityList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaEntityList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaEntityList:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u89c6\u9891+\u64ad\u653e\u9875"

    return-object v0
.end method

.method public getPrevEntity(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaEntityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaEntityList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-lez v0, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaEntityList:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method protected getSeekBarAllBitmaps()V
    .locals 4

    const-string v0, "VideoPlusPlayerActivity"

    const-string v1, " getSeekBarBitmapList start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$dimen;->frame_controller_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x4

    div-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->getMediaEntity()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->getInstance()Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->getMediaEntity()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->getSeekBarBitmapList(Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    const-string v0, "VideoPlusPlayerActivity"

    const-string v1, " setPreviewState mMediaEntity NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public hideController()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->refreshView()V

    return-void
.end method

.method public initBase()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->initBase()V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setStatusBarDarkMode(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/common/library/utils/DeviceUtils;->adjustNotchNotch(Landroid/view/Window;)V

    return-void
.end method

.method public initFindViews()V
    .locals 6

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->bg:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mBg:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->viewpager:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mViewPager:Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mViewPager:Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;->setOffscreenPageLimit(I)V

    new-instance v0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mPagerAdapter:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mViewPager:Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mPagerAdapter:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;

    invoke-virtual {v0, v2}, Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mViewPager:Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mCurrentMediaPosition:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;->setCurrentItem(IZ)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mPagerAdapter:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mCurrentMediaPosition:I

    invoke-static {v0, v2}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->access$500(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;I)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->view_pager_parent:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v2, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$4;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$4;-><init>(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, Lcom/miui/video/framework/utils/SDKUtils;->equalAPI_24_NOUGAT()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->isInMultiWindowMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mIsInMultiWindowMode:Z

    :cond_0
    new-instance v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    sget v2, Lcom/miui/video/biz/videoplus/R$id;->portrait_media_controller:I

    invoke-virtual {p0, v2}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;

    sget v4, Lcom/miui/video/biz/videoplus/R$id;->landscape_media_controller:I

    invoke-virtual {p0, v4}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    iget-object v5, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mOrientationController:Lcom/miui/video/biz/videoplus/player/OrientationController;

    invoke-direct {v0, p0, v2, v4, v5}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;-><init>(Lcom/miui/video/biz/videoplus/player/IPlayerActivity;Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;Lcom/miui/video/biz/videoplus/player/OrientationController;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mViewPager:Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;

    invoke-virtual {v0, v2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaEntityList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->setIndicatorData(Ljava/util/List;)V

    new-instance v0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    invoke-virtual {v0, v2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->setShareScreenController(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    iget-boolean v2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mIsInMultiWindowMode:Z

    invoke-virtual {v0, v2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->onMultiWindowMode(Z)V

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mLaunchToEditMode:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mNeedEnterTransition:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->enterEditMode()V

    :cond_1
    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mNeedEnterTransition:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mIsProcessingEnterTransition:Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mBg:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-virtual {v0, v3}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->hideController(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->onOrientationChanged(I)V

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

.method public isCurPageAllVideo()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaEntityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaEntityList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isVideo()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isInEditMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mIsInEditMode:Z

    return v0
.end method

.method public isInHiddenDir()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mIsInHiddenDir:Z

    return v0
.end method

.method public isLastOne()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mViewPager:Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaEntityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public losdSeekBarBitmaps(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->removeUIMessages(I)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->runUIMessage(ILjava/lang/Object;J)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "VideoPlusPlayerActivity"

    const-string v1, " onBackPressed "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mLaunchToEditMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mPagerAdapter:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mPagerAdapter:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->access$300(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;)Lcom/miui/video/biz/videoplus/player/IPlayerFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mPagerAdapter:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->access$300(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;)Lcom/miui/video/biz/videoplus/player/IPlayerFragment;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const-string v0, "VideoPlusPlayerActivity"

    const-string v1, " super.onBackPressed "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mOrientationController:Lcom/miui/video/biz/videoplus/player/OrientationController;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/player/OrientationController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->onOrientationChanged(I)V

    const-string v0, "2"

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string v0, "1"

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {p1}, Lcom/miui/video/base/statistics/StatisticsEntity;->clearParams()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    const-string v1, "change_orientation_local"

    invoke-virtual {p1, v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->setEventKey(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object p1

    const-string v1, "play_id"

    sget-object v2, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayID:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object p1

    const-string v1, "type"

    const-string v2, "2"

    invoke-virtual {p1, v1, v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object p1

    const-string v1, "orientation"

    invoke-virtual {p1, v1, v0}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-static {}, Lcom/miui/video/base/statistics/StatisticsUtils2;->getInstance()Lcom/miui/video/base/statistics/StatisticsUtils2;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {p1, v0}, Lcom/miui/video/base/statistics/StatisticsUtils2;->reportEventStatistics(Lcom/miui/video/base/statistics/StatisticsEntity;)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "VideoPlusPlayerActivity"

    const-string v1, " onCreate "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mPipExitReceiver:Lcom/miui/video/biz/videoplus/app/business/moment/utils/PipExitReceiver;

    invoke-virtual {p1, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/PipExitReceiver;->onAttach(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mPipExitReceiver:Lcom/miui/video/biz/videoplus/app/business/moment/utils/PipExitReceiver;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/PipExitReceiver;->onCreate()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "history"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v2, "VideoPlusPlayerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " historyVideoUri  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getMediaWritter()Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;->queryAllByPath(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaEntityList:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaEntityList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v2, "VideoPlusPlayerActivity"

    const-string v3, " historyVideoUri entity null "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils;->queryFileFromMediaStore(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "VideoPlusPlayerActivity"

    const-string v3, " find file from VideoQueryUtils"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaEntityList:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaEntityList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getCurrPageList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaEntityList:Ljava/util/List;

    :cond_2
    :goto_0
    invoke-static {}, Lcom/miui/video/base/database/CLVDatabase;->getInstance()Lcom/miui/video/base/database/CLVDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/base/database/CLVDatabase;->queryHistoryList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mHistoryEntityList:Ljava/util/List;

    const-string v0, "current_media_position"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mCurrentMediaPosition:I

    const-string v0, "transition_anim"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mNeedEnterTransition:Z

    const-string v0, "auto_play"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mAutoPlay:Z

    const-string v0, "edit_mode"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mLaunchToEditMode:Z

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaEntityList:Ljava/util/List;

    if-eqz p1, :cond_8

    iget p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mCurrentMediaPosition:I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaEntityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaEntityList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isHidded()Z

    move-result p1

    if-eqz p1, :cond_4

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mIsInHiddenDir:Z

    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mCheckedEntityList:Ljava/util/List;

    iget-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mLaunchToEditMode:Z

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getCheckList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mCheckedEntityList:Ljava/util/List;

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getCheckList()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mOrientationController:Lcom/miui/video/biz/videoplus/player/OrientationController;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/OrientationController;->onCreate()V

    sget p1, Lcom/miui/video/biz/videoplus/R$layout;->activity_videoplus_player:I

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/miui/video/biz/videoplus/player/utils/SystemUtils;->getActivityBrightness(Landroid/app/Activity;)F

    move-result p1

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mInitActivityBeight:F

    sget-boolean p1, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz p1, :cond_6

    const-string p1, "VideoPlusPlayerActivity"

    const-string v1, " onCreate  Thread-VideoPlus-Task"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/os/HandlerThread;

    const-string v1, "play_task_thread"

    invoke-direct {p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mTaskThread:Landroid/os/HandlerThread;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mTaskThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mTaskThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mTaskHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->getInstance()Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->registerSeekBarBitmapsObserver(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapsObserver;)V

    const-string p1, "VideoPlusPlayerActivity"

    const-string v1, " onCreate  Thread-VideoPlus-Task created"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance p1, Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMiAudioManager:Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/framework/FrameworkConfig;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/common/library/utils/DeviceUtils;->getImeiId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/common/library/utils/DeviceUtils;->getImeiMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sput-object p1, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sImei:Ljava/lang/String;

    :cond_7
    const-string v1, "VideoPlusPlayerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " imei "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->setPlayType(I)V

    return-void

    :cond_8
    :goto_1
    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    sget v0, Lcom/miui/video/biz/videoplus/R$string;->plus_player_video_not_support:I

    invoke-virtual {p1, v0}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->onDestroy()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->requestAudioFocus(Z)Z

    const-string v0, "VideoPlusPlayerActivity"

    const-string v1, "  onDestroy "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mPipExitReceiver:Lcom/miui/video/biz/videoplus/app/business/moment/utils/PipExitReceiver;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/PipExitReceiver;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mPipExitReceiver:Lcom/miui/video/biz/videoplus/app/business/moment/utils/PipExitReceiver;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mOrientationController:Lcom/miui/video/biz/videoplus/player/OrientationController;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/player/OrientationController;->onDestroy()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mOrientationController:Lcom/miui/video/biz/videoplus/player/OrientationController;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mPagerAdapter:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mPagerAdapter:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mCurrentMediaPosition:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->access$100(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;IZ)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mPagerAdapter:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->access$200(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mPagerAdapter:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;

    :cond_0
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mBg:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mBg:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mBg:Landroid/view/View;

    :cond_1
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;->isConnectedDevice()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;->disconnectDevice()V

    :cond_2
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;->isShareScreenServiceRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;->stopShareScreenService()V

    :cond_3
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mShareScreenController:Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;->releaseShareScreenService()V

    :cond_4
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->onActivityDestroy()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    :cond_5
    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaSession:Lcom/miui/video/player/service/utils/media/MiMediaSession;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMiAudioManager:Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMiAudioManager:Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;->destroyListen()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMiAudioManager:Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;

    :cond_6
    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mAudioFocusListener:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$AudioFocusListener;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mTaskHandler:Landroid/os/Handler;

    if-eqz v1, :cond_7

    const-string v1, "VideoPlusPlayerActivity"

    const-string v2, "  onDestroy mTaskHandler "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mTaskHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->cancleLastRequest()V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mTaskHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mTaskHandler:Landroid/os/Handler;

    :cond_7
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mTaskThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_8

    const-string v1, "VideoPlusPlayerActivity"

    const-string v2, "  onDestroy mTaskThread"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mTaskThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mTaskThread:Landroid/os/HandlerThread;

    :cond_8
    sget-boolean v1, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->getInstance()Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->unRegisterSeekBarBitmapsObserver()V

    :cond_9
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mPagerAdapter:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mPagerAdapter:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->access$200(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mPagerAdapter:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;

    :cond_a
    const-string v0, "VideoPlusPlayerActivity"

    const-string v1, " onDestroy end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onEnterEditMode()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mIsInEditMode:Z

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/miui/video/biz/videoplus/R$dimen;->dp_175:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/miui/video/biz/videoplus/R$dimen;->top_bar_height_landscape:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/video/biz/videoplus/R$dimen;->dp_13:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/video/biz/videoplus/R$dimen;->dp_13:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/video/common/library/utils/DeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/video/biz/videoplus/R$dimen;->top_bar_height_portrait:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/video/biz/videoplus/R$dimen;->dp_13:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/video/biz/videoplus/R$dimen;->dp_250:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    :goto_0
    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mViewPager:Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, v4, v2}, Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;->setPadding(IIII)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mViewPager:Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/video/biz/videoplus/R$dimen;->dp_13:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;->setPageMargin(I)V

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mOrientation:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$dimen;->dp_175:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$dimen;->dp_30:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mViewPager:Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, v0, v4, v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mPagerAdapter:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->access$700(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/player/IPlayerFragment;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/IPlayerFragment;->onEnterEditMode()V

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mLaunchToEditMode:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mPagerAdapter:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->access$700(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mViewPager:Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->updateEditMode:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mViewPager:Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->updateEditMode:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method public onEnterTransitionEnd()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->showController(Z)V

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mLaunchToEditMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->enterEditMode()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mIsProcessingEnterTransition:Z

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    move-result-object v0

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mCurrentMediaPosition:I

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->change(I)V

    return-void
.end method

.method public onEnterTransitionStart()V
    .locals 0

    return-void
.end method

.method public onExitEditMode()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mLaunchToEditMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mLaunchToEditMode:Z

    iput-boolean v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mIsInEditMode:Z

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->finish()V

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mLaunchToEditMode:Z

    iput-boolean v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mIsInEditMode:Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mViewPager:Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mViewPager:Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;->setPadding(IIII)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mViewPager:Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;->setPageMargin(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mPagerAdapter:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->access$700(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/player/IPlayerFragment;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/IPlayerFragment;->onExitEditMode()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mPagerAdapter:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onExitTransitionEnd()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onExitTransitionStart()V
    .locals 0

    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mIsInMultiWindowMode:Z

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-virtual {p2, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->onMultiWindowMode(Z)V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->refreshViewNavigationBar()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->onPause()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mOrientationController:Lcom/miui/video/biz/videoplus/player/OrientationController;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/OrientationController;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mIsResuming:Z

    const-string v0, "VideoPlusPlayerActivity"

    const-string v1, "MediaEventReceiver.unRegister "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaSession:Lcom/miui/video/player/service/utils/media/MiMediaSession;

    invoke-static {p0, v0}, Lcom/miui/video/player/service/utils/media/MediaEventReceiver;->unRegister(Landroid/content/Context;Lcom/miui/video/player/service/utils/media/MiMediaSession;)V

    return-void
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    sput-boolean p1, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->sIsInPipMode:Z

    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->sIsInPipMode:Z

    if-nez v0, :cond_0

    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p2}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->onOrientationChanged(I)V

    :goto_0
    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-virtual {p2, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->onPip(Z)V

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mPagerAdapter:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->access$300(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;)Lcom/miui/video/biz/videoplus/player/IPlayerFragment;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lcom/miui/video/biz/videoplus/player/IPlayerFragment;->onPip(Z)V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->onResume()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mOrientationController:Lcom/miui/video/biz/videoplus/player/OrientationController;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/OrientationController;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mIsResuming:Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaSession:Lcom/miui/video/player/service/utils/media/MiMediaSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaSession:Lcom/miui/video/player/service/utils/media/MiMediaSession;

    invoke-virtual {v0}, Lcom/miui/video/player/service/utils/media/MiMediaSession;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/miui/video/player/service/utils/media/MiMediaSession;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mOnReceiveMediaEventListener:Lcom/miui/video/player/service/utils/media/MediaEventReceiver$MediaEventCallBack;

    invoke-direct {v0, p0, v1}, Lcom/miui/video/player/service/utils/media/MiMediaSession;-><init>(Landroid/content/Context;Lcom/miui/video/player/service/utils/media/MediaEventReceiver$MediaEventCallBack;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaSession:Lcom/miui/video/player/service/utils/media/MiMediaSession;

    :cond_1
    const-string v0, "VideoPlusPlayerActivity"

    const-string v1, "MediaEventReceiver.register "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaSession:Lcom/miui/video/player/service/utils/media/MiMediaSession;

    invoke-static {p0, v0}, Lcom/miui/video/player/service/utils/media/MediaEventReceiver;->register(Landroid/content/Context;Lcom/miui/video/player/service/utils/media/MiMediaSession;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string p1, "VideoPlusPlayerActivity"

    const-string v0, " onSaveInstanceState "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->invokeFragmentManagerNoteStateNotSaved()V

    const-string p1, "VideoPlusPlayerActivity"

    const-string v0, " onSaveInstanceState invokeFragmentManagerNoteStateNotSaved "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->onStart()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mOrientationController:Lcom/miui/video/biz/videoplus/player/OrientationController;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/OrientationController;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->onStop()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mOrientationController:Lcom/miui/video/biz/videoplus/player/OrientationController;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/OrientationController;->onStop()V

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    const/16 p1, 0x66

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p3, Ljava/util/List;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-virtual {p1, p3}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->setBitmaps(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUserLockRotate()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mViewPager:Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;->setScrollEnabled(Z)V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->refreshView()V

    return-void
.end method

.method public onUserUnLockRotate()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mViewPager:Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;->setScrollEnabled(Z)V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->refreshView()V

    return-void
.end method

.method public playNext()I
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mViewPager:Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaEntityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mPagerAdapter:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->access$400(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;I)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mViewPager:Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;

    invoke-virtual {v1, v0}, Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaEntityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mPagerAdapter:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->access$400(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;I)V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mPagerAdapter:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;

    invoke-static {v0, v3}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->access$400(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mViewPager:Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;

    invoke-virtual {v0, v3}, Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;->setCurrentItem(I)V

    :goto_0
    return v3
.end method

.method protected final postAsyncTask(Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->postAsyncTaskDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected final postAsyncTask(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->postAsyncTaskDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)V

    return-void
.end method

.method protected final postAsyncTaskDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mTaskHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected final postAsyncTaskDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mTaskHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mTaskHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :cond_0
    return-void
.end method

.method public refreshSeekBarBitmaps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->losdSeekBarBitmaps(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected final removeAllAsyncTask()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mTaskHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected final removeAsyncTask(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mTaskHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected final removeAsyncTask(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mTaskHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeCheckedList()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mViewPager:Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;->forbiddenSlide()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaEntityList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mCheckedEntityList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mCheckedEntityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mPagerAdapter:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaEntityList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->setIndicatorData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mViewPager:Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/widget/VideoPlusViewPager;->enableSlide()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaEntityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->finish()V

    :cond_0
    return-void
.end method

.method public removeMediaEntity(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V
    .locals 2

    const-string v0, "VideoPlusPlayerActivity"

    const-string v1, " removeMediaEntity "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mIsRemoveVideo:Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaEntityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mCheckedEntityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mPagerAdapter:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$FragmentPagerAdapter;->notifyDataSetChanged()V

    const/4 p1, 0x0

    sput-boolean p1, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mIsRemoveVideo:Z

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaEntityList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->setIndicatorData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaEntityList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->finish()V

    :cond_0
    return-void
.end method

.method public requestAudioFocus(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMiAudioManager:Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMiAudioManager:Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMiAudioManager:Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mAudioFocusListener:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$AudioFocusListener;

    invoke-virtual {v0, p1, v1}, Lcom/miui/video/biz/videoplus/app/audio/MiAudioManager;->requestAudioFocus(ZLandroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    move-result p1

    return p1
.end method

.method public runAction(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 3

    const-string v0, "VideoPlusPlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runAction() called with: action = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], what = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], obj = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p3

    const/4 v0, 0x0

    const v1, 0x1e644b68

    if-eq p3, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "VIDEO_PLUS_PLAY_STATE_CHANGE"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x1

    if-ne p2, p1, :cond_3

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->requestAudioFocus(Z)Z

    goto :goto_2

    :cond_3
    const/4 p1, 0x2

    if-ne p2, p1, :cond_4

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->requestAudioFocus(Z)Z

    :cond_4
    :goto_2
    return-void
.end method

.method public selectAll(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaEntityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mCheckedEntityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mCheckedEntityList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaEntityList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mCheckedEntityList:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaEntityList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->onCheckedListChanged()V

    goto :goto_2

    :cond_1
    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mCheckedEntityList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mCheckedEntityList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setChecked(Z)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mCheckedEntityList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->onCheckedListChanged()V

    :cond_3
    :goto_2
    return-void
.end method

.method public selectEntity(IZ)V
    .locals 1

    if-ltz p1, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaEntityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaEntityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isChecked()Z

    move-result v0

    if-ne v0, p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setChecked(Z)V

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mCheckedEntityList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mCheckedEntityList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->onCheckedListChanged()V

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public selectEntity(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;Z)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isChecked()Z

    move-result v0

    if-ne v0, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setChecked(Z)V

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mCheckedEntityList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mCheckedEntityList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mMediaControllerPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->onCheckedListChanged()V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setKeepScreenOn(Z)V

    return-void
.end method

.method public showController()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->refreshView()V

    return-void
.end method

.method public showPreviewFrameAtTime(Landroid/view/Surface;JLjava/lang/String;)V
    .locals 7

    const-string v0, "TOKEN_SHOW_FRAME"

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->removeAsyncTask(Ljava/lang/Object;)V

    new-instance v0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$3;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$3;-><init>(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;Ljava/lang/String;Landroid/view/Surface;J)V

    const-string p1, "TOKEN_SHOW_FRAME"

    invoke-virtual {p0, v0, p1}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->postAsyncTask(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public updateBackgroundAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mBg:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->mBg:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method
