.class public Lcom/android/camera/CameraIntentManager;
.super Ljava/lang/Object;
.source "CameraIntentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraIntentManager$CameraMode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Intent;",
            "Lcom/android/camera/CameraIntentManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile mActionPerformed:Z

.field private mIntent:Landroid/content/Intent;

.field private mReferer:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/CameraIntentManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraIntentManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/camera/CameraIntentManager;->sMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/android/camera/CameraIntentManager;->parseReferer(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraIntentManager;->mReferer:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraIntentManager;->mActionPerformed:Z

    return-void
.end method

.method private getCaller()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mReferer:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/camera/CameraIntentManager;->parseReferer(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraIntentManager;->mReferer:Landroid/net/Uri;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mReferer:Landroid/net/Uri;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mReferer:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCameraFacingIntentExtras(Landroid/content/Intent;I)I
    .locals 7

    const/4 v6, -0x1

    move v1, p1

    const-string/jumbo v5, "android.intent.extras.CAMERA_FACING"

    invoke-virtual {p0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {p0}, Lcom/android/camera/CameraIntentManager;->isPortraitIntent(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraDataContainer;->getMainBackCameraId()I

    move-result v0

    if-eq v0, v6, :cond_0

    move v1, v0

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {v3}, Lcom/android/camera/CameraIntentManager;->isFrontCameraIntent(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraDataContainer;->getFrontCameraId()I

    move-result v2

    if-eq v2, v6, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lcom/android/camera/CameraIntentManager;->isBackCameraIntent(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p0}, Lcom/android/camera/CameraIntentManager;->isForceAuxBackIntent(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraDataContainer;->getAuxBackCameraId()I

    move-result v4

    if-eq v4, v6, :cond_0

    move v1, v4

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;
    .locals 2

    sget-object v1, Lcom/android/camera/CameraIntentManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraIntentManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/CameraIntentManager;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraIntentManager;-><init>(Landroid/content/Intent;)V

    sget-object v1, Lcom/android/camera/CameraIntentManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private static isBackCameraIntent(I)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v0

    if-eqz p0, :cond_0

    if-ltz p0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/CameraDataContainer;->getAuxBackCameraId()I

    move-result v3

    if-ne p0, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/CameraDataContainer;->hasMuxCamera()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/CameraDataContainer;->getMuxCameraId()I

    move-result v3

    if-eq p0, v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public static isForceAuxBackIntent(Landroid/content/Intent;)Z
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "android.intent.extras.EXTRAS_CAMERA_VICE_BACK"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isFrontCameraIntent(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPortraitIntent(Landroid/content/Intent;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedPortrait()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedStereo()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "android.intent.extras.PORTRAIT"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportedUDCFPortrait()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isBackBokehSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return v1
.end method

.method private parseReferer(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_0

    return-object v5

    :cond_0
    :try_start_0
    const-string/jumbo v3, "android.intent.extra.REFERRER"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const-string/jumbo v3, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/camera/CameraIntentManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Cannot read referrer from intent; intent extras contain unknown custom Parcelable objects"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v5
.end method

.method public static removeAllInstance()V
    .locals 1

    sget-object v0, Lcom/android/camera/CameraIntentManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    return-void
.end method

.method public static removeInstance(Landroid/content/Intent;)V
    .locals 1

    sget-object v0, Lcom/android/camera/CameraIntentManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public checkCallerLegality()Z
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/camera/CameraIntentManager;->getCaller()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraIntentManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The caller:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    return v4

    :cond_0
    const-string/jumbo v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    const-string/jumbo v1, "com.xiaomi.voiceassistant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "com.miui.voiceassist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "com.miui.home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/camera/CameraIntentManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkCallerLegality: Unknown caller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public destroy()V
    .locals 2

    sget-object v0, Lcom/android/camera/CameraIntentManager;->sMap:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraIntentManager;->mReferer:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraIntentManager;->mActionPerformed:Z

    return-void
.end method

.method public getCameraFacing()I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/camera/CameraIntentManager;->getCameraFacingIntentExtras(Landroid/content/Intent;I)I

    move-result v0

    return v0
.end method

.method public getCameraMode()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.CAMERA_MODE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "android.media.action.VIDEO_CAMERA"

    iget-object v2, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "VIDEO"

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.media.action.STILL_IMAGE_CAMERA"

    iget-object v2, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "CAPTURE"

    return-object v1

    :cond_1
    const-string/jumbo v1, "UNSPECIFIED"

    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.CAMERA_MODE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const-string/jumbo v1, "UNSPECIFIED"

    return-object v1

    :cond_4
    return-object v0
.end method

.method public getCameraModeId()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/CameraIntentManager;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "CAPTURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa3

    return v1

    :cond_0
    const-string/jumbo v1, "MANUAL_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/16 v1, 0xa7

    return v1

    :cond_2
    const-string/jumbo v1, "MANUAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "PANORAMIC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/16 v1, 0xa6

    return v1

    :cond_4
    const-string/jumbo v1, "PANORAMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "PORTRAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0xab

    return v1

    :cond_5
    const-string/jumbo v1, "SQUARE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0xa5

    return v1

    :cond_6
    const-string/jumbo v1, "SHORT_VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0xa1

    return v1

    :cond_7
    const-string/jumbo v1, "VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0xa2

    return v1

    :cond_8
    const-string/jumbo v1, "FAST_MOTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0xa9

    return v1

    :cond_9
    const-string/jumbo v1, "SLOW_MOTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0xa8

    return v1

    :cond_a
    const/16 v1, 0xa0

    return v1
.end method

.method public getExtraCropValue()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "crop"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v2
.end method

.method public getExtraSavedUri()Landroid/net/Uri;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    return-object v1

    :cond_0
    return-object v2
.end method

.method public getExtraShouldSaveCapture()Ljava/lang/Boolean;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "save-image"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public getTimerDurationSeconds()I
    .locals 3

    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.TIMER_DURATION_SECONDS"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVideoDurationTime()I
    .locals 3

    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "EXTRA_DURATION_LIMIT has not been defined"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.durationLimit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVideoQuality()I
    .locals 3

    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "EXTRA_VIDEO_QUALITY has not been defined"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.videoQuality"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVoiceControlAction()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extras.VOICE_CONTROL_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "NONE"

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extras.VOICE_CONTROL_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "NONE"

    return-object v1

    :cond_1
    return-object v0
.end method

.method public isActionPerformed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraIntentManager;->mActionPerformed:Z

    return v0
.end method

.method public isFromVolumeKey()Ljava/lang/Boolean;
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/camera/Device;->isAndroidOne()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "com.android.systemui.camera_launch_source"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "power_double_tap"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public isImageCaptureIntent()Z
    .locals 2

    iget-object v1, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isOpenOnly()Z
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "android.media.action.VOICE_COMMAND"

    iget-object v2, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "android.intent.action.MAIN"

    iget-object v2, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.CAMERA_OPEN_ONLY"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isQuickCapture()Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.quickCapture"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isQuickLaunch()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/camera/Device;->isAndroidOne()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    :goto_0
    if-nez v4, :cond_1

    return v1

    :cond_0
    move v4, v3

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string/jumbo v5, "com.android.systemui.camera_launch_source"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "lockscreen_affordance"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v3, "power_double_tap"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    :cond_2
    return v3

    :cond_3
    iget-object v3, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    :cond_4
    iget-object v3, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string/jumbo v4, "StartActivityWhenLocked"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string/jumbo v4, "ShowCameraWhenLocked"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    :cond_5
    return v1
.end method

.method public isScanQRCodeIntent()Z
    .locals 2

    iget-object v1, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.android.camera.action.QR_CODE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.google.zxing.client.android.SCAN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isUseFrontCamera()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.USE_FRONT_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "USE_FRONT_CAMERA extras has not been defined!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.USE_FRONT_CAMERA"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isVideoCaptureIntent()Z
    .locals 2

    iget-object v1, p0, Lcom/android/camera/CameraIntentManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public markPerformed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraIntentManager;->mActionPerformed:Z

    return-void
.end method

.method public setReferer(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraIntentManager;->mReferer:Landroid/net/Uri;

    :cond_0
    return-void
.end method
