.class public Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;
.super Ljava/lang/Object;
.source "GalleryVideoInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final MUSIC_CAPTURE_FPS:Ljava/lang/String; = "960"

.field private static final TAG:Ljava/lang/String; = "GalleryVideoInfo"

.field public static final VIDEO_TYPE_MUSIC:I = 0x2

.field public static final VIDEO_TYPE_MUSIC_NO_EDIT:I = 0x3

.field public static final VIDEO_TYPE_NORMAL:I = 0x0

.field public static final VIDEO_TYPE_SLOW:I = 0x1

.field private static sExistMusicSo:Z


# instance fields
.field private captureFps:Ljava/lang/String;

.field private duration:J

.field private fps:I

.field private height:I

.field private isSupportGetFrame:Z

.field private leftSlidePosition:I

.field private rightSlidePosition:I

.field private rotation:I

.field private type:I

.field private videoTrack:Ljava/lang/String;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/player/service/utils/AiMusicUtils;->isAiSoExit(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->sExistMusicSo:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->isSupportGetFrame:Z

    return-void
.end method

.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->isSupportGetFrame:Z

    iget-wide v0, p1, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->duration:J

    iput-wide v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->duration:J

    iget v0, p1, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->width:I

    iput v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->width:I

    iget v0, p1, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->height:I

    iput v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->height:I

    iget v0, p1, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->rotation:I

    iput v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->rotation:I

    iget v0, p1, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->fps:I

    iput v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->fps:I

    iget-object v0, p1, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->captureFps:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->captureFps:Ljava/lang/String;

    iget-object v0, p1, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->videoTrack:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->videoTrack:Ljava/lang/String;

    iget v0, p1, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->type:I

    iput v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->type:I

    iget v0, p1, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->leftSlidePosition:I

    iput v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->leftSlidePosition:I

    iget v0, p1, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->rightSlidePosition:I

    iput v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->rightSlidePosition:I

    iget-boolean p1, p1, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->isSupportGetFrame:Z

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->isSupportGetFrame:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->isSupportGetFrame:Z

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/videolan/libvlc/MediaMetadataRetriever;

    invoke-direct {v2}, Lorg/videolan/libvlc/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Lorg/videolan/libvlc/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v2}, Lorg/videolan/libvlc/MediaMetadataRetriever;->isSupportGetFrame()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->isSupportGetFrame:Z

    const/16 p1, 0x9

    const-wide/16 v3, 0x0

    invoke-static {v2, p1, v3, v4}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->extractLong(Lorg/videolan/libvlc/MediaMetadataRetriever;IJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->duration:J

    const/16 p1, 0x12

    const/4 v1, 0x0

    invoke-static {v2, p1, v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->extractInt(Lorg/videolan/libvlc/MediaMetadataRetriever;II)I

    move-result p1

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->width:I

    const/16 p1, 0x13

    invoke-static {v2, p1, v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->extractInt(Lorg/videolan/libvlc/MediaMetadataRetriever;II)I

    move-result p1

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->height:I

    const/16 p1, 0x18

    invoke-static {v2, p1, v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->extractInt(Lorg/videolan/libvlc/MediaMetadataRetriever;II)I

    move-result p1

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->rotation:I

    const/16 p1, 0x32

    invoke-virtual {v2, p1}, Lorg/videolan/libvlc/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " fpsStr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v3, 0x1e

    iput v3, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->fps:I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x3

    if-nez v3, :cond_0

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/miui/video/framework/utils/FormatUtils;->parseInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->fps:I

    :cond_0
    const/16 p1, 0x19

    invoke-virtual {v2, p1}, Lorg/videolan/libvlc/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->captureFps:Ljava/lang/String;

    sget-object p1, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " captureFps = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->captureFps:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 p1, 0x1a

    invoke-virtual {v2, p1}, Lorg/videolan/libvlc/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->videoTrack:Ljava/lang/String;

    const-string p1, "960"

    iget-object v3, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->captureFps:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->sExistMusicSo:Z

    if-eqz p1, :cond_1

    iput v4, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->type:I

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->videoTrack:Ljava/lang/String;

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->type:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->fps:I

    const/16 v3, 0x6e

    if-lt p1, v3, :cond_2

    iput v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->type:I

    const-wide/16 v3, 0x14

    iget-wide v5, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->duration:J

    mul-long v5, v5, v3

    const-wide/16 v3, 0x64

    div-long/2addr v5, v3

    long-to-int p1, v5

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->leftSlidePosition:I

    const-wide/16 v5, 0x50

    iget-wide v7, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->duration:J

    mul-long v7, v7, v5

    div-long/2addr v7, v3

    long-to-int p1, v7

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->rightSlidePosition:I

    goto :goto_0

    :cond_2
    iput v1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->type:I

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    iput v1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->type:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    invoke-virtual {v2}, Lorg/videolan/libvlc/MediaMetadataRetriever;->release()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v2, v1

    goto :goto_3

    :catch_1
    move-exception p1

    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaMetadataRetriever;->release()V

    :cond_5
    :goto_2
    return-void

    :goto_3
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lorg/videolan/libvlc/MediaMetadataRetriever;->release()V

    :cond_6
    throw p1
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


# virtual methods
.method public getCaptureFps()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->captureFps:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->duration:J

    return-wide v0
.end method

.method public getFps()I
    .locals 1

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->fps:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->height:I

    return v0
.end method

.method public getIsSupportGetFrame()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->isSupportGetFrame:Z

    return v0
.end method

.method public getLeftSlidePosition()I
    .locals 1

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->leftSlidePosition:I

    return v0
.end method

.method public getRightSlidePosition()I
    .locals 1

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->rightSlidePosition:I

    return v0
.end method

.method public getRotation()I
    .locals 1

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->rotation:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->type:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->width:I

    return v0
.end method

.method public is8kVideo()Z
    .locals 3

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->width:I

    const/16 v1, 0x10e0

    const/16 v2, 0x1e00

    if-lt v0, v2, :cond_0

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->height:I

    if-ge v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->width:I

    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->height:I

    if-lt v0, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNew960Video()Z
    .locals 2

    const-string v0, "960"

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->captureFps:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->videoTrack:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GalleryVideoInfo{duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->fps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", captureFps=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->captureFps:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", leftSlidePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->leftSlidePosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rightSlidePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->rightSlidePosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
