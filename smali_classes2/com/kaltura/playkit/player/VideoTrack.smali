.class public Lcom/kaltura/playkit/player/VideoTrack;
.super Lcom/kaltura/playkit/player/BaseTrack;
.source "VideoTrack.java"


# instance fields
.field private bitrate:J

.field private height:I

.field private width:I


# direct methods
.method constructor <init>(Ljava/lang/String;JIIIZ)V
    .locals 0

    invoke-direct {p0, p1, p6, p7}, Lcom/kaltura/playkit/player/BaseTrack;-><init>(Ljava/lang/String;IZ)V

    iput-wide p2, p0, Lcom/kaltura/playkit/player/VideoTrack;->bitrate:J

    iput p4, p0, Lcom/kaltura/playkit/player/VideoTrack;->width:I

    iput p5, p0, Lcom/kaltura/playkit/player/VideoTrack;->height:I

    return-void
.end method


# virtual methods
.method public getBitrate()J
    .locals 2

    iget-wide v0, p0, Lcom/kaltura/playkit/player/VideoTrack;->bitrate:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/kaltura/playkit/player/VideoTrack;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/kaltura/playkit/player/VideoTrack;->width:I

    return v0
.end method
