.class public Lcom/miui/video/player/service/play/OrientationUpdater;
.super Ljava/lang/Object;
.source "OrientationUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/player/service/play/OrientationUpdater$OrientationRequest;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "OrientationUpdater"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mActivityOrientation:I

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private final mOrientationRequest:Lcom/miui/video/player/service/play/OrientationUpdater$OrientationRequest;

.field private mRequestedOrientation:I

.field private mResponse2Event:Z

.field private mUpdateHint:Z

.field private mUserLockedScreen:Z

.field private mWaitForNextOrientation:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mWaitForNextOrientation:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mRequestedOrientation:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mResponse2Event:Z

    iput-boolean v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mUserLockedScreen:Z

    iput-boolean v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mUpdateHint:Z

    iput-object p1, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mActivityOrientation:I

    new-instance v0, Lcom/miui/video/player/service/play/OrientationUpdater$OrientationRequest;

    invoke-direct {v0, p0, p1}, Lcom/miui/video/player/service/play/OrientationUpdater$OrientationRequest;-><init>(Lcom/miui/video/player/service/play/OrientationUpdater;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mOrientationRequest:Lcom/miui/video/player/service/play/OrientationUpdater$OrientationRequest;

    invoke-direct {p0}, Lcom/miui/video/player/service/play/OrientationUpdater;->initListener()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/player/service/play/OrientationUpdater;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mUserLockedScreen:Z

    return p0
.end method

.method static synthetic access$100(Lcom/miui/video/player/service/play/OrientationUpdater;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mUpdateHint:Z

    return p0
.end method

.method static synthetic access$200(Lcom/miui/video/player/service/play/OrientationUpdater;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/player/service/play/OrientationUpdater;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/play/OrientationUpdater;->handleOrientationChange(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/video/player/service/play/OrientationUpdater;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mResponse2Event:Z

    return p0
.end method

.method private caculateOrientation(I)I
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

.method private getScreenOrientation()I
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mActivityOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    if-nez v0, :cond_1

    return v3

    :cond_1
    const/16 v0, 0x9

    return v0

    :cond_2
    if-ne v0, v3, :cond_3

    return v1

    :cond_3
    const/16 v0, 0x8

    return v0
.end method

.method private handleOrientationChange(I)V
    .locals 2

    invoke-direct {p0}, Lcom/miui/video/player/service/play/OrientationUpdater;->updateOrientation()V

    invoke-direct {p0}, Lcom/miui/video/player/service/play/OrientationUpdater;->isSensorOrientation()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/play/OrientationUpdater;->caculateOrientation(I)I

    move-result p1

    iget v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mWaitForNextOrientation:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mWaitForNextOrientation:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iput v1, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mWaitForNextOrientation:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mOrientationRequest:Lcom/miui/video/player/service/play/OrientationUpdater$OrientationRequest;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/play/OrientationUpdater$OrientationRequest;->change(I)V

    :cond_1
    return-void
.end method

.method private initListener()V
    .locals 2

    new-instance v0, Lcom/miui/video/player/service/play/OrientationUpdater$1;

    iget-object v1, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/miui/video/player/service/play/OrientationUpdater$1;-><init>(Lcom/miui/video/player/service/play/OrientationUpdater;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    iget-object v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    return-void
.end method

.method private isSensorOrientation()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSystemRotationLocked(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accelerometer_rotation"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private onOrientationChanged()V
    .locals 0

    return-void
.end method

.method private updateOrientation()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mActivityOrientation:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mActivityOrientation:I

    invoke-direct {p0}, Lcom/miui/video/player/service/play/OrientationUpdater;->onOrientationChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method public disableRotation()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mUserLockedScreen:Z

    iget-object v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mRequestedOrientation:I

    iget-object v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mRequestedOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public enableRotation()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mUserLockedScreen:Z

    iget-object v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mRequestedOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "OrientationUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/video/player/service/play/OrientationUpdater;->updateOrientation()V

    return-void
.end method

.method public onStart()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    iget-object v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mOrientationRequest:Lcom/miui/video/player/service/play/OrientationUpdater$OrientationRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mOrientationRequest:Lcom/miui/video/player/service/play/OrientationUpdater$OrientationRequest;

    invoke-virtual {v0}, Lcom/miui/video/player/service/play/OrientationUpdater$OrientationRequest;->cancle()V

    :cond_0
    return-void
.end method

.method public requestLandscape()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iput v1, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mWaitForNextOrientation:I

    return-void
.end method

.method public requestPortrait()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iput v1, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mWaitForNextOrientation:I

    return-void
.end method

.method public setScreenRotation(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p1}, Lcom/miui/video/player/service/play/OrientationUpdater;->isSystemRotationLocked(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/player/service/play/OrientationUpdater;->disableRotation()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/player/service/play/OrientationUpdater;->enableRotation()V

    :goto_0
    return-void
.end method

.method public setUpdateHint(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mUpdateHint:Z

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mResponse2Event:Z

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/player/service/play/OrientationUpdater;->mResponse2Event:Z

    return-void
.end method
