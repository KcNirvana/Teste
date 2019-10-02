.class public Lcom/ooyala/pulse/RequestSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ooyala/pulse/RequestSettings$ActivationState;,
        Lcom/ooyala/pulse/RequestSettings$InsertionPointType;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/ooyala/pulse/RequestSettings$ActivationState;

.field private k:Lcom/ooyala/pulse/RequestSettings$ActivationState;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ooyala/pulse/RequestSettings$InsertionPointType;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/net/URL;

.field private p:I

.field private q:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/ooyala/pulse/RequestSettings$ActivationState;->UNDEFINED:Lcom/ooyala/pulse/RequestSettings$ActivationState;

    iput-object v0, p0, Lcom/ooyala/pulse/RequestSettings;->j:Lcom/ooyala/pulse/RequestSettings$ActivationState;

    sget-object v0, Lcom/ooyala/pulse/RequestSettings$ActivationState;->UNDEFINED:Lcom/ooyala/pulse/RequestSettings$ActivationState;

    iput-object v0, p0, Lcom/ooyala/pulse/RequestSettings;->k:Lcom/ooyala/pulse/RequestSettings$ActivationState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/pulse/RequestSettings;->q:Z

    return-void
.end method


# virtual methods
.method final b()Lcom/ooyala/adtech/RequestSettings;
    .locals 2

    new-instance v0, Lcom/ooyala/adtech/RequestSettings;

    invoke-direct {v0}, Lcom/ooyala/adtech/RequestSettings;-><init>()V

    invoke-virtual {p0}, Lcom/ooyala/pulse/RequestSettings;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/RequestSettings;->setHeight(I)V

    invoke-virtual {p0}, Lcom/ooyala/pulse/RequestSettings;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/RequestSettings;->setWidth(I)V

    invoke-virtual {p0}, Lcom/ooyala/pulse/RequestSettings;->getMaxBitRate()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/RequestSettings;->setMaxBitRate(I)V

    invoke-virtual {p0}, Lcom/ooyala/pulse/RequestSettings;->getAdvertisingID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/RequestSettings;->setAdvertisingID(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ooyala/pulse/RequestSettings;->getApplicationID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/RequestSettings;->setApplicationID(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ooyala/pulse/RequestSettings;->getApplicationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/RequestSettings;->setApplicationName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ooyala/pulse/RequestSettings;->getApplicationVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/RequestSettings;->setApplicationVersion(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ooyala/pulse/RequestSettings;->getApplicationBundle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/RequestSettings;->setApplicationBundle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ooyala/pulse/RequestSettings;->getStoreUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/RequestSettings;->setStoreUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ooyala/pulse/RequestSettings;->getLinearPlaybackPositions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/RequestSettings;->setLinearPlaybackPositions(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/ooyala/pulse/RequestSettings;->getNonlinearPlaybackPositions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/RequestSettings;->setNonlinearPlaybackPositions(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/ooyala/pulse/RequestSettings;->getInsertionPointFilter()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/RequestSettings;->setInsertionPointFilter(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/ooyala/pulse/RequestSettings;->getReferrerURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/RequestSettings;->setReferrerURL(Ljava/net/URL;)V

    invoke-virtual {p0}, Lcom/ooyala/pulse/RequestSettings;->getMaxLinearBreakDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/RequestSettings;->setMaxLinearBreakDuration(I)V

    invoke-virtual {p0}, Lcom/ooyala/pulse/RequestSettings;->isPulseIntegrationLevel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/ooyala/adtech/RequestSettings;->setPulseIntegrationLevel()V

    :cond_0
    invoke-virtual {p0}, Lcom/ooyala/pulse/RequestSettings;->isAssetFilteringDisabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/RequestSettings;->disableAssetFiltering(Z)V

    invoke-virtual {p0}, Lcom/ooyala/pulse/RequestSettings;->isCacheBustingEnforced()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/RequestSettings;->setEnforceCachebusting(Z)V

    return-object v0
.end method

.method public copy()Lcom/ooyala/pulse/RequestSettings;
    .locals 3

    new-instance v0, Lcom/ooyala/pulse/RequestSettings;

    invoke-direct {v0}, Lcom/ooyala/pulse/RequestSettings;-><init>()V

    iget v1, p0, Lcom/ooyala/pulse/RequestSettings;->a:I

    iput v1, v0, Lcom/ooyala/pulse/RequestSettings;->a:I

    iget v1, p0, Lcom/ooyala/pulse/RequestSettings;->b:I

    iput v1, v0, Lcom/ooyala/pulse/RequestSettings;->b:I

    iget v1, p0, Lcom/ooyala/pulse/RequestSettings;->c:I

    iput v1, v0, Lcom/ooyala/pulse/RequestSettings;->c:I

    iget-object v1, p0, Lcom/ooyala/pulse/RequestSettings;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/ooyala/pulse/RequestSettings;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/ooyala/pulse/RequestSettings;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/ooyala/pulse/RequestSettings;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/ooyala/pulse/RequestSettings;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/ooyala/pulse/RequestSettings;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/ooyala/pulse/RequestSettings;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/ooyala/pulse/RequestSettings;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/ooyala/pulse/RequestSettings;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/ooyala/pulse/RequestSettings;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/ooyala/pulse/RequestSettings;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/ooyala/pulse/RequestSettings;->i:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ooyala/pulse/RequestSettings;->l:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ooyala/pulse/RequestSettings;->l:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_0
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/ooyala/pulse/RequestSettings;->l:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ooyala/pulse/RequestSettings;->m:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ooyala/pulse/RequestSettings;->m:Ljava/util/List;

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_1
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/ooyala/pulse/RequestSettings;->m:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ooyala/pulse/RequestSettings;->n:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ooyala/pulse/RequestSettings;->n:Ljava/util/List;

    goto :goto_2

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_2
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/ooyala/pulse/RequestSettings;->n:Ljava/util/List;

    iget-object v1, p0, Lcom/ooyala/pulse/RequestSettings;->o:Ljava/net/URL;

    iput-object v1, v0, Lcom/ooyala/pulse/RequestSettings;->o:Ljava/net/URL;

    iget v1, p0, Lcom/ooyala/pulse/RequestSettings;->p:I

    iput v1, v0, Lcom/ooyala/pulse/RequestSettings;->p:I

    iget-boolean v1, p0, Lcom/ooyala/pulse/RequestSettings;->q:Z

    iput-boolean v1, v0, Lcom/ooyala/pulse/RequestSettings;->q:Z

    iget-object v1, p0, Lcom/ooyala/pulse/RequestSettings;->j:Lcom/ooyala/pulse/RequestSettings$ActivationState;

    iput-object v1, v0, Lcom/ooyala/pulse/RequestSettings;->j:Lcom/ooyala/pulse/RequestSettings$ActivationState;

    iget-object v1, p0, Lcom/ooyala/pulse/RequestSettings;->k:Lcom/ooyala/pulse/RequestSettings$ActivationState;

    iput-object v1, v0, Lcom/ooyala/pulse/RequestSettings;->k:Lcom/ooyala/pulse/RequestSettings$ActivationState;

    return-object v0
.end method

.method public disableAssetFiltering(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/ooyala/pulse/RequestSettings$ActivationState;->ACTIVE:Lcom/ooyala/pulse/RequestSettings$ActivationState;

    iput-object p1, p0, Lcom/ooyala/pulse/RequestSettings;->j:Lcom/ooyala/pulse/RequestSettings$ActivationState;

    return-void

    :cond_0
    sget-object p1, Lcom/ooyala/pulse/RequestSettings$ActivationState;->INACTIVE:Lcom/ooyala/pulse/RequestSettings$ActivationState;

    iput-object p1, p0, Lcom/ooyala/pulse/RequestSettings;->j:Lcom/ooyala/pulse/RequestSettings$ActivationState;

    return-void
.end method

.method public getAdvertisingID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/RequestSettings;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationBundle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/RequestSettings;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/RequestSettings;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/RequestSettings;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/RequestSettings;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getDuplicatePlaybackPositions()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ooyala/pulse/RequestSettings;->l:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ooyala/pulse/RequestSettings;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ooyala/pulse/RequestSettings;->m:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ooyala/pulse/RequestSettings;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/ooyala/pulse/RequestSettings;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p0, Lcom/ooyala/pulse/RequestSettings;->m:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    return-object v1

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/ooyala/pulse/RequestSettings;->a:I

    return v0
.end method

.method public getInsertionPointFilter()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ooyala/pulse/RequestSettings$InsertionPointType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ooyala/pulse/RequestSettings;->n:Ljava/util/List;

    return-object v0
.end method

.method public getLinearPlaybackPositions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ooyala/pulse/RequestSettings;->l:Ljava/util/List;

    return-object v0
.end method

.method public getMaxBitRate()I
    .locals 1

    iget v0, p0, Lcom/ooyala/pulse/RequestSettings;->c:I

    return v0
.end method

.method public getMaxLinearBreakDuration()I
    .locals 1

    iget v0, p0, Lcom/ooyala/pulse/RequestSettings;->p:I

    return v0
.end method

.method public getNonlinearPlaybackPositions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ooyala/pulse/RequestSettings;->m:Ljava/util/List;

    return-object v0
.end method

.method public getReferrerURL()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/RequestSettings;->o:Ljava/net/URL;

    return-object v0
.end method

.method public getStoreUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/RequestSettings;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/ooyala/pulse/RequestSettings;->b:I

    return v0
.end method

.method public isAssetFilteringDisabled()Z
    .locals 2

    iget-object v0, p0, Lcom/ooyala/pulse/RequestSettings;->j:Lcom/ooyala/pulse/RequestSettings$ActivationState;

    sget-object v1, Lcom/ooyala/pulse/RequestSettings$ActivationState;->ACTIVE:Lcom/ooyala/pulse/RequestSettings$ActivationState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCacheBustingEnforced()Z
    .locals 2

    iget-object v0, p0, Lcom/ooyala/pulse/RequestSettings;->k:Lcom/ooyala/pulse/RequestSettings$ActivationState;

    sget-object v1, Lcom/ooyala/pulse/RequestSettings$ActivationState;->INACTIVE:Lcom/ooyala/pulse/RequestSettings$ActivationState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isPulseIntegrationLevel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ooyala/pulse/RequestSettings;->q:Z

    return v0
.end method

.method public setAdvertisingID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/pulse/RequestSettings;->d:Ljava/lang/String;

    return-void
.end method

.method public setApplicationBundle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/pulse/RequestSettings;->g:Ljava/lang/String;

    return-void
.end method

.method public setApplicationID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/pulse/RequestSettings;->e:Ljava/lang/String;

    return-void
.end method

.method public setApplicationName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/pulse/RequestSettings;->f:Ljava/lang/String;

    return-void
.end method

.method public setApplicationVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/pulse/RequestSettings;->h:Ljava/lang/String;

    return-void
.end method

.method public setAssetFilteringDisabledState(Lcom/ooyala/pulse/RequestSettings$ActivationState;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/pulse/RequestSettings;->j:Lcom/ooyala/pulse/RequestSettings$ActivationState;

    return-void
.end method

.method protected setCacheBustingDisabledState(Lcom/ooyala/pulse/RequestSettings$ActivationState;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/pulse/RequestSettings;->k:Lcom/ooyala/pulse/RequestSettings$ActivationState;

    return-void
.end method

.method public setEnforceCachebusting(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/ooyala/pulse/RequestSettings$ActivationState;->ACTIVE:Lcom/ooyala/pulse/RequestSettings$ActivationState;

    iput-object p1, p0, Lcom/ooyala/pulse/RequestSettings;->k:Lcom/ooyala/pulse/RequestSettings$ActivationState;

    return-void

    :cond_0
    sget-object p1, Lcom/ooyala/pulse/RequestSettings$ActivationState;->INACTIVE:Lcom/ooyala/pulse/RequestSettings$ActivationState;

    iput-object p1, p0, Lcom/ooyala/pulse/RequestSettings;->k:Lcom/ooyala/pulse/RequestSettings$ActivationState;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/ooyala/pulse/RequestSettings;->a:I

    return-void
.end method

.method public setInsertionPointFilter(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ooyala/pulse/RequestSettings$InsertionPointType;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ooyala/pulse/RequestSettings;->n:Ljava/util/List;

    return-void
.end method

.method public setLinearPlaybackPositions(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ooyala/pulse/RequestSettings;->l:Ljava/util/List;

    return-void
.end method

.method public setMaxBitRate(I)V
    .locals 0

    iput p1, p0, Lcom/ooyala/pulse/RequestSettings;->c:I

    return-void
.end method

.method public setMaxLinearBreakDuration(I)V
    .locals 0

    iput p1, p0, Lcom/ooyala/pulse/RequestSettings;->p:I

    return-void
.end method

.method public setNonlinearPlaybackPositions(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ooyala/pulse/RequestSettings;->m:Ljava/util/List;

    return-void
.end method

.method public setPulseIntegrationLevel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ooyala/pulse/RequestSettings;->q:Z

    return-void
.end method

.method public setReferrerURL(Ljava/net/URL;)V
    .locals 0
    .param p1    # Ljava/net/URL;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/ooyala/pulse/RequestSettings;->o:Ljava/net/URL;

    return-void
.end method

.method public setStoreUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/pulse/RequestSettings;->i:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/ooyala/pulse/RequestSettings;->b:I

    return-void
.end method
