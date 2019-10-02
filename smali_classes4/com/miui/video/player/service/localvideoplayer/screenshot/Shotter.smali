.class public Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;
.super Ljava/lang/Object;
.source "Shotter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$OnShotListener;,
        Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$ScreenShotTask;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.miui.localvideoplayer.shareprovider"

.field public static final SCREEN_SHOT_PATH:Ljava/lang/String; = "/mivideo/images/"

.field private static final TAG:Ljava/lang/String; = "Shotter"


# instance fields
.field private mData:Landroid/content/Intent;

.field private mImageReader:Landroid/media/ImageReader;

.field private mLocalFileName:Ljava/lang/String;

.field private mLocalUrl:Ljava/lang/String;

.field private mMediaProjection:Landroid/media/projection/MediaProjection;

.field private final mRefContext:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->mLocalUrl:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->mLocalFileName:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->mRefContext:Ljava/lang/ref/SoftReference;

    iput-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->mData:Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->mLocalFileName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/mivideo/images/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->mLocalFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->mLocalUrl:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->initShotter(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;)Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->mImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;)Ljava/lang/ref/SoftReference;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->mRefContext:Ljava/lang/ref/SoftReference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->mLocalUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->mLocalFileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->insertImageToSystem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initShotter(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    const-string v0, "media_projection"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/projection/MediaProjectionManager;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p1, v0, p2}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->mMediaProjection:Landroid/media/projection/MediaProjection;

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenHeightPixels()I

    move-result p1

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenWidthPixels()I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenWidthPixels()I

    move-result p1

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenHeightPixels()I

    move-result p2

    :goto_0
    if-gtz p1, :cond_2

    const/16 p1, 0x438

    const/16 v2, 0x438

    goto :goto_1

    :cond_2
    move v2, p1

    :goto_1
    if-gtz p2, :cond_3

    const/16 p2, 0x780

    const/16 v3, 0x780

    goto :goto_2

    :cond_3
    move v3, p2

    :goto_2
    const/4 p1, 0x1

    invoke-static {v2, v3, p1, p1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->mImageReader:Landroid/media/ImageReader;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->mMediaProjection:Landroid/media/projection/MediaProjection;

    const-string v1, "screen-mirror"

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget v4, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v5, 0x10

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    :cond_4
    return-void
.end method

.method private static insertImageToSystem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertImageToSystem : insert the image into media store for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p0, :cond_0

    sget-object p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->TAG:Ljava/lang/String;

    const-string p1, "insertImageToSystem : insert the image into media store failed due to the context is null"

    invoke-static {p0, p1}, Lcom/miui/video/framework/log/LogUtils;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sharepic"

    invoke-static {v0, p1, p2, v1}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gez p2, :cond_1

    sget-object p2, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->TAG:Ljava/lang/String;

    const-string v2, "insertImageToSystem :insert the image into media store failed"

    invoke-static {p2, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object p2, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertImageToSystem :insert the image into media store successful "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/video/framework/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->TAG:Ljava/lang/String;

    const-string p2, "insertImageToSystem : insert the image into media store failed"

    invoke-static {p1, p2, p0}, Lcom/miui/video/framework/log/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p0

    sget-object p1, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->TAG:Ljava/lang/String;

    const-string p2, "insertImageToSystem : insert the image into media store failed"

    invoke-static {p1, p2, p0}, Lcom/miui/video/framework/log/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static translateToContent(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    const-string v0, "content://com.miui.localvideoplayer.shareprovider//mivideo/images/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    :cond_0
    return-void
.end method

.method public startScreenShot(Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$OnShotListener;Z)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->mLocalUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->mLocalFileName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/mivideo/images/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->mLocalFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->mLocalUrl:Ljava/lang/String;

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->mImageReader:Landroid/media/ImageReader;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->mData:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->mRefContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->mData:Landroid/content/Intent;

    invoke-direct {p0, v0, v1, p2}, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;->initShotter(Landroid/content/Context;Landroid/content/Intent;Z)V

    :cond_1
    new-instance p2, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$1;

    invoke-direct {p2, p0, p1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter;Lcom/miui/video/player/service/localvideoplayer/screenshot/Shotter$OnShotListener;)V

    const-wide/16 v0, 0x1f4

    invoke-static {p2, v0, v1}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method
