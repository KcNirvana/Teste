.class public Lcom/android/camera/module/FunModule;
.super Lcom/android/camera/module/VideoBase;
.source "FunModule.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;
.implements Landroid/hardware/Camera$AutoFocusMoveCallback;
.implements Lcom/android/camera/protocol/ModeProtocol$PreviewChangedProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$FilterProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$StickerProtocol;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/FunModule$1;,
        Lcom/android/camera/module/FunModule$MyBroadcastReceiver;,
        Lcom/android/camera/module/FunModule$SaveVideoTask;
    }
.end annotation


# static fields
.field private static final SMART_BUTTON_ENABLE_DELAY:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mFocusStartTime:J

.field private mLastMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

.field private mMaxVideoDurationInMs:I

.field private final mMediaEncoderListener:Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;

.field private mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

.field private mPendingSaveTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/module/FunModule$SaveVideoTask;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mReceiverLock:Ljava/lang/Object;

.field private mRecordingStartTime:J

.field private mSwitchingCamera:Z

.field private mVideoFilename:Ljava/lang/String;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/module/FunModule;)Lcom/android/camera/ui/V6CameraGLSurfaceView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/camera/module/FunModule;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/FunModule;->postPendingSaveTask(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/module/FunModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/Device;->useLongDelayToEnableVideoStop()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x320

    :goto_0
    sput v0, Lcom/android/camera/module/FunModule;->SMART_BUTTON_ENABLE_DELAY:I

    return-void

    :cond_0
    const/16 v0, 0x1f4

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/VideoBase;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/FunModule;->mReceiverLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/FunModule;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/FunModule;->mPendingSaveTaskList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/camera/module/FunModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/FunModule$1;-><init>(Lcom/android/camera/module/FunModule;)V

    iput-object v0, p0, Lcom/android/camera/module/FunModule;->mMediaEncoderListener:Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;

    return-void
.end method

.method private cleanupEmptyFile()V
    .locals 7

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Empty video file deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/FunModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v6, p0, Lcom/android/camera/module/FunModule;->mVideoFilename:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private convertToFilePath(Ljava/io/FileDescriptor;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private createName(J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const v2, 0x90f010a

    invoke-virtual {p0, v2}, Lcom/android/camera/module/FunModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private generateVideoFilename(I)V
    .locals 14

    const-wide/16 v12, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/FunModule;->createName(J)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/android/camera/module/FunModule;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/android/camera/module/FunModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/content/ContentValues;

    const/16 v9, 0x8

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v8, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v9, "title"

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v9, "_display_name"

    invoke-virtual {v8, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v9, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v9, "mime_type"

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v9, "_data"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v9, "resolution"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewWidth:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewHeight:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    cmpl-double v8, v8, v12

    if-nez v8, :cond_0

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    cmpl-double v8, v8, v12

    if-eqz v8, :cond_1

    :cond_0
    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v9, "latitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v9, "longitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_1
    iput-object v7, p0, Lcom/android/camera/module/FunModule;->mVideoFilename:Ljava/lang/String;

    sget-object v8, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "new video filename: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/module/FunModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getDesiredPreviewSize()V
    .locals 10

    iget-object v6, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v6, :cond_0

    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v6}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v6, Lcom/android/camera/module/FunModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v7, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6, v7}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedPreviewSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    iget v7, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int v3, v6, v7

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    iget v7, v4, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v6, v7

    if-le v6, v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    iget v8, p0, Lcom/android/camera/module/FunModule;->mModuleIndex:I

    iget v9, p0, Lcom/android/camera/module/FunModule;->mCameraId:I

    iget v6, p0, Lcom/android/camera/module/FunModule;->mUIStyle:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    const-wide v6, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    :goto_1
    invoke-static {v8, v9, v5, v6, v7}, Lcom/android/camera/Util;->getOptimalPreviewSize(IILjava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v1

    if-eqz v1, :cond_3

    iget v6, v1, Landroid/hardware/Camera$Size;->width:I

    iput v6, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewWidth:I

    iget v6, v1, Landroid/hardware/Camera$Size;->height:I

    iput v6, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewHeight:I

    :cond_3
    sget-object v6, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "previewSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-wide v6, 0x3ff5555555555555L    # 1.3333333333333333

    goto :goto_1
.end method

.method private initializeRecorder()V
    .locals 12

    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initializeRecorder"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initializeRecorder: null camera"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->closeVideoFileDescriptor()V

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v9

    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->getExtraSavedUri()Landroid/net/Uri;

    move-result-object v11

    if-eqz v11, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "rw"

    invoke-virtual {v0, v11, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/FunModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput-object v11, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/FunModule;->convertToFilePath(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v10

    :goto_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->releaseLastMediaRecorder()V

    new-instance v0, Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    invoke-direct {v0, v10}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/module/FunModule;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    new-instance v0, Lcom/android/camera/module/encoder/MediaVideoEncoder;

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mMediaEncoderListener:Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;

    iget v3, p0, Lcom/android/camera/module/FunModule;->mVideoWidth:I

    iget v4, p0, Lcom/android/camera/module/FunModule;->mVideoHeight:I

    iget-object v5, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/encoder/MediaVideoEncoder;-><init>(Lcom/android/camera/module/encoder/MediaMuxerWrapper;Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;IILcom/android/camera/ActivityBase;)V

    new-instance v0, Lcom/android/camera/module/encoder/MediaAudioEncoder;

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mMediaEncoderListener:Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/module/encoder/MediaAudioEncoder;-><init>(Lcom/android/camera/module/encoder/MediaMuxerWrapper;Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;I)V

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    invoke-virtual {v0}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->prepare()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {}, Lcom/android/camera/Device;->isSupportedAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const-string/jumbo v1, "pref_audio_focus_key"

    const v2, 0x90f01fa

    invoke-virtual {p0, v2}, Lcom/android/camera/module/FunModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_2
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set AudioParam camcorder_mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "camcorder_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_2
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/FunModule;->mOrientationCompensation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    iget v1, p0, Lcom/android/camera/module/FunModule;->mOrientationCompensation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->setOrientationHint(I)V

    iget v0, p0, Lcom/android/camera/module/FunModule;->mOrientationCompensation:I

    iput v0, p0, Lcom/android/camera/module/FunModule;->mOrientationCompensationAtRecordStart:I

    return-void

    :catch_0
    move-exception v8

    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/module/FunModule;->generateVideoFilename(I)V

    iget-object v10, p0, Lcom/android/camera/module/FunModule;->mVideoFilename:Ljava/lang/String;

    goto/16 :goto_1

    :catch_1
    move-exception v7

    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_4
    const v0, 0x90f0200

    invoke-virtual {p0, v0}, Lcom/android/camera/module/FunModule;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2
.end method

.method private postPendingSaveTask(Z)V
    .locals 4

    monitor-enter p0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mPendingSaveTaskList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mPendingSaveTaskList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/FunModule$SaveVideoTask;

    sget-object v1, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "postPendingSaveTask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/module/FunModule$SaveVideoTask;->videoPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    iget-object v2, v0, Lcom/android/camera/module/FunModule$SaveVideoTask;->videoPath:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/camera/module/FunModule$SaveVideoTask;->contentValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/storage/ImageSaver;->addVideo(Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private releaseLastMediaRecorder()V
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseLastMediaRecorder "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mLastMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mLastMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mLastMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    invoke-virtual {v0}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->join()V

    iput-object v3, p0, Lcom/android/camera/module/FunModule;->mLastMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseMediaRecorder()V
    .locals 5

    const v4, 0x90f01fa

    const/4 v3, 0x0

    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "releaseMediaRecorder"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    iput-object v0, p0, Lcom/android/camera/module/FunModule;->mLastMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->cleanupEmptyFile()V

    iput-object v3, p0, Lcom/android/camera/module/FunModule;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restore AudioParam camcorder_mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/android/camera/module/FunModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "camcorder_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v4}, Lcom/android/camera/module/FunModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_1
    iput-object v3, p0, Lcom/android/camera/module/FunModule;->mVideoFilename:Ljava/lang/String;

    return-void
.end method

.method private releaseResources()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->closeCamera()V

    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->releaseMediaRecorder()V

    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->releaseLastMediaRecorder()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/FunModule;->mWaitForRelease:Z

    return-void
.end method

.method private setOrientationParameter()V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/module/FunModule;->mSnapshotInProgress:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isFaceDetectNeedRotation()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/module/FunModule;->mCameraId:I

    iget v2, p0, Lcom/android/camera/module/FunModule;->mOrientation:I

    invoke-static {v1, v2}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v0

    sget-object v1, Lcom/android/camera/module/FunModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->getRotation(Landroid/hardware/Camera$Parameters;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method

.method private setVideoSize(II)V
    .locals 1

    iget v0, p0, Lcom/android/camera/module/FunModule;->mCameraDisplayOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    iput p1, p0, Lcom/android/camera/module/FunModule;->mVideoWidth:I

    iput p2, p0, Lcom/android/camera/module/FunModule;->mVideoHeight:I

    :goto_0
    return-void

    :cond_0
    iput p2, p0, Lcom/android/camera/module/FunModule;->mVideoWidth:I

    iput p1, p0, Lcom/android/camera/module/FunModule;->mVideoHeight:I

    goto :goto_0
.end method

.method private startVideoRecording()Z
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-object v1, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startVideoRecording"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->silenceSounds()V

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->prepareRecording()V

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->startRecordVideo()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/camera/module/FunModule;->enableCameraControls(Z)V

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->restoreMusicSound()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa2

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFailed()V

    return v6

    :cond_0
    iput-boolean v6, p0, Lcom/android/camera/module/FunModule;->isSmartShutterButtonEnable:Z

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mHandler:Landroid/os/Handler;

    sget v2, Lcom/android/camera/module/FunModule;->SMART_BUTTON_ENABLE_DELAY:I

    int-to-long v2, v2

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0, v5}, Lcom/android/camera/module/FunModule;->enableCameraControls(Z)V

    sget-object v1, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startVideoRecording process done"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.camera.action.start_video_recording"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    iput-boolean v5, p0, Lcom/android/camera/module/FunModule;->mMediaRecorderRecording:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/FunModule;->mRecordingStartTime:J

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    sget-object v1, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "listen call state"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->updateRecordingTime()V

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->keepScreenOn()V

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->removeMessage()V

    invoke-virtual {p0, v5, v6}, Lcom/android/camera/module/FunModule;->trackGeneralInfo(IZ)V

    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->trackVideoRecording()V

    return v5
.end method

.method private stopVideoRecording()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-boolean v2, p0, Lcom/android/camera/module/FunModule;->mMediaRecorderRecording:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/module/FunModule;->mPaused:Z

    if-nez v2, :cond_1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/camera/module/FunModule;->playCameraSound(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.camera.action.stop_video_recording"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/camera/module/FunModule;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v3, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    sget-object v2, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "listen none"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->animateHold()V

    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    :cond_2
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    invoke-virtual {v2}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->stopRecording()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xa2

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-interface {v0, v5}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->updateLoading(Z)V

    new-instance v1, Lcom/android/camera/module/FunModule$SaveVideoTask;

    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mVideoFilename:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/module/FunModule$SaveVideoTask;-><init>(Lcom/android/camera/module/FunModule;Ljava/lang/String;Landroid/content/ContentValues;)V

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mPendingSaveTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->releaseMediaRecorder()V

    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v6}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->restoreMusicSound()V

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->keepScreenOnAwhile()V

    iput-boolean v5, p0, Lcom/android/camera/module/FunModule;->mMediaRecorderRecording:Z

    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/AutoLockManager;->hibernateDelayed()V

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private trackVideoRecording()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "\u524d\u540e\u6444"

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "\u524d\u6444"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "\u6a21\u5f0f"

    const-string/jumbo v2, "fun"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "\u95ea\u5149\u706f"

    const-string/jumbo v1, "torch"

    iget-object v3, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "torch"

    :goto_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/android/camera/data/data/feature/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/feature/DataItemFeature;->supportVideoFaceBeauty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "\u7b49\u7ea7"

    iget v2, p0, Lcom/android/camera/module/FunModule;->mModuleIndex:I

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string/jumbo v1, "capture"

    const-string/jumbo v2, "video_taken"

    invoke-static {v1, v2, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_1
    const-string/jumbo v1, "\u540e\u6444"

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "off"

    goto :goto_1
.end method

.method private updateShaderEffect()V
    .locals 4

    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v0

    sget-object v1, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shaderEffect: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    return-void
.end method


# virtual methods
.method protected autoFocus(IIIIII)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "autoFocus focusMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "auto"

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_6

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->isNeedCancelAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->cancelAutoFocus()V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->focusPoint()V

    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/camera/module/FunModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v2, p2, p3, p4, p5}, Lcom/android/camera/FocusManagerSimple;->getFocusArea(IIII)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    if-eq p6, v0, :cond_4

    sget-object v0, Lcom/android/camera/module/FunModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v2, p2, p3, p4, p5}, Lcom/android/camera/FocusManagerSimple;->getMeteringsArea(IIII)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setMeteringAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/FunModule;->mFocusStartTime:J

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setFocusViewPosition(III)V

    const/4 v0, 0x3

    if-ne p6, v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->showIndicator(II)V

    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    :cond_6
    return-void
.end method

.method public isCaptureIntent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mIsVideoCaptureIntent:Z

    return v0
.end method

.method public isDoingAction()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mMediaRecorderRecording:Z

    return v0
.end method

.method public isNeedMute()Z
    .locals 1

    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->isNeedMute()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mMediaRecorderRecording:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isZoomEnabled()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 8

    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "autoFocusTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/module/FunModule;->mFocusStartTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms focused="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " waitForRecording="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v3}, Lcom/android/camera/FocusManagerSimple;->isFocusingSnapOnFinish()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->isFocusingSnapOnFinish()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/FunModule;->mInStartingFocusRecording:Z

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->record()V

    :cond_2
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_0
    invoke-interface {v2, v1, v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->showIndicator(II)V

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->isNeedMute()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0, p1}, Lcom/android/camera/FocusManagerSimple;->onAutoFocus(Z)V

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->reset()V

    return-void

    :cond_4
    const/4 v0, 0x3

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mIsTouchFocused:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/FunModule;->playCameraSound(I)V

    goto :goto_1
.end method

.method public onBackPressed()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->isCreated()Z

    move-result v2

    if-nez v2, :cond_0

    return v6

    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/module/FunModule;->mPaused:Z

    if-eqz v2, :cond_1

    return v7

    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mStereoSwitchThread:Lcom/android/camera/module/VideoBase$StereoSwitchThread;

    if-eqz v2, :cond_2

    return v6

    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/module/FunModule;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/module/FunModule;->mLastBackPressedTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    iput-wide v0, p0, Lcom/android/camera/module/FunModule;->mLastBackPressedTime:J

    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    const v3, 0x90f0173

    invoke-virtual {p0, v3}, Lcom/android/camera/module/FunModule;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_0
    return v7

    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/camera/module/FunModule;->onStopVideoRecording(Z)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v2

    if-eqz v2, :cond_5

    return v7

    :cond_5
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onBackPressed()Z

    move-result v2

    return v2
.end method

.method public onCameraSwitched()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->onCameraOpened()V

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->initializeCapabilities()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/FunModule;->updateStereoSettings(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->readVideoPreferences()V

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->updateVideoParametersPreference()V

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->startPreview()V

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->onPreviewStart()V

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->initializeFocusView(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->initializeZoom()V

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->initializeExposureCompensation()V

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->showFirstUseHintIfNeeded()V

    const-string/jumbo v0, "continuous-video"

    iput-object v0, p0, Lcom/android/camera/module/FunModule;->mVideoFocusMode:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onCreate(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/VideoBase;->onCreate(II)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences()V

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->isRestoring()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraAppImpl;->resetRestoreFlag()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->isVideoCaptureIntent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/FunModule;->mIsVideoCaptureIntent:Z

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->showFirstUseHintIfNeeded()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/FunModule;->enableCameraControls(Z)V

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/camera/module/FunModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->onCameraOpened()V

    const-string/jumbo v0, "continuous-video"

    iput-object v0, p0, Lcom/android/camera/module/FunModule;->mVideoFocusMode:Ljava/lang/String;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onDestroy()V

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

    :cond_0
    return-void
.end method

.method public onFilterChanged(II)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->updateShaderEffect()V

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->updateEffectViewVisible()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/camera/module/FunModule;->mPaused:Z

    if-eqz v2, :cond_0

    return v1

    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/VideoBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->restoreBottom()V

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->isIgnoreTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-static {p2}, Lcom/android/camera/Util;->isFingerPrintKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFingerprintCaptureEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/android/camera/module/FunModule;->onShutterButtonClick(I)V

    :cond_3
    :goto_0
    return v1

    :cond_4
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/android/camera/module/FunModule;->onShutterButtonClick(I)V

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x18

    if-eq p1, v2, :cond_6

    const/16 v2, 0x58

    if-ne p1, v2, :cond_5

    move v0, v1

    :cond_5
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/module/FunModule;->handleVolumeKeyEvent(ZZI)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_6
    move v0, v1

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOrientationChanged(II)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/camera/module/FunModule;->mOrientation:I

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    iget v2, p0, Lcom/android/camera/module/FunModule;->mOrientation:I

    invoke-static {v1, v2}, Lcom/android/camera/Util;->getShootOrientation(Landroid/app/Activity;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setOrientation(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->checkActivityOrientation()V

    iget v0, p0, Lcom/android/camera/module/FunModule;->mOrientationCompensation:I

    if-eq v0, p2, :cond_1

    iput p2, p0, Lcom/android/camera/module/FunModule;->mOrientationCompensation:I

    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "device orientation change to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/FunModule;->mOrientationCompensation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->setOrientationParameter()V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onPause()V

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->isVideoRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->unlockAEAF()V

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->stopFaceDetection()V

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->waitStereoSwitchThread()V

    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, v5}, Lcom/android/camera/module/FunModule;->onStopVideoRecording(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->closeCamera()V

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/camera/module/FunModule;->updateStereoSettings(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->closeVideoFileDescriptor()V

    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mReceiverLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/module/FunModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3}, Lcom/android/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/FunModule;->mReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->reset()V

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    :goto_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/module/FunModule;->mPendingSwitchCameraId:I

    iput-boolean v1, p0, Lcom/android/camera/module/FunModule;->mSwitchingCamera:Z

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isGotoGallery()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/camera/Device;->isReleaseLaterForGallery()Z

    move-result v0

    :goto_2
    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->releaseResources()V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    iput-boolean v5, p0, Lcom/android/camera/module/FunModule;->mWaitForRelease:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    goto :goto_1
.end method

.method public onPreviewLayoutChanged(Landroid/graphics/Rect;)V
    .locals 3

    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreviewLayoutChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->onLayoutChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManagerSimple;->setRenderSize(II)V

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManagerSimple;->setPreviewSize(II)V

    :cond_0
    return-void
.end method

.method public onPreviewSizeChanged(II)V
    .locals 6

    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v2, "onPreviewSizeChanged: %dx%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/FocusManagerSimple;->setPreviewSize(II)V

    :cond_0
    return-void
.end method

.method protected onPreviewStart()V
    .locals 5
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const/16 v4, 0xe

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mPreviewing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animateModuleChangeAfter()V

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->initializeFocusView(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0, v1}, Lcom/android/camera/module/FunModule;->enableCameraControls(Z)V

    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/FunModule;->onShutterButtonFocus(ZI)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onResume()V

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->isVideoRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/module/FunModule;->mOpenCameraFail:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/camera/module/FunModule;->mCameraDisabled:Z

    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->showFirstUseHintIfNeeded()V

    invoke-virtual {p0, v4}, Lcom/android/camera/module/FunModule;->updateStereoSettings(Z)V

    iget-boolean v1, p0, Lcom/android/camera/module/FunModule;->mPreviewing:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/module/FunModule;->mWaitForRelease:Z

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->startPreview()V

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iput-boolean v5, p0, Lcom/android/camera/module/FunModule;->mWaitForRelease:Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->initializeZoom()V

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->initializeExposureCompensation()V

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->keepScreenOnAwhile()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mReceiverLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v1, Lcom/android/camera/module/FunModule$MyBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/camera/module/FunModule$MyBroadcastReceiver;-><init>(Lcom/android/camera/module/FunModule;Lcom/android/camera/module/FunModule$MyBroadcastReceiver;)V

    iput-object v1, p0, Lcom/android/camera/module/FunModule;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/module/FunModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Lcom/android/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    iget-boolean v1, p0, Lcom/android/camera/module/FunModule;->mIsVideoCaptureIntent:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnail()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->onSettingsBack()V

    iget-boolean v1, p0, Lcom/android/camera/module/FunModule;->mPreviewing:Z

    if-eqz v1, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/FunModule;->mOnResumeTime:J

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v4}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v5}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    return-void

    :cond_5
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onReviewCancelClicked()V
    .locals 2
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->isSelectingCapturedVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->deleteCurrentVideo()V

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->hideAlert()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/module/FunModule;->onStopVideoRecording(Z)V

    invoke-virtual {p0, v1}, Lcom/android/camera/module/FunModule;->doReturnToCaller(Z)V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged()V
    .locals 3

    iget-boolean v1, p0, Lcom/android/camera/module/FunModule;->mPaused:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->readVideoPreferences()V

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v2, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewWidth:I

    if-ne v1, v2, :cond_2

    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    iget v2, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewHeight:I

    if-eq v1, v2, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->stopPreview()V

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->resizeForPreviewAspectRatio()V

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->startPreview()V

    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->setCameraParameters()V

    goto :goto_0
.end method

.method public onSingleTapUp(II)V
    .locals 9

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mSnapshotInProgress:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/FunModule;->isInTapableRect(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xab

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v7

    check-cast v7, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    invoke-interface {v7, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromTapDown(II)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->unlockAEAF()V

    const-string/jumbo v0, "auto"

    invoke-virtual {p0, v0}, Lcom/android/camera/module/FunModule;->setVideoFocusMode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setFocusViewType(Z)V

    iput-boolean v1, p0, Lcom/android/camera/module/FunModule;->mIsTouchFocused:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/FunModule;->mTouchFocusStartingTime:J

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v8}, Lcom/android/camera/module/FunModule;->mapTapCoordinate(Ljava/lang/Object;)V

    iget v2, v8, Landroid/graphics/Point;->x:I

    iget v3, v8, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->getDefaultFocusAreaWidth()I

    move-result v4

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->getDefaultFocusAreaHeight()I

    move-result v5

    const/4 v6, 0x3

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/module/FunModule;->autoFocus(IIIIII)V

    return-void
.end method

.method public onStickerChanged(Ljava/lang/String;)V
    .locals 4

    sget-object v1, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStickerChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->getGLCanvas()Lcom/android/gallery3d/ui/GLCanvasImpl;

    move-result-object v0

    instance-of v1, v0, Lcom/android/gallery3d/ui/GLCanvasImpl;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/GLCanvasImpl;->setSticker(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onStop()V

    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/FunModule;->mIsFromStop:Z

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->onPause()V

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->pause()V

    iput-boolean v1, p0, Lcom/android/camera/module/FunModule;->mIsFromStop:Z

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/camera/module/FunModule;->postPendingSaveTask(Z)V

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isNeedResetGotoGallery()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isReleaseLaterForGallery()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->releaseResources()V

    :cond_1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setCurrentSticker(Ljava/lang/String;)V

    return-void
.end method

.method protected onStopVideoRecording(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->unlockAEAF()V

    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->stopVideoRecording()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa2

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFinish()V

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "auto"

    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->cancelAutoFocus()V

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->clearFocusView(I)V

    :cond_0
    const-string/jumbo v1, "continuous-video"

    invoke-virtual {p0, v1}, Lcom/android/camera/module/FunModule;->setVideoFocusMode(Ljava/lang/String;)V

    return-void
.end method

.method protected performVolumeKeyClicked(IZ)V
    .locals 1

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->restoreBottom()V

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->isIgnoreTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/camera/module/FunModule;->onShutterButtonClick(I)V

    :cond_1
    return-void
.end method

.method protected prepareRecording()V
    .locals 0

    return-void
.end method

.method public readVideoPreferences()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->getDesiredPreviewSize()V

    const/16 v0, 0x286e

    iput v0, p0, Lcom/android/camera/module/FunModule;->mMaxVideoDurationInMs:I

    return-void
.end method

.method public record()V
    .locals 4

    sget-object v2, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "record"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->startVideoRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xa2

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingStart()V

    :cond_0
    return-void
.end method

.method public registerProtocol()V
    .locals 5

    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->registerProtocol()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa5

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb2

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/16 v3, 0xa4

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/impl/ImplFactory;->initAdditional(Lcom/android/camera/ActivityBase;[I)V

    return-void
.end method

.method public resizeForPreviewAspectRatio()V
    .locals 5

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/module/FunModule;->mCameraId:I

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraDataContainer;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget v2, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, v0

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    iget v3, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-interface {v2, v3}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setPreviewAspectRatio(F)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    iget v3, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-interface {v2, v3}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setPreviewAspectRatio(F)V

    goto :goto_0
.end method

.method protected startPlayVideoActivity()V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoUri:Landroid/net/Uri;

    const-string/jumbo v3, "video/mp4"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2, v1}, Lcom/android/camera/Camera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t view video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startPreview()V
    .locals 3

    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPreview "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/module/FunModule;->mPreviewing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mPreviewing:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->stopPreview()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->checkDisplayOrientation()V

    iget v0, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewWidth:I

    iget v1, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/FunModule;->setVideoSize(II)V

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/module/FunModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->setCameraParameters()V

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->setPreviewTexture()V

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->startFaceDetection()V

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->resetFocused()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/FunModule;->mPreviewing:Z

    return-void
.end method

.method protected startRecordVideo()Z
    .locals 8

    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->initializeRecorder()V

    iget-object v3, p0, Lcom/android/camera/module/FunModule;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "fail to initialize muxer"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/module/FunModule;->mRequestStartTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x15e

    sub-long v0, v6, v4

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gez v3, :cond_1

    const-wide/16 v0, 0x0

    :cond_1
    iget-object v3, p0, Lcom/android/camera/module/FunModule;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    invoke-virtual {v3, v0, v1}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->startRecording(J)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/android/camera/module/FunModule;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    invoke-virtual {v3}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->stopRecording()V

    iget-object v3, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v3

    const v4, 0x90f0226

    const v5, 0x90f0228

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ui/ScreenHint;->showConfirmMessage(II)V

    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->releaseMediaRecorder()V

    :cond_2
    return v2
.end method

.method public unRegisterProtocol()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->unRegisterProtocol()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa5

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb2

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/impl/ImplFactory;->detachAdditional()V

    return-void
.end method

.method public updateFlashPreference()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isSupportedFlashOn()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->onSharedPreferenceChanged()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isSupportedTorch()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->resetMutexModeManually()V

    goto :goto_0
.end method

.method protected updateRecordingTime()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1
    new-instance v0, Lcom/android/camera/module/FunModule$2;

    iget v1, p0, Lcom/android/camera/module/FunModule;->mMaxVideoDurationInMs:I

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/FunModule$2;-><init>(Lcom/android/camera/module/FunModule;JJ)V

    iput-object v0, p0, Lcom/android/camera/module/FunModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method protected updateStatusBar(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/module/VideoBase;->updateStatusBar(I)V

    return-void
.end method

.method protected updateVideoParametersPreference()V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v8}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v8, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "previewSize: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewWidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewHeight:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v9, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewWidth:I

    iget v10, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewHeight:I

    invoke-virtual {v8, v9, v10}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "videoSize: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v9, "video-size"

    invoke-virtual {v8, v9, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v8

    const-string/jumbo v9, "pref_camera_video_flashmode_key"

    const v10, 0x90f0071

    invoke-virtual {p0, v10}, Lcom/android/camera/module/FunModule;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/data/data/config/DataItemConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v8, Lcom/android/camera/module/FunModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v9, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8, v9, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFlashModeSafely(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->updateVideoFocusMode()V

    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->updateShaderEffect()V

    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    const-string/jumbo v8, "pref_sticker_path_key"

    const-string/jumbo v9, ""

    invoke-virtual {v2, v8, v9}, Lcom/android/camera/data/data/config/DataItemConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sticker: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/android/camera/effect/EffectController;->setCurrentSticker(Ljava/lang/String;)V

    const-string/jumbo v7, "auto"

    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/module/FunModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8, v7}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    :cond_4
    :goto_1
    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->getZoomValue()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    :cond_5
    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8, v11}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {}, Lcom/android/camera/CameraSettings;->isMovieSolidOn()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->isFaceBeautyOn()Z

    move-result v8

    if-eqz v8, :cond_d

    :cond_6
    sget-object v8, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "videoStabilization: off"

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8, v12}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v8}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/android/camera/CameraScreenNail;->setVideoStabilizationCropped(Z)V

    :goto_2
    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v8}, Lcom/android/camera/module/FunModule;->addMuteToParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v8, v11}, Lcom/android/camera/module/FunModule;->configOisParameters(Landroid/hardware/Camera$Parameters;Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->setBeautyParams()V

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontBokeh()Z

    move-result v8

    if-eqz v8, :cond_7

    sget-object v8, Lcom/android/camera/module/FunModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v9, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8, v9}, Lcom/android/camera/hardware/CameraHardwareProxy;->disableBokeh(Landroid/hardware/Camera$Parameters;)V

    :cond_7
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAntiBanding()Ljava/lang/String;

    move-result-object v0

    sget-object v8, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "antiBanding: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/camera/module/FunModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8, v0}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    :cond_8
    iget v8, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewWidth:I

    iget v9, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewHeight:I

    invoke-static {v8, v9}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v6

    sget-object v8, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "uiStyle: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v8, p0, Lcom/android/camera/module/FunModule;->mUIStyle:I

    if-eq v8, v6, :cond_9

    iput v6, p0, Lcom/android/camera/module/FunModule;->mUIStyle:I

    iget-boolean v8, p0, Lcom/android/camera/module/FunModule;->mSwitchingCamera:Z

    if-eqz v8, :cond_9

    iput-boolean v11, p0, Lcom/android/camera/module/FunModule;->mHasPendingSwitching:Z

    :cond_9
    sget-object v8, Lcom/android/camera/module/FunModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v9, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8, v9, v12}, Lcom/android/camera/hardware/CameraHardwareProxy;->setAutoHdrEnabled(Landroid/hardware/Camera$Parameters;Z)V

    invoke-static {}, Lcom/android/camera/Device;->isFaceDetectNeedRotation()Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v9, p0, Lcom/android/camera/module/FunModule;->mCameraId:I

    iget v10, p0, Lcom/android/camera/module/FunModule;->mOrientation:I

    invoke-static {v9, v10}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    :cond_a
    return-void

    :cond_b
    invoke-static {}, Lcom/android/camera/CameraSettings;->getColorEffect()Ljava/lang/String;

    move-result-object v1

    sget-object v8, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "colorEffect: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/android/camera/module/FunModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8, v1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v9, "auto"

    invoke-virtual {v8, v9}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    sget-object v8, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "videoStabilization: on"

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8, v11}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v8}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/android/camera/CameraScreenNail;->setVideoStabilizationCropped(Z)V

    goto/16 :goto_2
.end method
