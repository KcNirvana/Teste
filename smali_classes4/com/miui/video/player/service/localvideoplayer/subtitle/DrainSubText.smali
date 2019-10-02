.class public Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainSubText;
.super Ljava/lang/Object;
.source "DrainSubText.java"


# instance fields
.field mDuration:J

.field mIdx:J

.field mPts:J

.field mStartTime:J

.field mSubData:Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainSubText;->mDuration:J

    return-wide v0
.end method

.method public getIdx()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainSubText;->mIdx:J

    return-wide v0
.end method

.method public getPts()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainSubText;->mPts:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainSubText;->mStartTime:J

    return-wide v0
.end method

.method public getSubData()Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleData;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainSubText;->mSubData:Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleData;

    return-object v0
.end method

.method public setDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainSubText;->mDuration:J

    return-void
.end method

.method public setIdx(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainSubText;->mIdx:J

    return-void
.end method

.method public setPts(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainSubText;->mPts:J

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainSubText;->mStartTime:J

    return-void
.end method

.method public setSubData(Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleData;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/DrainSubText;->mSubData:Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleData;

    return-void
.end method
