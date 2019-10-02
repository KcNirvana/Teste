.class public Lcom/ooyala/adtech/LinearCreative;
.super Lcom/ooyala/adtech/Creative;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field a:F

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ooyala/adtech/MediaFile;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/net/URL;

.field d:Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;

.field e:F

.field f:F

.field l:Ljava/lang/String;

.field m:J

.field n:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ooyala/adtech/Creative;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lcom/ooyala/adtech/LinearCreative;)V
    .locals 2

    iget v0, p1, Lcom/ooyala/adtech/LinearCreative;->a:F

    iput v0, p0, Lcom/ooyala/adtech/LinearCreative;->a:F

    iget-object v0, p1, Lcom/ooyala/adtech/LinearCreative;->c:Ljava/net/URL;

    iput-object v0, p0, Lcom/ooyala/adtech/LinearCreative;->c:Ljava/net/URL;

    iget-object v0, p1, Lcom/ooyala/adtech/LinearCreative;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/ooyala/adtech/LinearCreative;->h:Ljava/lang/String;

    iget v0, p1, Lcom/ooyala/adtech/LinearCreative;->g:I

    iput v0, p0, Lcom/ooyala/adtech/LinearCreative;->g:I

    iget-object v0, p0, Lcom/ooyala/adtech/LinearCreative;->j:Lcom/ooyala/adtech/UniversalAdId;

    iget-object v1, p1, Lcom/ooyala/adtech/LinearCreative;->j:Lcom/ooyala/adtech/UniversalAdId;

    invoke-virtual {v1}, Lcom/ooyala/adtech/UniversalAdId;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/UniversalAdId;->setIdentifier(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ooyala/adtech/LinearCreative;->j:Lcom/ooyala/adtech/UniversalAdId;

    iget-object p1, p1, Lcom/ooyala/adtech/LinearCreative;->j:Lcom/ooyala/adtech/UniversalAdId;

    invoke-virtual {p1}, Lcom/ooyala/adtech/UniversalAdId;->getRegistry()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ooyala/adtech/UniversalAdId;->setRegistry(Ljava/lang/String;)V

    return-void
.end method

.method public getClickthroughURL()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/LinearCreative;->c:Ljava/net/URL;

    return-object v0
.end method

.method public getDuration()F
    .locals 1

    iget v0, p0, Lcom/ooyala/adtech/LinearCreative;->a:F

    return v0
.end method

.method public getLastCompletion()J
    .locals 6

    invoke-virtual {p0}, Lcom/ooyala/adtech/LinearCreative;->getParentAd()Lcom/ooyala/adtech/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getParentSlot()Lcom/ooyala/adtech/Slot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Slot;->getParentInsertionPoint()Lcom/ooyala/adtech/InsertionPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/InsertionPoint;->getParentSession()Lcom/ooyala/adtech/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/adtech/Session;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ooyala/adtech/LinearCreative;->m:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    return-wide v4

    :cond_0
    iget-wide v2, p0, Lcom/ooyala/adtech/LinearCreative;->m:J

    sub-long/2addr v2, v0

    return-wide v2
.end method

.method public getMediaFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ooyala/adtech/MediaFile;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ooyala/adtech/LinearCreative;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSkipButtonMode()Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/LinearCreative;->d:Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;

    return-object v0
.end method

.method public getSkipOffset()F
    .locals 3

    iget-boolean v0, p0, Lcom/ooyala/adtech/LinearCreative;->n:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ooyala/adtech/LinearCreative;->a:F

    iget v1, p0, Lcom/ooyala/adtech/LinearCreative;->e:F

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    mul-float v0, v0, v1

    return v0

    :cond_0
    iget v0, p0, Lcom/ooyala/adtech/LinearCreative;->e:F

    return v0
.end method

.method public getSkipResetTime()F
    .locals 1

    iget v0, p0, Lcom/ooyala/adtech/LinearCreative;->f:F

    return v0
.end method
