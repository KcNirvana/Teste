.class public Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;
.super Ljava/lang/Object;
.source "VideoControlData.java"


# instance fields
.field public TAG:Ljava/lang/String;

.field private duration:I

.field private pausing:Z

.field private playing:Z

.field private position:I

.field private resolution:B

.field private url:Ljava/lang/String;

.field private volume:B


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VCD"

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;->resolution:B

    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;->duration:I

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;->position:I

    const/16 v1, 0xa

    iput-byte v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;->volume:B

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;->playing:Z

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;->pausing:Z

    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;->duration:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;->position:I

    return v0
.end method

.method public getResolution()B
    .locals 1

    iget-byte v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;->resolution:B

    return v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()B
    .locals 1

    iget-byte v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;->volume:B

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;->playing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;->pausing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pausing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;->pausing:Z

    return v0
.end method

.method public playing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;->playing:Z

    return v0
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;->duration:I

    return-void
.end method

.method public setPausing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;->pausing:Z

    return-void
.end method

.method public setPlaying(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;->playing:Z

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;->position:I

    return-void
.end method

.method public setResolution(B)V
    .locals 0

    iput-byte p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;->resolution:B

    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;->url:Ljava/lang/String;

    return-void
.end method

.method public setVolume(B)V
    .locals 0

    iput-byte p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;->volume:B

    return-void
.end method
