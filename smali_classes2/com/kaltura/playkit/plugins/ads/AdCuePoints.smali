.class public Lcom/kaltura/playkit/plugins/ads/AdCuePoints;
.super Ljava/lang/Object;
.source "AdCuePoints.java"


# instance fields
.field private adCuePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ads/AdCuePoints;->adCuePoints:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAdCuePoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ads/AdCuePoints;->adCuePoints:Ljava/util/List;

    return-object v0
.end method

.method public hasMidRoll()Z
    .locals 5

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ads/AdCuePoints;->adCuePoints:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ads/AdCuePoints;->adCuePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ads/AdCuePoints;->adCuePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasPostRoll()Z
    .locals 5

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ads/AdCuePoints;->adCuePoints:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ads/AdCuePoints;->adCuePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ads/AdCuePoints;->adCuePoints:Ljava/util/List;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ads/AdCuePoints;->adCuePoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-gez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasPreRoll()Z
    .locals 6

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ads/AdCuePoints;->adCuePoints:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ads/AdCuePoints;->adCuePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ads/AdCuePoints;->adCuePoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method
