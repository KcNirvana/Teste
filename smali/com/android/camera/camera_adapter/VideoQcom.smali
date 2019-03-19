.class public Lcom/android/camera/camera_adapter/VideoQcom;
.super Lcom/android/camera/module/VideoModule;
.source "VideoQcom.java"


# static fields
.field private static final VIDEO_HIGH_FRAME_RATE:Ljava/lang/String;

.field private static sProxy:Lcom/android/camera/hardware/QcomCameraProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v10, 0x0

    const/high16 v9, -0x80000000

    sget-boolean v3, Lcom/android/camera/Device;->IS_MI2:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "90"

    :goto_0
    sput-object v3, Lcom/android/camera/camera_adapter/VideoQcom;->VIDEO_HIGH_FRAME_RATE:Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v3

    check-cast v3, Lcom/android/camera/hardware/QcomCameraProxy;

    sput-object v3, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "android.media.CamcorderProfile"

    const-string/jumbo v7, "QUALITY_HIGH_SPEED_480P"

    const-string/jumbo v8, "I"

    invoke-static {v3, v10, v7, v8}, Lcom/android/camera/Util;->getIntField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sget-object v3, Lcom/android/camera/camera_adapter/VideoQcom;->VIDEO_QUALITY_TO_HIGHSPEED:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-eq v1, v9, :cond_2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "android.media.CamcorderProfile"

    const-string/jumbo v4, "QUALITY_HIGH_SPEED_720P"

    const-string/jumbo v7, "I"

    invoke-static {v3, v10, v4, v7}, Lcom/android/camera/Util;->getIntField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sget-object v3, Lcom/android/camera/camera_adapter/VideoQcom;->VIDEO_QUALITY_TO_HIGHSPEED:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eq v2, v9, :cond_3

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "android.media.CamcorderProfile"

    const-string/jumbo v4, "QUALITY_HIGH_SPEED_1080P"

    const-string/jumbo v5, "I"

    invoke-static {v3, v10, v4, v5}, Lcom/android/camera/Util;->getIntField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sget-object v3, Lcom/android/camera/camera_adapter/VideoQcom;->VIDEO_QUALITY_TO_HIGHSPEED:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eq v0, v9, :cond_4

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v3, "120"

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_1

    :cond_3
    move v2, v5

    goto :goto_2

    :cond_4
    move v0, v6

    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;-><init>()V

    return-void
.end method


# virtual methods
.method protected isShowHFRDuration()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected prepareRecording()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/VideoQcom;->isFrontMirror()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/VideoQcom;->setVideoFlipIfNeed()V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->prepareRecording()V

    return-void
.end method

.method protected setVideoFlipIfNeed()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/VideoQcom;->isFrontMirror()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "flip-h"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/QcomCameraProxy;->setVideoFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v0, "VideoQcom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "videoFlip="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/QcomCameraProxy;->getVideoFlip(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "flip-v"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/QcomCameraProxy;->setVideoFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/QcomCameraProxy;->setVideoFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected updateVideoParametersPreference()V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->updateVideoParametersPreference()V

    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getMaxPreviewFpsRange(Landroid/hardware/Camera$Parameters;)[I

    move-result-object v0

    sget-boolean v2, Lcom/android/camera/Device;->IS_MI4:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/camera/Device;->IS_X5:Z

    if-eqz v2, :cond_5

    :cond_0
    array-length v2, v0

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    aget v3, v0, v5

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    :goto_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAoHDR()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v3, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v4, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isAoHdr()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "on"

    :goto_1
    invoke-virtual {v3, v4, v2}, Lcom/android/camera/hardware/QcomCameraProxy;->setVideoHDR(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportedVideoQuality4kUHD()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v4, "preview-format"

    iget v2, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mQuality:I

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "nv12-venus"

    :goto_2
    invoke-virtual {v3, v4, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "slow"

    iget-object v3, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mHfr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v1, "off"

    :goto_3
    sget-object v2, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/QcomCameraProxy;->getSupportedVideoHighFrameRateModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/camera_adapter/VideoQcom;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "VideoQcom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HighFrameRate value ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/hardware/QcomCameraProxy;->setVideoHighFrameRate(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_3
    sget-object v2, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/QcomCameraProxy;->getSupportedDenoiseModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v4, "denoise-on"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/QcomCameraProxy;->setDenoise(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_4
    sget-object v2, Lcom/android/camera/camera_adapter/VideoQcom;->sProxy:Lcom/android/camera/hardware/QcomCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/hardware/QcomCameraProxy;->setFaceWatermark(Landroid/hardware/Camera$Parameters;Z)V

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/VideoQcom;->setVideoFlipIfNeed()V

    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v2, "off"

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v2, "yuv420sp"

    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/android/camera/Device;->isSupportVideoHighFrame()Z

    move-result v2

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/android/camera/camera_adapter/VideoQcom;->mHighSpeedCaptureRate:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_9
    sget-object v1, Lcom/android/camera/camera_adapter/VideoQcom;->VIDEO_HIGH_FRAME_RATE:Ljava/lang/String;

    goto :goto_3
.end method