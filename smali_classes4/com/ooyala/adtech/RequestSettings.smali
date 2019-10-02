.class public Lcom/ooyala/adtech/RequestSettings;
.super Lcom/ooyala/pulse/RequestSettings;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ooyala/adtech/RequestSettings$ActivationState;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ooyala/pulse/RequestSettings;-><init>()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/adtech/a;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ooyala/adtech/RequestSettings;->getWidth()I

    move-result v0

    if-ltz v0, :cond_9

    invoke-virtual {p0}, Lcom/ooyala/adtech/RequestSettings;->getHeight()I

    move-result v0

    if-ltz v0, :cond_8

    invoke-virtual {p0}, Lcom/ooyala/adtech/RequestSettings;->getMaxBitRate()I

    move-result v0

    if-ltz v0, :cond_7

    invoke-virtual {p0}, Lcom/ooyala/adtech/RequestSettings;->getMaxLinearBreakDuration()I

    move-result v0

    if-ltz v0, :cond_6

    invoke-super {p0}, Lcom/ooyala/pulse/RequestSettings;->getDuplicatePlaybackPositions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/ooyala/adtech/a;

    sget-object v2, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget v3, Lcom/ooyala/pulse/Error$Core;->INVALID_VALUE:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Both linear and non-linear ads requested for playback position:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ", "

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/ooyala/adtech/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/ooyala/adtech/RequestSettings;->getInsertionPointFilter()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/ooyala/adtech/RequestSettings;->getInsertionPointFilter()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->PLAYBACK_POSITION:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/ooyala/adtech/RequestSettings;->getInsertionPointFilter()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/ooyala/adtech/RequestSettings;->getLinearPlaybackPositions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/ooyala/adtech/RequestSettings;->getLinearPlaybackPositions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    :cond_4
    invoke-virtual {p0}, Lcom/ooyala/adtech/RequestSettings;->getNonlinearPlaybackPositions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/ooyala/adtech/RequestSettings;->getNonlinearPlaybackPositions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    :cond_5
    return-void

    :cond_6
    new-instance v0, Lcom/ooyala/adtech/a;

    sget-object v1, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget v2, Lcom/ooyala/pulse/Error$Core;->INVALID_VALUE:I

    const-string v3, "requestSettings maxLinearBreakDuration must be a positive value."

    invoke-direct {v0, v1, v2, v3}, Lcom/ooyala/adtech/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lcom/ooyala/adtech/a;

    sget-object v1, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget v2, Lcom/ooyala/pulse/Error$Core;->INVALID_VALUE:I

    const-string v3, "requestSettings bitrate must be a positive value."

    invoke-direct {v0, v1, v2, v3}, Lcom/ooyala/adtech/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Lcom/ooyala/adtech/a;

    sget-object v1, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget v2, Lcom/ooyala/pulse/Error$Core;->INVALID_VALUE:I

    const-string v3, "requestSettings height must be a positive value."

    invoke-direct {v0, v1, v2, v3}, Lcom/ooyala/adtech/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Lcom/ooyala/adtech/a;

    sget-object v1, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget v2, Lcom/ooyala/pulse/Error$Core;->INVALID_VALUE:I

    const-string v3, "requestSettings width must be a positive value."

    invoke-direct {v0, v1, v2, v3}, Lcom/ooyala/adtech/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0
.end method

