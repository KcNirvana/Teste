.class public Lmiui/video/transcoder/VideoParams;
.super Ljava/lang/Object;
.source "VideoParams.java"


# static fields
.field private static final KEY_FORMAT_CROP_BOTTOM:Ljava/lang/String; = "crop-bottom"

.field private static final KEY_FORMAT_CROP_LEFT:Ljava/lang/String; = "crop-left"

.field private static final KEY_FORMAT_CROP_TOP:Ljava/lang/String; = "crop-top"


# instance fields
.field private TAG:Ljava/lang/String;

.field public frameRate:I

.field public intervalPaddingSize:I

.field public leftPaddingSize:I

.field public mimeType:Ljava/lang/String;

.field public stride:I

.field public topPaddingSize:I

.field public videoDegree:I

.field public videoHeight:I

.field public videoWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VideoParams"

    iput-object v0, p0, Lmiui/video/transcoder/VideoParams;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lmiui/video/transcoder/VideoParams;->videoWidth:I

    iput v0, p0, Lmiui/video/transcoder/VideoParams;->videoHeight:I

    iput v0, p0, Lmiui/video/transcoder/VideoParams;->videoDegree:I

    iput v0, p0, Lmiui/video/transcoder/VideoParams;->frameRate:I

    iput v0, p0, Lmiui/video/transcoder/VideoParams;->stride:I

    iput v0, p0, Lmiui/video/transcoder/VideoParams;->topPaddingSize:I

    iput v0, p0, Lmiui/video/transcoder/VideoParams;->leftPaddingSize:I

    iput v0, p0, Lmiui/video/transcoder/VideoParams;->intervalPaddingSize:I

    return-void
.end method


# virtual methods
.method public setVideoFormat(Landroid/media/MediaFormat;)V
    .locals 2

    const-string v0, "stride"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/video/transcoder/VideoParams;->stride:I

    const-string v0, "crop-top"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/video/transcoder/VideoParams;->topPaddingSize:I

    const-string v0, "crop-bottom"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v1, "crop-left"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lmiui/video/transcoder/VideoParams;->leftPaddingSize:I

    const-string v1, "height"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iget v1, p0, Lmiui/video/transcoder/VideoParams;->topPaddingSize:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr p1, v0

    iget v0, p0, Lmiui/video/transcoder/VideoParams;->topPaddingSize:I

    sub-int/2addr p1, v0

    iput p1, p0, Lmiui/video/transcoder/VideoParams;->intervalPaddingSize:I

    iget-object p1, p0, Lmiui/video/transcoder/VideoParams;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mVideoParamsHolder.stride : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/video/transcoder/VideoParams;->stride:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lmiui/video/transcoder/VideoParams;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mVideoParamsHolder.topPaddingSize : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/video/transcoder/VideoParams;->topPaddingSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lmiui/video/transcoder/VideoParams;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mVideoParamsHolder.leftPaddingSize : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/video/transcoder/VideoParams;->leftPaddingSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lmiui/video/transcoder/VideoParams;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mVideoParamsHolder.intervalPaddingSize : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/video/transcoder/VideoParams;->intervalPaddingSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
