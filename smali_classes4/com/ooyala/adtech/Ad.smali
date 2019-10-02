.class public Lcom/ooyala/adtech/Ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ooyala/adtech/Trackable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ooyala/adtech/Ad$Variant;,
        Lcom/ooyala/adtech/Ad$Type;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ooyala/adtech/AdCategory;",
            ">;"
        }
    .end annotation
.end field

.field B:Ljava/lang/String;

.field C:Ljava/lang/String;

.field D:Lcom/ooyala/adtech/AdPricing;

.field E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ooyala/adtech/AdVerification;",
            ">;"
        }
    .end annotation
.end field

.field final F:Lcom/ooyala/adtech/TrackingEvents;

.field a:Lcom/ooyala/adtech/Ad$Type;

.field b:Ljava/lang/String;

.field c:Lcom/ooyala/adtech/Ad$Variant;

.field d:Ljava/lang/String;

.field e:I

.field f:Z

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ooyala/adtech/Creative;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ooyala/adtech/Companion;",
            ">;"
        }
    .end annotation
.end field

.field i:Lcom/ooyala/adtech/Slot;

.field j:F

.field k:F

.field l:I

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:Z

.field s:Z

.field t:Z

.field u:Z

.field v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ooyala/adtech/Ad;",
            ">;"
        }
    .end annotation
.end field

.field w:Ljava/net/URL;

.field x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ooyala/adtech/AdSurvey;",
            ">;"
        }
    .end annotation
.end field

.field y:Z

.field z:Lcom/ooyala/adtech/AdSystem;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/adtech/Ad;->f:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ooyala/adtech/Ad;->g:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ooyala/adtech/Ad;->h:Ljava/util/List;

    const/high16 v1, 0x40800000    # 4.0f

    iput v1, p0, Lcom/ooyala/adtech/Ad;->k:F

    const/4 v1, 0x1

    iput v1, p0, Lcom/ooyala/adtech/Ad;->l:I

    iput-boolean v1, p0, Lcom/ooyala/adtech/Ad;->u:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ooyala/adtech/Ad;->w:Ljava/net/URL;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ooyala/adtech/Ad;->x:Ljava/util/List;

    iput-boolean v0, p0, Lcom/ooyala/adtech/Ad;->y:Z

    new-instance v0, Lcom/ooyala/adtech/AdSystem;

    invoke-direct {v0}, Lcom/ooyala/adtech/AdSystem;-><init>()V

    iput-object v0, p0, Lcom/ooyala/adtech/Ad;->z:Lcom/ooyala/adtech/AdSystem;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ooyala/adtech/Ad;->A:Ljava/util/List;

    new-instance v0, Lcom/ooyala/adtech/AdPricing;

    invoke-direct {v0}, Lcom/ooyala/adtech/AdPricing;-><init>()V

    iput-object v0, p0, Lcom/ooyala/adtech/Ad;->D:Lcom/ooyala/adtech/AdPricing;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ooyala/adtech/Ad;->E:Ljava/util/List;

    new-instance v0, Lcom/ooyala/adtech/TrackingEvents;

    invoke-direct {v0}, Lcom/ooyala/adtech/TrackingEvents;-><init>()V

    iput-object v0, p0, Lcom/ooyala/adtech/Ad;->F:Lcom/ooyala/adtech/TrackingEvents;

    return-void
.end method


# virtual methods
.method public getAdPricing()Lcom/ooyala/adtech/AdPricing;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/Ad;->D:Lcom/ooyala/adtech/AdPricing;

    return-object v0
.end method

.method public getAdSystem()Lcom/ooyala/adtech/AdSystem;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/Ad;->z:Lcom/ooyala/adtech/AdSystem;

    return-object v0
.end method

.method public getAdVerifications()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ooyala/adtech/AdVerification;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ooyala/adtech/Ad;->E:Ljava/util/List;

    return-object v0
.end method

.method public getAdvertiser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/Ad;->C:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/Ad;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getCandidateNum()I
    .locals 1

    iget v0, p0, Lcom/ooyala/adtech/Ad;->l:I

    return v0
.end method

.method public getCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ooyala/adtech/AdCategory;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ooyala/adtech/Ad;->A:Ljava/util/List;

    return-object v0
.end method

.method public getCompanions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ooyala/adtech/Companion;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ooyala/adtech/Ad;->h:Ljava/util/List;

    return-object v0
.end method

.method public getCreatives()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ooyala/adtech/Creative;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ooyala/adtech/Ad;->g:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCustomCampaignIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/Ad;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomGoalIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/Ad;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/Ad;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/Ad;->B:Ljava/lang/String;

    return-object v0
.end method

.method public getGoalIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/Ad;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/Ad;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getMaximumPreparationTime()F
    .locals 1

    iget v0, p0, Lcom/ooyala/adtech/Ad;->j:F

    return v0
.end method

.method public getParentSlot()Lcom/ooyala/adtech/Slot;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/Ad;->i:Lcom/ooyala/adtech/Slot;

    return-object v0
.end method

.method public getStartTimeout()F
    .locals 1

    iget v0, p0, Lcom/ooyala/adtech/Ad;->k:F

    return v0
.end method

.method public getSurvey()Ljava/net/URL;
    .locals 2

    invoke-virtual {p0}, Lcom/ooyala/adtech/Ad;->getSurveys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/ooyala/adtech/Ad;->getSurveys()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/adtech/AdSurvey;

    invoke-virtual {v0}, Lcom/ooyala/adtech/AdSurvey;->getSurvey()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getSurveys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ooyala/adtech/AdSurvey;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ooyala/adtech/Ad;->x:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/Ad;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/Ad;->F:Lcom/ooyala/adtech/TrackingEvents;

    return-object v0
.end method

.method public getType()Lcom/ooyala/adtech/Ad$Type;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/Ad;->a:Lcom/ooyala/adtech/Ad$Type;

    return-object v0
.end method

.method public getVariant()Lcom/ooyala/adtech/Ad$Variant;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/Ad;->c:Lcom/ooyala/adtech/Ad$Variant;

    return-object v0
.end method

.method public hasPassback()Z
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/adtech/Ad;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/adtech/Ad;->v:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/adtech/Ad;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isConditionalAd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ooyala/adtech/Ad;->f:Z

    return v0
.end method

.method public isPartOfAnExclusiveCampaign()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ooyala/adtech/Ad;->s:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ooyala/adtech/Ad;->u:Z

    return v0
.end method

.method public shouldShowCountdown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ooyala/adtech/Ad;->t:Z

    return v0
.end method
