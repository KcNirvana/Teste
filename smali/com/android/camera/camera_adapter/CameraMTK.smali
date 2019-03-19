.class public Lcom/android/camera/camera_adapter/CameraMTK;
.super Lcom/android/camera/module/CameraModule;
.source "CameraMTK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/camera_adapter/CameraMTK$1;,
        Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;,
        Lcom/android/camera/camera_adapter/CameraMTK$FBParams;,
        Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;,
        Lcom/android/camera/camera_adapter/CameraMTK$MtkCategory;,
        Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;,
        Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;,
        Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sProxy:Lcom/android/camera/hardware/MTKCameraProxy;


# instance fields
.field private mClearImage:[B

.field private mContinuousShotCallback:Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;

.field private mCurrentFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

.field private mCurrentNum:I

.field private mDepthMap:[B

.field protected mEnableMetaData:Z

.field private mFaceNo:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

.field private mInUseFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

.field private mIsLongShotMode:Z

.field private mIsMTKFaceBeautyMode:Z

.field private mIsRefocusCapture:Z

.field private mJpegPictureCB:Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;

.field private mJpsData:[B

.field private mLdcData:[B

.field private mMaskAndConfigData:[B

.field private mMmsdkCallbackSupported:Z

.field private mOperator:Ljava/lang/Object;

.field private mOriginalJpegData:[B

.field private mParallelProcessingTitle:Ljava/lang/String;

.field private mSaveHandler:Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;

.field private final mStereoCameraWarningCallback:Lcom/android/camera/stereo/WarningCallback;

.field private final mStereoPhotoDataCallback:Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/stereo/WarningCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mStereoCameraWarningCallback:Lcom/android/camera/stereo/WarningCallback;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mStereoPhotoDataCallback:Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/FocusManager;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mFocusManager:Lcom/android/camera/FocusManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/camera/camera_adapter/CameraMTK;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/camera/camera_adapter/CameraMTK;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsRefocusCapture:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mJpegPictureCB:Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/camera/camera_adapter/CameraMTK;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mJpegRotation:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/camera/camera_adapter/CameraMTK;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mMaskAndConfigData:[B

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/camera/camera_adapter/CameraMTK;)Landroid/hardware/Camera$Parameters;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/module/CameraModule$ShutterCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mShutterCallback:Lcom/android/camera/module/CameraModule$ShutterCallback;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mClearImage:[B

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mDepthMap:[B

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/camera/camera_adapter/CameraMTK;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsRefocusCapture:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mJpsData:[B

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mLdcData:[B

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mMaskAndConfigData:[B

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/camera/camera_adapter/CameraMTK;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mOriginalJpegData:[B

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/camera_adapter/CameraMTK;Ljava/lang/String;[B[B[B[B[B[B)[B
    .locals 1

    invoke-direct/range {p0 .. p7}, Lcom/android/camera/camera_adapter/CameraMTK;->writeStereoCaptureInfoToJpg(Ljava/lang/String;[B[B[B[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/camera/camera_adapter/CameraMTK;)Lcom/android/camera/PictureInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->getPictureInfo()Lcom/android/camera/PictureInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/camera/camera_adapter/CameraMTK;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->notifyMergeData()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/camera/camera_adapter/CameraMTK;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/CameraMTK;->setJsonBuffer([B)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v0

    check-cast v0, Lcom/android/camera/hardware/MTKCameraProxy;

    sput-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mEnableMetaData:Z

    iput-boolean v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsLongShotMode:Z

    iput-boolean v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsMTKFaceBeautyMode:Z

    new-instance v2, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    invoke-direct {v2, p0}, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;-><init>(Lcom/android/camera/camera_adapter/CameraMTK;)V

    iput-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mInUseFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    new-instance v2, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    invoke-direct {v2, p0}, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;-><init>(Lcom/android/camera/camera_adapter/CameraMTK;)V

    iput-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->NONE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    iput-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mFaceNo:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    iput-boolean v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mMmsdkCallbackSupported:Z

    new-instance v2, Lcom/android/camera/camera_adapter/CameraMTK$1;

    invoke-direct {v2, p0}, Lcom/android/camera/camera_adapter/CameraMTK$1;-><init>(Lcom/android/camera/camera_adapter/CameraMTK;)V

    iput-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mContinuousShotCallback:Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;

    new-instance v2, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;

    invoke-direct {v2, p0, v4}, Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;-><init>(Lcom/android/camera/camera_adapter/CameraMTK;Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;)V

    iput-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mStereoPhotoDataCallback:Lcom/android/camera/camera_adapter/CameraMTK$StereoPhotoDataCallback;

    new-instance v2, Lcom/android/camera/stereo/WarningCallback;

    invoke-direct {v2}, Lcom/android/camera/stereo/WarningCallback;-><init>()V

    iput-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mStereoCameraWarningCallback:Lcom/android/camera/stereo/WarningCallback;

    new-instance v2, Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;

    invoke-direct {v2, p0, v4}, Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;-><init>(Lcom/android/camera/camera_adapter/CameraMTK;Landroid/location/Location;)V

    iput-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mJpegPictureCB:Lcom/android/camera/camera_adapter/CameraMTK$StereoPictureCallback;

    iput-boolean v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsRefocusCapture:Z

    iput v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentNum:I

    iput-object v4, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParallelProcessingTitle:Ljava/lang/String;

    new-instance v2, Lcom/android/camera/camera_adapter/CameraMTK$MtkCategory;

    invoke-direct {v2, p0}, Lcom/android/camera/camera_adapter/CameraMTK$MtkCategory;-><init>(Lcom/android/camera/camera_adapter/CameraMTK;)V

    iput-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraCategory:Lcom/android/camera/module/CameraModule$CameraCategory;

    invoke-static {}, Lcom/android/camera/Device;->supportRefocusMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->constructObject()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mOperator:Ljava/lang/Object;

    :cond_0
    :try_start_0
    new-instance v1, Lcom/android/camera/MmsdkCallbackImpl;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/MmsdkCallbackImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/camera/MmsdkCallbackImpl;->init()V

    invoke-virtual {v1}, Lcom/android/camera/MmsdkCallbackImpl;->isMmsdkCallbackSupported()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mMmsdkCallbackSupported:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "support mmsdk callback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mMmsdkCallbackSupported:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    iput-boolean v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mMmsdkCallbackSupported:Z

    goto :goto_0
.end method

.method private applyFBParams(Landroid/hardware/Camera$Parameters;Lcom/android/camera/camera_adapter/CameraMTK$FBParams;)V
    .locals 3

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "applyFBParams: unexpected null "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_1

    const-string/jumbo v0, "cameraParam"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v0, "fbParam"

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->smoothLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/hardware/MTKCameraProxy;->setSmoothLevel(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->enlargeEye:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/hardware/MTKCameraProxy;->setEnlargeEye(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->slimFace:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/hardware/MTKCameraProxy;->setSlimFace(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->skinColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/hardware/MTKCameraProxy;->setSkinColor(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    return-void
.end method

.method private constructObject()Ljava/lang/Object;
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v4

    if-nez v4, :cond_0

    return-object v6

    :cond_0
    :try_start_0
    const-string/jumbo v4, "com.mediatek.xmp.XmpOperator"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "()V"

    invoke-static {v4, v5}, Lmiui/reflect/Constructor;->of(Ljava/lang/Class;Ljava/lang/String;)Lmiui/reflect/Constructor;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Lmiui/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "no class com.mediatek.xmp.XmpOperator"

    invoke-static {v4, v5, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v6

    :catch_1
    move-exception v2

    sget-object v4, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "NoSuchMethod"

    invoke-static {v4, v5, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private enableZSL()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isManualModule()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3Y:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3Z:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/camera/Device;->IS_H3C:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/camera/Device;->IS_B6:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/camera/Device;->IS_C3D:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/camera/Device;->IS_C3C:Z

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private flattenFaces([Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Ljava/lang/String;
    .locals 8

    const/4 v5, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    if-nez v1, :cond_1

    return-object v5

    :cond_0
    array-length v1, p1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    aget-object v5, p1, v0

    iget-object v5, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    aget-object v6, p1, v0

    iget-object v6, v6, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    aget-object v7, p1, v0

    iget-object v7, v7, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int v3, v5, v6

    aget-object v5, p1, v0

    iget-object v5, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    aget-object v6, p1, v0

    iget-object v6, v6, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    aget-object v7, p1, v0

    iget-object v7, v7, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int v4, v5, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v1, -0x1

    if-eq v0, v5, :cond_2

    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getFaceNo([Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->MULTIPLE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    return-object v1

    :cond_0
    array-length v0, p1

    goto :goto_0

    :pswitch_0
    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->NONE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    return-object v1

    :pswitch_1
    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->SINGLE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isFlashWillOn(Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isSupportContinuousShut(Landroid/hardware/Camera$Parameters;)Z
    .locals 3

    const/4 v1, 0x0

    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    invoke-virtual {v2, p0}, Lcom/android/camera/hardware/MTKCameraProxy;->getSupportedCaptureMode(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "continuousshot"

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isUseMediaTekFaceBeautify()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3Y:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3Z:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private mtkUpdateCameraParametersPreference()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v14, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/camera/effect/BeautyParameters;->isFaceBeautyOn()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraMTK;->isFrontCamera()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontHDR()Z

    move-result v14

    :goto_0
    if-nez v14, :cond_f

    sget-object v14, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "disable meta data"

    invoke-static {v14, v15}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mEnableMetaData:Z

    :goto_1
    sget-object v14, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/android/camera/hardware/MTKCameraProxy;->setCameraMode(Landroid/hardware/Camera$Parameters;I)V

    const v14, 0x90f004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget-object v14, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "thumbnailQuality="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v12}, Lcom/android/camera/JpegEncodingQualityMappings;->getQualityNumber(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v14, v8}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailQuality(I)V

    invoke-static {}, Lcom/android/camera/Device;->isSupportedManualFunction()Z

    move-result v14

    if-eqz v14, :cond_2

    const-string/jumbo v14, "pref_qc_camera_exposuretime_key"

    const v15, 0x90f018e

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/camera/camera_adapter/CameraMTK;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    sget-object v15, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/hardware/MTKCameraProxy;->getMaxExposureTimeValue(Landroid/hardware/Camera$Parameters;)I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ltz v4, :cond_2

    sget-object v14, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v14, v15, v4}, Lcom/android/camera/hardware/MTKCameraProxy;->setExposureTime(Landroid/hardware/Camera$Parameters;I)V

    sget-object v14, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "exposureTime="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/camera/hardware/MTKCameraProxy;->getExposureTime(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v14, 0x3e8

    if-lt v4, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/camera/camera_adapter/CameraMTK;->configOisParameters(Landroid/hardware/Camera$Parameters;Z)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraMTK;->setBeautyParams()V

    const-string/jumbo v14, "pref_qc_camera_iso_key"

    const v15, 0x90f00db

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/camera/camera_adapter/CameraMTK;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v14, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v14, v15}, Lcom/android/camera/hardware/MTKCameraProxy;->getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v14

    invoke-static {v6, v14}, Lcom/android/camera/camera_adapter/CameraMTK;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v14

    if-eqz v14, :cond_3

    sget-object v14, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "ISO="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v14, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v14, v15, v6}, Lcom/android/camera/hardware/MTKCameraProxy;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->getSaturation()Ljava/lang/String;

    move-result-object v9

    sget-object v14, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "saturation="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v14, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v14, v15, v9}, Lcom/android/camera/hardware/MTKCameraProxy;->setSaturation(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->getContrast()Ljava/lang/String;

    move-result-object v2

    sget-object v14, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "contrast="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v14, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v14, v15, v2}, Lcom/android/camera/hardware/MTKCameraProxy;->setContrast(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->getSharpness()Ljava/lang/String;

    move-result-object v10

    sget-object v14, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "sharpness="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v14, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v14, v15, v10}, Lcom/android/camera/hardware/MTKCameraProxy;->setSharpness(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/camera/camera_adapter/CameraMTK;->setPictureFlipIfNeed(Landroid/hardware/Camera$Parameters;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraMTK;->enableZSL()Z

    move-result v3

    sget-object v15, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "ZSL="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-eqz v3, :cond_11

    const-string/jumbo v14, "on"

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_12

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsZSLMode:Z

    sget-object v14, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v16, "on"

    invoke-virtual/range {v14 .. v16}, Lcom/android/camera/hardware/MTKCameraProxy;->setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :goto_3
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v14

    if-eqz v14, :cond_13

    sget-object v14, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "[stereo_setup_process]. setVsDofOn"

    invoke-static {v14, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v14, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/android/camera/hardware/MTKCameraProxy;->setVsDofMode(Landroid/hardware/Camera$Parameters;Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v15, 0x1388

    const/16 v16, 0x5dc0

    invoke-virtual/range {v14 .. v16}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->getStereoDofLevel()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "vfLevel="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v14, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v14, v15, v13}, Lcom/android/camera/hardware/MTKCameraProxy;->setVsDofLevel(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_4
    :goto_4
    invoke-static {}, Lcom/android/camera/Device;->isSupportedFaceInfoWaterMark()Z

    move-result v14

    if-eqz v14, :cond_5

    sget-object v15, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v14}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v14

    if-nez v14, :cond_15

    invoke-static {}, Lcom/android/camera/CameraSettings;->showGenderAge()Z

    move-result v14

    if-nez v14, :cond_14

    invoke-static {}, Lcom/android/camera/CameraSettings;->isMagicMirrorOn()Z

    move-result v14

    :goto_5
    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Lcom/android/camera/hardware/MTKCameraProxy;->setFaceWatermark(Landroid/hardware/Camera$Parameters;Z)V

    :cond_5
    invoke-static {}, Lcom/android/camera/Device;->isSupportedIntelligentBeautify()Z

    move-result v14

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v16, "xiaomi-preview-rotation"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mOrientation:I

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_16

    const/4 v14, 0x0

    :goto_6
    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    :cond_6
    sget-object v14, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/android/camera/CameraSettings;->showGenderAge()Z

    move-result v16

    invoke-virtual/range {v14 .. v16}, Lcom/android/camera/hardware/MTKCameraProxy;->setAnalyzeAgeGender(Landroid/hardware/Camera$Parameters;Z)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mMultiSnapStatus:Z

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsLongShotMode:Z

    if-eqz v14, :cond_17

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsLongShotMode:Z

    if-eqz v14, :cond_8

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsLongShotMode:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/camera/camera_adapter/CameraMTK;->applyMultiShutParameters(Z)V

    :cond_8
    :goto_7
    sget-object v14, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "longShotMode="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraMTK;->isLongShotMode()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/Device;->isSupportedAgeDetection()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-static {}, Lcom/android/camera/CameraSettings;->showGenderAge()Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v14, v11}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setShowGenderAndAge(Z)V

    sget-object v14, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "setShowGenderAndAge="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    sget-object v14, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v16, "false"

    invoke-virtual/range {v14 .. v16}, Lcom/android/camera/hardware/MTKCameraProxy;->setHDR(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v14, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v16, "false"

    invoke-virtual/range {v14 .. v16}, Lcom/android/camera/hardware/MTKCameraProxy;->setNightShot(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v14, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v16, "false"

    invoke-virtual/range {v14 .. v16}, Lcom/android/camera/hardware/MTKCameraProxy;->setNightAntiMotion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v14}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v14

    if-nez v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v14}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v14

    if-eqz v14, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraMTK;->isSceneMotion()Z

    move-result v14

    if-eqz v14, :cond_18

    sget-object v14, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v16, "true"

    invoke-virtual/range {v14 .. v16}, Lcom/android/camera/hardware/MTKCameraProxy;->setNightAntiMotion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v14, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "antiMotion=true"

    invoke-static {v14, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_8
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedMetadata()Z

    move-result v14

    if-eqz v14, :cond_d

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraMTK;->isFrontCamera()Z

    move-result v14

    invoke-static {v14}, Lcom/android/camera/Device;->isSupportedASD(Z)Z

    move-result v14

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mEnableMetaData:Z

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsLongShotMode:Z

    if-eqz v14, :cond_1a

    :cond_b
    const/4 v1, 0x0

    :goto_9
    sget-object v14, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "asdEnable="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v16, "scene-detect"

    if-eqz v1, :cond_1c

    const-string/jumbo v14, "on"

    :goto_a
    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_c

    const/4 v7, 0x3

    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/camera/camera_adapter/CameraMTK;->setMetaCallback(I)V

    :cond_d
    return-void

    :cond_e
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_f
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mEnableMetaData:Z

    goto/16 :goto_1

    :cond_10
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mEnableMetaData:Z

    goto/16 :goto_1

    :cond_11
    const-string/jumbo v14, "off"

    goto/16 :goto_2

    :cond_12
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsZSLMode:Z

    sget-object v14, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v16, "off"

    invoke-virtual/range {v14 .. v16}, Lcom/android/camera/hardware/MTKCameraProxy;->setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_13
    sget-object v14, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "setVsDofOff"

    invoke-static {v14, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v15, 0x1388

    const/16 v16, 0x7530

    invoke-virtual/range {v14 .. v16}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    sget-object v14, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/android/camera/hardware/MTKCameraProxy;->setVsDofMode(Landroid/hardware/Camera$Parameters;Z)V

    goto/16 :goto_4

    :cond_14
    const/4 v14, 0x1

    goto/16 :goto_5

    :cond_15
    const/4 v14, 0x0

    goto/16 :goto_5

    :cond_16
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mOrientation:I

    goto/16 :goto_6

    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v14}, Lcom/android/camera/camera_adapter/CameraMTK;->isSupportContinuousShut(Landroid/hardware/Camera$Parameters;)Z

    move-result v14

    if-eqz v14, :cond_7

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsLongShotMode:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraMTK;->setTimeWatermarkIfNeed()V

    goto/16 :goto_7

    :cond_18
    sget-object v14, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v16, "true"

    invoke-virtual/range {v14 .. v16}, Lcom/android/camera/hardware/MTKCameraProxy;->setNightShot(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v14, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "handNight=true"

    invoke-static {v14, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v14}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v14

    if-eqz v14, :cond_a

    sget-object v14, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v16, "true"

    invoke-virtual/range {v14 .. v16}, Lcom/android/camera/hardware/MTKCameraProxy;->setHDR(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    sget-object v14, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "morphoHDR=true"

    invoke-static {v14, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_1a
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGroupShotOn()Z

    move-result v14

    if-nez v14, :cond_b

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isManualModule()Z

    move-result v14

    if-nez v14, :cond_b

    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v14

    if-eqz v14, :cond_1b

    const/4 v1, 0x0

    goto/16 :goto_9

    :cond_1b
    const/4 v1, 0x1

    goto/16 :goto_9

    :cond_1c
    const-string/jumbo v14, "off"

    goto/16 :goto_a
.end method

.method private notifyMergeData()V
    .locals 8

    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyMergeData mCurrentNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentNum:I

    iget v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentNum:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyMergeData Vs Dof "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsRefocusCapture:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->setupPreview()V

    iget-boolean v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsRefocusCapture:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_STEREO"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/android/camera/stereo/StereoDataGroup;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mOriginalJpegData:[B

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mJpsData:[B

    iget-object v4, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mMaskAndConfigData:[B

    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mDepthMap:[B

    iget-object v6, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mClearImage:[B

    iget-object v7, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mLdcData:[B

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/stereo/StereoDataGroup;-><init>(Ljava/lang/String;[B[B[B[B[B[B)V

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mSaveHandler:Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;

    const/16 v3, 0x2714

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentNum:I

    :cond_1
    return-void
.end method

.method private setFacePoints(Landroid/hardware/Camera$Parameters;)V
    .locals 3

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getFaces()[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraMTK;->flattenFaces([Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    invoke-virtual {v2, p1, v1}, Lcom/android/camera/hardware/MTKCameraProxy;->setFacePosition(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setJsonBuffer([B)V
    .locals 7

    :try_start_0
    const-string/jumbo v4, "com.mediatek.xmp.XmpOperator"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v4, "setJsonBuffer"

    const-string/jumbo v5, "([B)V"

    invoke-static {v0, v4, v5}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mOperator:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v0, v4, v5}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    sget-object v4, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "no method setJsonBuffer"

    invoke-static {v4, v5, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v4, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "no class com.mediatek.xmp.XmpOperator"

    invoke-static {v4, v5, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setParallelProcessParam()V
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->isParallelProcessing()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/Util;->getParallelProcessImageTmpFolder()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->getSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[parallel] capture with parallel process tmpFolder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " title:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/MTKCameraProxy;->setEnableParallelProcess(Landroid/hardware/Camera$Parameters;Z)V

    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/camera/hardware/MTKCameraProxy;->setParallelProcessFileInfo(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParallelProcessingTitle:Ljava/lang/String;

    return-void

    :cond_0
    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[parallel] capture without parallel process"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParallelProcessingTitle:Ljava/lang/String;

    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/MTKCameraProxy;->setEnableParallelProcess(Landroid/hardware/Camera$Parameters;Z)V

    return-void
.end method

.method private setPictureFlipIfNeed(Landroid/hardware/Camera$Parameters;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->isFrontMirror()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/hardware/MTKCameraProxy;->setPictureFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :goto_0
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pictureFlip="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    invoke-virtual {v2, p1}, Lcom/android/camera/hardware/MTKCameraProxy;->getPictureFlip(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/hardware/MTKCameraProxy;->setPictureFlip(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateFBParams(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;Ljava/lang/String;Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V
    .locals 5

    sget-object v2, Lcom/android/camera/constant/BeautyConstant;->LEVEL_ADVANCED:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getBeautifyValueRange()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    invoke-static {p1, v2, v3}, Lcom/android/camera/MtkFBParamsUtil;->getAdvancedValue(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;II)V

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/android/camera/constant/BeautyConstant;->LEVEL_LOW:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;->LOW:Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    :goto_1
    invoke-static {p1, v0, p3}, Lcom/android/camera/MtkFBParamsUtil;->getIntelligentValue(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/camera/constant/BeautyConstant;->LEVEL_MEDIUM:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;->MEDIUM:Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/android/camera/constant/BeautyConstant;->LEVEL_HIGH:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;->HIGH:Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateFBParams: unexpected fbMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private writeStereoCaptureInfoToJpg(Ljava/lang/String;[B[B[B[B[B[B)[B
    .locals 7

    :try_start_0
    const-string/jumbo v4, "com.mediatek.xmp.XmpOperator"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v4, "writeStereoCaptureInfoToJpg"

    const-string/jumbo v5, "(Ljava/lang/String;[B[B[B[B[B[B)[B"

    invoke-static {v0, v4, v5}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mOperator:Ljava/lang/Object;

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    const/4 v6, 0x3

    aput-object p4, v5, v6

    const/4 v6, 0x4

    aput-object p5, v5, v6

    const/4 v6, 0x5

    aput-object p6, v5, v6

    const/4 v6, 0x6

    aput-object p7, v5, v6

    invoke-virtual {v3, v0, v4, v5}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v2

    sget-object v4, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "no method writeStereoCaptureInfoToJpg"

    invoke-static {v4, v5, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v4, 0x0

    return-object v4

    :catch_1
    move-exception v1

    sget-object v4, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "no class com.mediatek.xmp.XmpOperator"

    invoke-static {v4, v5, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected applyMultiShutParameters(Z)V
    .locals 3

    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz p1, :cond_0

    sget v0, Lcom/android/camera/camera_adapter/CameraMTK;->BURST_SHOOTING_COUNT:I

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/camera/hardware/MTKCameraProxy;->setBurstShotNum(Landroid/hardware/Camera$Parameters;I)V

    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz p1, :cond_1

    const-string/jumbo v0, "continuousshot"

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/android/camera/hardware/MTKCameraProxy;->setCaptureMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "normal"

    goto :goto_1
.end method

.method protected cancelContinuousShot()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelPicture()V

    return-void
.end method

.method public closeCamera()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setContinuousShotCallback(Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setStereoWarningCallback(Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->closeCamera()V

    return-void
.end method

.method protected getBestPictureSize()Lcom/android/camera/PictureSize;
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/MTKCameraProxy;->getSupportedStereoPictureSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/CameraMTK;->getMaxPictureSizeSafely(Ljava/util/List;)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/camera/PictureSizeManager;->initialize(Lcom/android/camera/ActivityBase;Ljava/util/List;I)V

    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize()Lcom/android/camera/PictureSize;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected getParallelProcessingFileTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParallelProcessingTitle:Ljava/lang/String;

    return-object v0
.end method

.method protected handleMultiSnapDone()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setContinuousShotCallback(Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;)V

    :cond_1
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->handleMultiSnapDone()V

    return-void
.end method

.method protected initializeAfterCameraOpen()V
    .locals 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->initializeAfterCameraOpen()V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/camera/Device;->supportRefocusMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mSaveHandler:Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;

    if-nez v1, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Stereo Save Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;-><init>(Lcom/android/camera/camera_adapter/CameraMTK;Landroid/os/Looper;Lcom/android/camera/Camera;)V

    iput-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mSaveHandler:Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsRefocusCapture:Z

    :goto_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsRefocusCapture:Z

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsRefocusCapture:Z

    goto :goto_0
.end method

.method protected initializeExposureCompensation()V
    .locals 2

    :try_start_0
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->initializeExposureCompensation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->dump()V

    goto :goto_0
.end method

.method protected isFaceBeautyMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsMTKFaceBeautyMode:Z

    return v0
.end method

.method protected isLongShotMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsLongShotMode:Z

    return v0
.end method

.method protected isParallelProcessing()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraParallelProcessEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mMmsdkCallbackSupported:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->isCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isSupportSceneMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isZeroShotMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsZSLMode:Z

    return v0
.end method

.method protected needAutoFocusBeforeCapture()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "flash-on"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/camera_adapter/CameraMTK;->isFlashWillOn(Ljava/lang/String;)Z

    move-result v1

    :cond_1
    return v1
.end method

.method protected needSetupPreview()Z
    .locals 3

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string/jumbo v2, "preview-stopped"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onCameraStartPreview()V
    .locals 3

    const/16 v2, 0x32

    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedStereo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mStereoCameraWarningCallback:Lcom/android/camera/stereo/WarningCallback;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/android/camera/stereo/WarningCallback;->setActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mStereoCameraWarningCallback:Lcom/android/camera/stereo/WarningCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setStereoWarningCallback(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraHintShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isBackBokehSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->isBackBokehOn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->onDestroy()V

    invoke-static {}, Lcom/android/camera/Device;->supportRefocusMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mSaveHandler:Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mSaveHandler:Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iput-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mSaveHandler:Lcom/android/camera/camera_adapter/CameraMTK$SaveHandler;

    :cond_0
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->isUseMediaTekFaceBeautify()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v4, v5}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isFaceExists(I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v4, v5}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isFaceStable(I)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {p1}, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->convertCameraHardwareFace([Landroid/hardware/Camera$Face;)[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraMTK;->getFaceNo([Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    move-result-object v2

    sget-object v4, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->SINGLE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    if-eq v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mFaceNo:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    if-ne v2, v4, :cond_0

    return-void

    :cond_0
    sget-object v4, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->SINGLE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    if-ne v2, v4, :cond_1

    const/4 v4, 0x0

    aget-object v1, v0, v4

    :cond_1
    if-eqz v1, :cond_3

    iget v4, v1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->gender:F

    float-to-double v4, v4

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_2

    iget v4, v1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->gender:F

    const v5, 0x3ecccccd    # 0.4f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    iget v4, v1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->gender:F

    const v5, 0x3f19999a    # 0.6f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    :cond_2
    return-void

    :cond_3
    iget v4, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mModuleIndex:I

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getFaceBeautifyValue(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/camera/constant/BeautyConstant;->LEVEL_CLOSE:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    invoke-direct {p0, v4, v3, v1}, Lcom/android/camera/camera_adapter/CameraMTK;->updateFBParams(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;Ljava/lang/String;Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V

    :cond_4
    iget-object v4, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mFaceNo:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    if-ne v2, v4, :cond_6

    iget-object v4, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mInUseFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    invoke-virtual {v4, v5}, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    :goto_0
    return-void

    :cond_6
    sget-object v4, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->SINGLE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    if-ne v2, v4, :cond_7

    sget-object v4, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v6, "true"

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/hardware/MTKCameraProxy;->setExtremeBeauty(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :goto_1
    iget-object v4, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    invoke-direct {p0, v4, v5}, Lcom/android/camera/camera_adapter/CameraMTK;->applyFBParams(Landroid/hardware/Camera$Parameters;Lcom/android/camera/camera_adapter/CameraMTK$FBParams;)V

    iget-object v4, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iput-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mFaceNo:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    iget-object v4, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mInUseFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCurrentFBParams:Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    invoke-virtual {v4, v5}, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->copy(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;)V

    goto :goto_0

    :cond_7
    sget-object v4, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v6, "false"

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/hardware/MTKCameraProxy;->setExtremeBeauty(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onSettingValueChanged(Ljava/lang/String;)V
    .locals 5

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "pref_qc_camera_iso_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "pref_qc_camera_iso_key"

    const v3, 0x90f00db

    invoke-virtual {p0, v3}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/camera_adapter/CameraMTK;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/MTKCameraProxy;->getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/camera_adapter/CameraMTK;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ISO="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/hardware/MTKCameraProxy;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    :goto_0
    return-void

    :cond_2
    const-string/jumbo v2, "pref_camera_stereo_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->getStereoDofLevel()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Setting changed, vfLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/hardware/MTKCameraProxy;->setVsDofLevel(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/camera/camera_adapter/CameraMTK;->updateStatusBar(I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "pref_focus_position_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/MTKCameraProxy;->setFocusPosition(Landroid/hardware/Camera$Parameters;I)V

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "pref_qc_manual_whitebalance_k_value_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getKValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/MTKCameraProxy;->setWBManualCCT(Landroid/hardware/Camera$Parameters;I)V

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    :cond_5
    invoke-super {p0, p1}, Lcom/android/camera/module/CameraModule;->onSettingValueChanged(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected prepareCapture()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->prepareCapture()V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraMTK;->setPictureFlipIfNeed(Landroid/hardware/Camera$Parameters;)V

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->setTimeWatermarkIfNeed()V

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->isFaceBeautyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraMTK;->setFacePoints(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->setBeautyParams()V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->setParallelProcessParam()V

    return-void
.end method

.method protected prepareMultiCapture()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/CameraMTK;->applyMultiShutParameters(Z)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mContinuousShotCallback:Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setContinuousShotCallback(Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;)V

    :cond_0
    return-void
.end method

.method public prepareOpenCamera(II)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0xab

    if-ne p2, v1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraDataContainer;->getMainBackCameraId()I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsImageCaptureIntent:Z

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "[stereo_setup_process]. enableStereoMode.invoke MtkStereo"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/hardware/MTKCameraProxy;->enableStereoMode()V

    goto :goto_0
.end method

.method protected resetFaceBeautyMode()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mIsMTKFaceBeautyMode:Z

    return-void
.end method

.method protected setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 2

    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    invoke-virtual {v1, p1}, Lcom/android/camera/hardware/MTKCameraProxy;->getSupportedAutoexposure(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/hardware/MTKCameraProxy;->setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected setManualParameters()V
    .locals 7

    sget-object v3, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v4, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v5}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/hardware/MTKCameraProxy;->setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    const-string/jumbo v3, "pref_qc_camera_exposuretime_key"

    const v4, 0x90f018e

    invoke-virtual {p0, v4}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/camera_adapter/CameraMTK;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v5, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v5}, Lcom/android/camera/hardware/MTKCameraProxy;->getMaxExposureTimeValue(Landroid/hardware/Camera$Parameters;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v3, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v4, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4, v0}, Lcom/android/camera/hardware/MTKCameraProxy;->setExposureTime(Landroid/hardware/Camera$Parameters;I)V

    sget-object v3, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "exposureTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v6, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v6}, Lcom/android/camera/hardware/MTKCameraProxy;->getExposureTime(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v3, "pref_qc_camera_iso_key"

    const v4, 0x90f00db

    invoke-virtual {p0, v4}, Lcom/android/camera/camera_adapter/CameraMTK;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/camera_adapter/CameraMTK;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v4, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4}, Lcom/android/camera/hardware/MTKCameraProxy;->getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/camera_adapter/CameraMTK;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/camera/camera_adapter/CameraMTK;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISO="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/camera/camera_adapter/CameraMTK;->sProxy:Lcom/android/camera/hardware/MTKCameraProxy;

    iget-object v4, p0, Lcom/android/camera/camera_adapter/CameraMTK;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4, v2}, Lcom/android/camera/hardware/MTKCameraProxy;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected updateCameraParametersPreference()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersPreference()V

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraMTK;->mtkUpdateCameraParametersPreference()V

    return-void
.end method