.method protected copy()Lcom/ooyala/adtech/RequestSettings;
    .locals 3

    invoke-super {p0}, Lcom/ooyala/pulse/RequestSettings;->copy()Lcom/ooyala/pulse/RequestSettings;

    move-result-object v0

    new-instance v1, Lcom/ooyala/adtech/RequestSettings;

    invoke-direct {v1}, Lcom/ooyala/adtech/RequestSettings;-><init>()V

    invoke-virtual {v0}, Lcom/ooyala/pulse/RequestSettings;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/RequestSettings;->setHeight(I)V

    invoke-virtual {v0}, Lcom/ooyala/pulse/RequestSettings;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/RequestSettings;->setWidth(I)V

    invoke-virtual {v0}, Lcom/ooyala/pulse/RequestSettings;->getMaxBitRate()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/RequestSettings;->setMaxBitRate(I)V

    invoke-virtual {v0}, Lcom/ooyala/pulse/RequestSettings;->getAdvertisingID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/RequestSettings;->setAdvertisingID(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ooyala/pulse/RequestSettings;->getApplicationID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/RequestSettings;->setApplicationID(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ooyala/pulse/RequestSettings;->getApplicationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/RequestSettings;->setApplicationName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ooyala/pulse/RequestSettings;->getApplicationVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/RequestSettings;->setApplicationVersion(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ooyala/pulse/RequestSettings;->getApplicationBundle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/RequestSettings;->setApplicationBundle(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ooyala/pulse/RequestSettings;->getStoreUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/RequestSettings;->setStoreUrl(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ooyala/pulse/RequestSettings;->getLinearPlaybackPositions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/RequestSettings;->setLinearPlaybackPositions(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/ooyala/pulse/RequestSettings;->getNonlinearPlaybackPositions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/RequestSettings;->setNonlinearPlaybackPositions(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/ooyala/pulse/RequestSettings;->getInsertionPointFilter()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/RequestSettings;->setInsertionPointFilter(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/ooyala/pulse/RequestSettings;->getReferrerURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/RequestSettings;->setReferrerURL(Ljava/net/URL;)V

    invoke-virtual {v0}, Lcom/ooyala/pulse/RequestSettings;->getMaxLinearBreakDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/RequestSettings;->setMaxLinearBreakDuration(I)V

    invoke-virtual {v0}, Lcom/ooyala/pulse/RequestSettings;->isPulseIntegrationLevel()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/ooyala/adtech/RequestSettings;->setPulseIntegrationLevel()V

    :cond_0
    invoke-virtual {v0}, Lcom/ooyala/pulse/RequestSettings;->isAssetFilteringDisabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/RequestSettings;->disableAssetFiltering(Z)V

    invoke-virtual {v0}, Lcom/ooyala/pulse/RequestSettings;->isCacheBustingEnforced()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ooyala/adtech/RequestSettings;->setEnforceCachebusting(Z)V

    return-object v1
.end method

.method protected bridge synthetic copy()Lcom/ooyala/pulse/RequestSettings;
    .locals 1

    invoke-virtual {p0}, Lcom/ooyala/adtech/RequestSettings;->copy()Lcom/ooyala/adtech/RequestSettings;

    move-result-object v0

    return-object v0
.end method

.method protected setAssetFilteringDisabledState(Lcom/ooyala/adtech/RequestSettings$ActivationState;)V
    .locals 1

    sget-object v0, Lcom/ooyala/adtech/RequestSettings$1;->a:[I

    invoke-virtual {p1}, Lcom/ooyala/adtech/RequestSettings$ActivationState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p1, Lcom/ooyala/pulse/RequestSettings$ActivationState;->INACTIVE:Lcom/ooyala/pulse/RequestSettings$ActivationState;

    invoke-super {p0, p1}, Lcom/ooyala/pulse/RequestSettings;->setAssetFilteringDisabledState(Lcom/ooyala/pulse/RequestSettings$ActivationState;)V

    goto :goto_0

    :pswitch_1
    sget-object p1, Lcom/ooyala/pulse/RequestSettings$ActivationState;->ACTIVE:Lcom/ooyala/pulse/RequestSettings$ActivationState;

    invoke-super {p0, p1}, Lcom/ooyala/pulse/RequestSettings;->setAssetFilteringDisabledState(Lcom/ooyala/pulse/RequestSettings$ActivationState;)V

    return-void

    :pswitch_2
    sget-object p1, Lcom/ooyala/pulse/RequestSettings$ActivationState;->UNDEFINED:Lcom/ooyala/pulse/RequestSettings$ActivationState;

    invoke-super {p0, p1}, Lcom/ooyala/pulse/RequestSettings;->setAssetFilteringDisabledState(Lcom/ooyala/pulse/RequestSettings$ActivationState;)V

    return-void

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
