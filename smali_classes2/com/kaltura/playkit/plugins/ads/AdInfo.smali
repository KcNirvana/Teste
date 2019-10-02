.class public Lcom/kaltura/playkit/plugins/ads/AdInfo;
.super Ljava/lang/Object;
.source "AdInfo.java"

# interfaces
.implements Lcom/kaltura/playkit/ads/PKAdInfo;


# instance fields
.field private adContnentType:Ljava/lang/String;

.field private adDescription:Ljava/lang/String;

.field private adDuration:J

.field private adHeight:I

.field private adId:Ljava/lang/String;

.field private adIndexInPod:I

.field private adPlayHead:J

.field private adPodTimeOffset:J

.field private adSystem:Ljava/lang/String;

.field private adTitle:Ljava/lang/String;

.field private adWidth:I

.field private isAdSkippable:Z

.field private isBumper:Z

.field private podCount:I

.field private podIndex:I

.field private totalAdsInPod:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIZJ)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->adDescription:Ljava/lang/String;

    move-wide v1, p2

    iput-wide v1, v0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->adDuration:J

    move-wide v1, p4

    iput-wide v1, v0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->adPlayHead:J

    move-object v1, p6

    iput-object v1, v0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->adTitle:Ljava/lang/String;

    move v1, p7

    iput-boolean v1, v0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->isAdSkippable:Z

    move-object v1, p8

    iput-object v1, v0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->adContnentType:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->adId:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->adSystem:Ljava/lang/String;

    move v1, p11

    iput v1, v0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->adHeight:I

    move v1, p12

    iput v1, v0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->adWidth:I

    move/from16 v1, p13

    iput v1, v0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->totalAdsInPod:I

    move/from16 v1, p14

    iput v1, v0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->adIndexInPod:I

    move/from16 v1, p15

    iput v1, v0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->podIndex:I

    move/from16 v1, p16

    iput v1, v0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->podCount:I

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->isBumper:Z

    move-wide/from16 v1, p18

    iput-wide v1, v0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->adPodTimeOffset:J

    return-void
.end method


# virtual methods
.method public getAdContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->adContnentType:Ljava/lang/String;

    return-object v0
.end method

.method public getAdContnentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->adContnentType:Ljava/lang/String;

    return-object v0
.end method

.method public getAdDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->adDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getAdDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->adDuration:J

    return-wide v0
.end method

.method public getAdHeight()I
    .locals 1

    iget v0, p0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->adHeight:I

    return v0
.end method

.method public getAdId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->adId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdIndexInPod()I
    .locals 1

    iget v0, p0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->adIndexInPod:I

    return v0
.end method

.method public getAdPlayHead()J
    .locals 2

    iget-wide v0, p0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->adPlayHead:J

    return-wide v0
.end method

.method public getAdPodTimeOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->adPodTimeOffset:J

    return-wide v0
.end method

.method public getAdPositionType()Lcom/kaltura/playkit/plugins/ads/AdPositionType;
    .locals 4

    iget-wide v0, p0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->adPodTimeOffset:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sget-object v0, Lcom/kaltura/playkit/plugins/ads/AdPositionType;->MID_ROLL:Lcom/kaltura/playkit/plugins/ads/AdPositionType;

    return-object v0

    :cond_0
    iget-wide v0, p0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->adPodTimeOffset:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    sget-object v0, Lcom/kaltura/playkit/plugins/ads/AdPositionType;->POST_ROLL:Lcom/kaltura/playkit/plugins/ads/AdPositionType;

    return-object v0

    :cond_1
    sget-object v0, Lcom/kaltura/playkit/plugins/ads/AdPositionType;->PRE_ROLL:Lcom/kaltura/playkit/plugins/ads/AdPositionType;

    return-object v0
.end method

.method public getAdSystem()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->adSystem:Ljava/lang/String;

    return-object v0
.end method

.method public getAdTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->adTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getAdWidth()I
    .locals 1

    iget v0, p0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->adWidth:I

    return v0
.end method

.method public getPodCount()I
    .locals 1

    iget v0, p0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->podCount:I

    return v0
.end method

.method public getPodIndex()I
    .locals 1

    iget v0, p0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->podIndex:I

    return v0
.end method

.method public getTotalAdsInPod()I
    .locals 1

    iget v0, p0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->totalAdsInPod:I

    return v0
.end method

.method public isAdSkippable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->isAdSkippable:Z

    return v0
.end method

.method public isBumper()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->isBumper:Z

    return v0
.end method

.method public setAdPlayHead(J)V
    .locals 0

    iput-wide p1, p0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->adPlayHead:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->adPodTimeOffset:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const-string v0, "Mid-Roll"

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->adPodTimeOffset:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const-string v0, "Post-Roll"

    goto :goto_0

    :cond_1
    const-string v0, "Pre-Roll"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " adTimeOffset="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->adPodTimeOffset:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " adTitle="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->adTitle:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " adDuration="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->adDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " isBumper="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->isBumper:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " contentType = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->adContnentType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " adCount = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->adIndexInPod:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->totalAdsInPod:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " podCount = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->podIndex:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/kaltura/playkit/plugins/ads/AdInfo;->podCount:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
