.class public Lcom/miui/video/biz/videoplus/player/VideoInfo;
.super Ljava/lang/Object;
.source "VideoInfo.java"


# static fields
.field private static final AI_MUSIC_VIDEO_TAG:Ljava/lang/String; = "960"

.field public static final FLAG_ALL:I = 0xff

.field public static final FLAG_DURATION:I = 0x4

.field public static final FLAG_HEIGHT:I = 0x2

.field public static final FLAG_IMAGE_COVER:I = 0x20

.field public static final FLAG_ROTATION:I = 0x10

.field public static final FLAG_TYPE:I = 0x8

.field public static final FLAG_WIDTH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VideoInfo"

.field public static final VIDEO_TYPE_AI_MUSIC:I = 0x2

.field public static final VIDEO_TYPE_FAST_SLOW:I = 0x1

.field public static final VIDEO_TYPE_NORMAL:I

.field private static sRetrieverNum:I


# instance fields
.field private duration:J

.field private height:I

.field private imageCover:Landroid/graphics/Bitmap;

.field private rotation:I

.field private type:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extractInt(Lorg/videolan/libvlc/MediaMetadataRetriever;II)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/videolan/libvlc/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return p2

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p2
.end method

.method private static extractLong(Lorg/videolan/libvlc/MediaMetadataRetriever;IJ)J
    .locals 0

    invoke-virtual {p0, p1}, Lorg/videolan/libvlc/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-wide p2

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    return-wide p2
.end method

