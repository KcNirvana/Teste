.class public Lcom/miui/video/biz/videoplus/player/OrientationController;
.super Ljava/lang/Object;
.source "OrientationController.java"

# interfaces
.implements Lcom/miui/video/player/service/localvideoplayer/utils/LifeCycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/player/OrientationController$OrientationRequest;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCurrentOrientation:I

.field private mIsUserLocked:Z

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mOrientationRequest:Lcom/miui/video/biz/videoplus/player/OrientationController$OrientationRequest;

.field private mRequestedOrientation:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/OrientationController;->mRequestedOrientation:I

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/OrientationController;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/player/OrientationController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/videoplus/player/OrientationController;->mIsUserLocked:Z

    return p0
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/player/OrientationController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/OrientationController;->isSystemRotationLocked()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/miui/video/biz/videoplus/player/OrientationController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/OrientationController;->handleOrientationChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/video/biz/videoplus/player/OrientationController;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/OrientationController;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private calculateOrientation(I)I
    .locals 3

    const/16 v0, 0x2d

    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    :cond_0
    const/16 v1, 0x13b

    if-lt p1, v1, :cond_2

    const/16 v2, 0x168

    if-ge p1, v2, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/16 v2, 0x87

    if-lt p1, v0, :cond_3

    if-ge p1, v2, :cond_3

    const/16 p1, 0x8

    return p1

    :cond_3
    const/16 v0, 0xe1

    if-lt p1, v2, :cond_4

    if-ge p1, v0, :cond_4

    const/16 p1, 0x9

    return p1

    :cond_4
    if-lt p1, v0, :cond_5

    if-ge p1, v1, :cond_5

    const/4 p1, 0x0

    return p1

    :cond_5
    const/4 p1, -0x1

    return p1
.end method

.method private handleOrientationChanged(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/OrientationController;->calculateOrientation(I)I

    move-result p1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/OrientationController;->mRequestedOrientation:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/OrientationController;->mRequestedOrientation:I

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    iput v1, p0, Lcom/miui/video/biz/videoplus/player/OrientationController;->mRequestedOrientation:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/OrientationController;->mCurrentOrientation:I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/OrientationController;->mOrientationRequest:Lcom/miui/video/biz/videoplus/player/OrientationController$OrientationRequest;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/player/OrientationController$OrientationRequest;->change(I)V

    :cond_1
    return-void
.end method

.method private isSystemRotationLocked()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/OrientationController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method


# virtual methods
.method public lock()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/OrientationController;->mIsUserLocked:Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/OrientationController;->mCurrentOrientation:I

    return-void
.end method

.method public onCreate()V
    .locals 2

    new-instance v0, Lcom/miui/video/biz/videoplus/player/OrientationController$1;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/OrientationController;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/miui/video/biz/videoplus/player/OrientationController$1;-><init>(Lcom/miui/video/biz/videoplus/player/OrientationController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/OrientationController;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/OrientationController;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    new-instance v0, Lcom/miui/video/biz/videoplus/player/OrientationController$OrientationRequest;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/OrientationController;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/miui/video/biz/videoplus/player/OrientationController$OrientationRequest;-><init>(Lcom/miui/video/biz/videoplus/player/OrientationController;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/OrientationController;->mOrientationRequest:Lcom/miui/video/biz/videoplus/player/OrientationController$OrientationRequest;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/OrientationController;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/OrientationController;->mOrientationRequest:Lcom/miui/video/biz/videoplus/player/OrientationController$OrientationRequest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/OrientationController;->mOrientationRequest:Lcom/miui/video/biz/videoplus/player/OrientationController$OrientationRequest;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/player/OrientationController$OrientationRequest;->destroy()V

    :cond_0
    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/OrientationController;->mOrientationRequest:Lcom/miui/video/biz/videoplus/player/OrientationController$OrientationRequest;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/OrientationController;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/OrientationController;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/OrientationController;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/OrientationController;->mOrientationRequest:Lcom/miui/video/biz/videoplus/player/OrientationController$OrientationRequest;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/OrientationController$OrientationRequest;->cancel()V

    return-void
.end method

.method public requestLandscape()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/OrientationController;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iput v1, p0, Lcom/miui/video/biz/videoplus/player/OrientationController;->mRequestedOrientation:I

    return-void
.end method

.method public requestPortrait()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/OrientationController;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iput v1, p0, Lcom/miui/video/biz/videoplus/player/OrientationController;->mRequestedOrientation:I

    return-void
.end method

.method public unLock()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/OrientationController;->mIsUserLocked:Z

    return-void
.end method
