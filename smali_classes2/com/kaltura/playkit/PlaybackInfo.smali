.class public Lcom/kaltura/playkit/PlaybackInfo;
.super Ljava/lang/Object;
.source "PlaybackInfo.java"


# instance fields
.field private audioBitrate:J

.field private videoBitrate:J

.field private videoHeight:J

.field private videoThroughput:J

.field private videoWidth:J


# direct methods
.method public constructor <init>(JJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/kaltura/playkit/PlaybackInfo;->videoBitrate:J

    iput-wide p3, p0, Lcom/kaltura/playkit/PlaybackInfo;->audioBitrate:J

    iput-wide p5, p0, Lcom/kaltura/playkit/PlaybackInfo;->videoThroughput:J

    iput-wide p7, p0, Lcom/kaltura/playkit/PlaybackInfo;->videoWidth:J

    iput-wide p9, p0, Lcom/kaltura/playkit/PlaybackInfo;->videoHeight:J

    return-void
.end method


# virtual methods
.method public getAudioBitrate()J
    .locals 2

    iget-wide v0, p0, Lcom/kaltura/playkit/PlaybackInfo;->audioBitrate:J

    return-wide v0
.end method

.method public getVideoBitrate()J
    .locals 2

    iget-wide v0, p0, Lcom/kaltura/playkit/PlaybackInfo;->videoBitrate:J

    return-wide v0
.end method

.method public getVideoHeight()J
    .locals 2

    iget-wide v0, p0, Lcom/kaltura/playkit/PlaybackInfo;->videoHeight:J

    return-wide v0
.end method

.method public getVideoThroughput()J
    .locals 2

    iget-wide v0, p0, Lcom/kaltura/playkit/PlaybackInfo;->videoThroughput:J

    return-wide v0
.end method

.method public getVideoWidth()J
    .locals 2

    iget-wide v0, p0, Lcom/kaltura/playkit/PlaybackInfo;->videoWidth:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "videoBitrate ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/kaltura/playkit/PlaybackInfo;->videoBitrate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "audioBitrate ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/kaltura/playkit/PlaybackInfo;->audioBitrate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "videoThroughput ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/kaltura/playkit/PlaybackInfo;->videoThroughput:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "videoWidth ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/kaltura/playkit/PlaybackInfo;->videoWidth:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "videoHeight ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/kaltura/playkit/PlaybackInfo;->videoHeight:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