.method private static extractString(Lorg/videolan/libvlc/MediaMetadataRetriever;I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/videolan/libvlc/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFlagsExceptCover()I
    .locals 1

    const/16 v0, 0x1f

    return v0
.end method

.method private static getVideoType(Lorg/videolan/libvlc/MediaMetadataRetriever;)I
    .locals 6

    const/16 v0, 0x32

    invoke-static {p0, v0}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->extractString(Lorg/videolan/libvlc/MediaMetadataRetriever;I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x19

    invoke-static {p0, v1}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->extractString(Lorg/videolan/libvlc/MediaMetadataRetriever;I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    const-wide/16 v3, 0x0

    invoke-static {p0, v2, v3, v4}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->extractLong(Lorg/videolan/libvlc/MediaMetadataRetriever;IJ)J

    move-result-wide v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v4, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x3

    :try_start_0
    invoke-virtual {v0, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "."

    const-string v5, ""

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x6e

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    const-string p0, "960"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/16 v0, 0x2328

    cmp-long p0, v2, v0

    if-ltz p0, :cond_1

    const-wide/16 v0, 0x2af8

    cmp-long p0, v2, v0

    if-gtz p0, :cond_1

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->isAiMusicSoExit(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    return v4
.end method

.method private static is8kVideo(II)Z
    .locals 2

    const/16 v0, 0x10e0

    const/16 v1, 0x1e00

    if-lt p0, v1, :cond_0

    if-ge p1, v0, :cond_1

    :cond_0
    if-lt p0, v0, :cond_2

    if-lt p1, v1, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isAiMusicSoExit(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    new-instance v2, Ljava/util/zip/ZipFile;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "lib/armeabi-v7a/libimg_classify.so"

    invoke-virtual {v2, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return p0

    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception v1

    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_2
    invoke-static {p0}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->isExitInLib(Landroid/content/Context;)Z

    move-result p0

    return p0

    :goto_3
    if-eqz v0, :cond_2

    :try_start_6
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_4
    throw p0
.end method

.method private static isExitInLib(Landroid/content/Context;)Z
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "/libimg_classify.so"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static parse(Landroid/content/Context;Landroid/net/Uri;I)Lcom/miui/video/biz/videoplus/player/VideoInfo;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/videolan/libvlc/MediaMetadataRetriever;

    invoke-direct {v1}, Lorg/videolan/libvlc/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, p0, p1}, Lorg/videolan/libvlc/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-static {v1, p2}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->parse(Lorg/videolan/libvlc/MediaMetadataRetriever;I)Lcom/miui/video/biz/videoplus/player/VideoInfo;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaMetadataRetriever;->release()V

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v1, v0

    :goto_0
    :try_start_2
    const-string p1, "VideoInfo"

    const-string p2, "parse: init retriever failed"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaMetadataRetriever;->release()V

    :cond_0
    return-object v0

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaMetadataRetriever;->release()V

    :cond_1
    throw p0
.end method

.method public static parse(Ljava/lang/String;I)Lcom/miui/video/biz/videoplus/player/VideoInfo;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget v1, Lcom/miui/video/biz/videoplus/player/VideoInfo;->sRetrieverNum:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/miui/video/biz/videoplus/player/VideoInfo;->sRetrieverNum:I

    const-string v1, "VideoInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoInfo.parse NUMBER (ADD): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/miui/video/biz/videoplus/player/VideoInfo;->sRetrieverNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lorg/videolan/libvlc/MediaMetadataRetriever;

    invoke-direct {v1}, Lorg/videolan/libvlc/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, p0}, Lorg/videolan/libvlc/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->parse(Lorg/videolan/libvlc/MediaMetadataRetriever;I)Lcom/miui/video/biz/videoplus/player/VideoInfo;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaMetadataRetriever;->release()V

    sget p1, Lcom/miui/video/biz/videoplus/player/VideoInfo;->sRetrieverNum:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Lcom/miui/video/biz/videoplus/player/VideoInfo;->sRetrieverNum:I

    const-string p1, "VideoInfo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoInfo.parse NUMBER (SUB): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/miui/video/biz/videoplus/player/VideoInfo;->sRetrieverNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v1, v0

    :goto_0
    :try_start_2
    const-string p1, "VideoInfo"

    const-string v2, "parse: init retriever failed"

    invoke-static {p1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaMetadataRetriever;->release()V

    sget p0, Lcom/miui/video/biz/videoplus/player/VideoInfo;->sRetrieverNum:I

    add-int/lit8 p0, p0, -0x1

    sput p0, Lcom/miui/video/biz/videoplus/player/VideoInfo;->sRetrieverNum:I

    const-string p0, "VideoInfo"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoInfo.parse NUMBER (SUB): "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/miui/video/biz/videoplus/player/VideoInfo;->sRetrieverNum:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaMetadataRetriever;->release()V

    sget p1, Lcom/miui/video/biz/videoplus/player/VideoInfo;->sRetrieverNum:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Lcom/miui/video/biz/videoplus/player/VideoInfo;->sRetrieverNum:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VideoInfo.parse NUMBER (SUB): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/miui/video/biz/videoplus/player/VideoInfo;->sRetrieverNum:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoInfo"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    throw p0
.end method

.method private static parse(Lorg/videolan/libvlc/MediaMetadataRetriever;I)Lcom/miui/video/biz/videoplus/player/VideoInfo;
    .locals 9

    :try_start_0
    new-instance v0, Lcom/miui/video/biz/videoplus/player/VideoInfo;

    invoke-direct {v0}, Lcom/miui/video/biz/videoplus/player/VideoInfo;-><init>()V

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->extractInt(Lorg/videolan/libvlc/MediaMetadataRetriever;II)I

    move-result v7

    const/16 v1, 0x13

    invoke-static {p0, v1, v2}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->extractInt(Lorg/videolan/libvlc/MediaMetadataRetriever;II)I

    move-result v8

    const/16 v1, 0x18

    invoke-static {p0, v1, v2}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->extractInt(Lorg/videolan/libvlc/MediaMetadataRetriever;II)I

    move-result v1

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_0

    iput v7, v0, Lcom/miui/video/biz/videoplus/player/VideoInfo;->width:I

    :cond_0
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_1

    iput v8, v0, Lcom/miui/video/biz/videoplus/player/VideoInfo;->height:I

    :cond_1
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_2

    const/16 v2, 0x9

    const-wide/16 v3, 0x0

    invoke-static {p0, v2, v3, v4}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->extractLong(Lorg/videolan/libvlc/MediaMetadataRetriever;IJ)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/video/biz/videoplus/player/VideoInfo;->duration:J

    :cond_2
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_3

    invoke-static {p0}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->getVideoType(Lorg/videolan/libvlc/MediaMetadataRetriever;)I

    move-result v2

    iput v2, v0, Lcom/miui/video/biz/videoplus/player/VideoInfo;->type:I

    :cond_3
    and-int/lit8 v2, p1, 0x10

    if-eqz v2, :cond_4

    iput v1, v0, Lcom/miui/video/biz/videoplus/player/VideoInfo;->rotation:I

    :cond_4
    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_9

    const-string p1, "VideoInfo"

    const-string v1, "VideoInfo.parse: getFrameAtTime"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7, v8}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->is8kVideo(II)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/miui/video/framework/miui/Build;->isSupport8KVideo()Z

    move-result p1

    if-nez p1, :cond_5

    const-string p0, "VideoInfo"

    const-string p1, "This is 8k video : "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "VideoInfo"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device is : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " do not support 8k video"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    div-int/lit8 v7, v7, 0x8

    div-int/lit8 v8, v8, 0x8

    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    :cond_5
    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lorg/videolan/libvlc/MediaMetadataRetriever;->getFrameAtTime(JIII)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_9

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenWidthPixels()I

    move-result p1

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenHeightPixels()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gt v2, p1, :cond_7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v2, v1, :cond_6

    goto :goto_1

    :cond_6
    iput-object p0, v0, Lcom/miui/video/biz/videoplus/player/VideoInfo;->imageCover:Landroid/graphics/Bitmap;

    goto :goto_3

    :cond_7
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    int-to-float v4, p1

    mul-float v4, v4, v3

    int-to-float v3, v1

    div-float v5, v4, v3

    cmpl-float v5, v2, v5

    if-lez v5, :cond_8

    div-float/2addr v4, v2

    float-to-int v1, v4

    goto :goto_2

    :cond_8
    mul-float v3, v3, v2

    float-to-int p1, v3

    :goto_2
    invoke-static {p0, p1, v1}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->compressBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/video/biz/videoplus/player/VideoInfo;->imageCover:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_3
    return-object v0

    :catch_0
    move-exception p0

    const-string p1, "VideoInfo"

    const-string v0, "parse: extra data failed"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/player/VideoInfo;->duration:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/VideoInfo;->height:I

    return v0
.end method

.method public getImageCover()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/VideoInfo;->imageCover:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/VideoInfo;->rotation:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/VideoInfo;->type:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/VideoInfo;->width:I

    return v0
.end method
