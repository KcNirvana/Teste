.class final Lcom/ooyala/pulse/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ooyala/pulse/h$a;
    }
.end annotation


# instance fields
.field a:Lcom/ooyala/adtech/ContentMetadata;

.field b:Lcom/ooyala/adtech/RequestSettings;

.field c:I

.field d:Lcom/ooyala/pulse/PulseSessionExtensionListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ooyala/adtech/ContentMetadata;

    invoke-direct {v0}, Lcom/ooyala/adtech/ContentMetadata;-><init>()V

    iput-object v0, p0, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    new-instance v0, Lcom/ooyala/adtech/RequestSettings;

    invoke-direct {v0}, Lcom/ooyala/adtech/RequestSettings;-><init>()V

    iput-object v0, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    return-void
.end method

.method public constructor <init>(Lcom/ooyala/adtech/ContentMetadata;Lcom/ooyala/adtech/RequestSettings;ILcom/ooyala/pulse/PulseSessionExtensionListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    iput-object p2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    iput p3, p0, Lcom/ooyala/pulse/h;->c:I

    iput-object p4, p0, Lcom/ooyala/pulse/h;->d:Lcom/ooyala/pulse/PulseSessionExtensionListener;

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/ooyala/adtech/RequestSettings;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    const-class v1, Lcom/ooyala/adtech/RequestSettings;

    const-string v2, "isPropertyInitialized"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Class;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    new-instance p1, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to fetch the value for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Lcom/ooyala/pulse/h;)Lcom/ooyala/pulse/h;
    .locals 4

    new-instance v0, Lcom/ooyala/pulse/h;

    invoke-direct {v0}, Lcom/ooyala/pulse/h;-><init>()V

    iget-object v1, p1, Lcom/ooyala/pulse/h;->d:Lcom/ooyala/pulse/PulseSessionExtensionListener;

    iput-object v1, v0, Lcom/ooyala/pulse/h;->d:Lcom/ooyala/pulse/PulseSessionExtensionListener;

    iget v1, p1, Lcom/ooyala/pulse/h;->c:I

    iput v1, v0, Lcom/ooyala/pulse/h;->c:I

    iget-object v1, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    if-eqz v1, :cond_f

    iget-object v1, p1, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v2}, Lcom/ooyala/adtech/RequestSettings;->getHeight()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/ooyala/adtech/RequestSettings;->getHeight()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v2}, Lcom/ooyala/adtech/RequestSettings;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/RequestSettings;->setHeight(I)V

    :cond_0
    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v2}, Lcom/ooyala/adtech/RequestSettings;->getWidth()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/ooyala/adtech/RequestSettings;->getWidth()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v2}, Lcom/ooyala/adtech/RequestSettings;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/RequestSettings;->setWidth(I)V

    :cond_1
    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v2}, Lcom/ooyala/adtech/RequestSettings;->getMaxBitRate()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/ooyala/adtech/RequestSettings;->getMaxBitRate()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v2}, Lcom/ooyala/adtech/RequestSettings;->getMaxBitRate()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/RequestSettings;->setMaxBitRate(I)V

    :cond_2
    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v2}, Lcom/ooyala/adtech/RequestSettings;->getAdvertisingID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/ooyala/adtech/RequestSettings;->getAdvertisingID()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v2}, Lcom/ooyala/adtech/RequestSettings;->getAdvertisingID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/RequestSettings;->setAdvertisingID(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v2}, Lcom/ooyala/adtech/RequestSettings;->getApplicationID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/ooyala/adtech/RequestSettings;->getApplicationID()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v2}, Lcom/ooyala/adtech/RequestSettings;->getApplicationID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/RequestSettings;->setApplicationID(Ljava/lang/String;)V

    :cond_4
    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v2}, Lcom/ooyala/adtech/RequestSettings;->getApplicationName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/ooyala/adtech/RequestSettings;->getApplicationName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v2}, Lcom/ooyala/adtech/RequestSettings;->getApplicationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/RequestSettings;->setApplicationName(Ljava/lang/String;)V

    :cond_5
    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v2}, Lcom/ooyala/adtech/RequestSettings;->getApplicationVersion()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/ooyala/adtech/RequestSettings;->getApplicationVersion()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v2}, Lcom/ooyala/adtech/RequestSettings;->getApplicationVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/RequestSettings;->setApplicationVersion(Ljava/lang/String;)V

    :cond_6
    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v2}, Lcom/ooyala/adtech/RequestSettings;->getApplicationBundle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/ooyala/adtech/RequestSettings;->getApplicationBundle()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v2}, Lcom/ooyala/adtech/RequestSettings;->getApplicationBundle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/RequestSettings;->setApplicationBundle(Ljava/lang/String;)V

    :cond_7
    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v2}, Lcom/ooyala/adtech/RequestSettings;->getStoreUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/ooyala/adtech/RequestSettings;->getStoreUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v2}, Lcom/ooyala/adtech/RequestSettings;->getStoreUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/RequestSettings;->setStoreUrl(Ljava/lang/String;)V

    :cond_8
    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v2}, Lcom/ooyala/adtech/RequestSettings;->getLinearPlaybackPositions()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lcom/ooyala/adtech/RequestSettings;->getLinearPlaybackPositions()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v2}, Lcom/ooyala/adtech/RequestSettings;->getLinearPlaybackPositions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/RequestSettings;->setLinearPlaybackPositions(Ljava/util/List;)V

    :cond_9
    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v2}, Lcom/ooyala/adtech/RequestSettings;->getNonlinearPlaybackPositions()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v1}, Lcom/ooyala/adtech/RequestSettings;->getNonlinearPlaybackPositions()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v2}, Lcom/ooyala/adtech/RequestSettings;->getNonlinearPlaybackPositions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/RequestSettings;->setNonlinearPlaybackPositions(Ljava/util/List;)V

    :cond_a
    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v2}, Lcom/ooyala/adtech/RequestSettings;->getInsertionPointFilter()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Lcom/ooyala/adtech/RequestSettings;->getInsertionPointFilter()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v2}, Lcom/ooyala/adtech/RequestSettings;->getInsertionPointFilter()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/RequestSettings;->setInsertionPointFilter(Ljava/util/List;)V

    :cond_b
    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v2}, Lcom/ooyala/adtech/RequestSettings;->getReferrerURL()Ljava/net/URL;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Lcom/ooyala/adtech/RequestSettings;->getReferrerURL()Ljava/net/URL;

    move-result-object v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v2}, Lcom/ooyala/adtech/RequestSettings;->getReferrerURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/RequestSettings;->setReferrerURL(Ljava/net/URL;)V

    :cond_c
    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v2}, Lcom/ooyala/adtech/RequestSettings;->getMaxLinearBreakDuration()I

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v1}, Lcom/ooyala/adtech/RequestSettings;->getMaxLinearBreakDuration()I

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v2}, Lcom/ooyala/adtech/RequestSettings;->getMaxLinearBreakDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/RequestSettings;->setMaxLinearBreakDuration(I)V

    :cond_d
    :try_start_0
    const-string v2, "assetFilteringDisabled"

    iget-object v3, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-static {v2, v3}, Lcom/ooyala/pulse/h;->a(Ljava/lang/String;Lcom/ooyala/adtech/RequestSettings;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "assetFilteringDisabled"

    invoke-static {v2, v1}, Lcom/ooyala/pulse/h;->a(Ljava/lang/String;Lcom/ooyala/adtech/RequestSettings;)Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v2}, Lcom/ooyala/adtech/RequestSettings;->isAssetFilteringDisabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/RequestSettings;->disableAssetFiltering(Z)V

    :cond_e
    const-string v2, "cacheBustingEnforced"

    iget-object v3, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-static {v2, v3}, Lcom/ooyala/pulse/h;->a(Ljava/lang/String;Lcom/ooyala/adtech/RequestSettings;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "cacheBustingEnforced"

    invoke-static {v2, v1}, Lcom/ooyala/pulse/h;->a(Ljava/lang/String;Lcom/ooyala/adtech/RequestSettings;)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v2}, Lcom/ooyala/adtech/RequestSettings;->isCacheBustingEnforced()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/RequestSettings;->setEnforceCachebusting(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_f
    :goto_0
    iget-object v1, p1, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    iput-object v1, v0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    iget-object v1, p0, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    if-eqz v1, :cond_18

    iget-object v1, p1, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    iget-object v2, p0, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    invoke-virtual {v2}, Lcom/ooyala/adtech/ContentMetadata;->getCategory()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v1}, Lcom/ooyala/adtech/ContentMetadata;->getCategory()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    invoke-virtual {v2}, Lcom/ooyala/adtech/ContentMetadata;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/ContentMetadata;->setCategory(Ljava/lang/String;)V

    :cond_10
    iget-object v2, p0, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    invoke-virtual {v2}, Lcom/ooyala/adtech/ContentMetadata;->getContentForm()Lcom/ooyala/pulse/ContentMetadata$ContentForm;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v1}, Lcom/ooyala/adtech/ContentMetadata;->getContentForm()Lcom/ooyala/pulse/ContentMetadata$ContentForm;

    move-result-object v2

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    invoke-virtual {v2}, Lcom/ooyala/adtech/ContentMetadata;->getContentForm()Lcom/ooyala/pulse/ContentMetadata$ContentForm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/ContentMetadata;->setContentForm(Lcom/ooyala/pulse/ContentMetadata$ContentForm;)V

    :cond_11
    iget-object v2, p0, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    invoke-virtual {v2}, Lcom/ooyala/adtech/ContentMetadata;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v1}, Lcom/ooyala/adtech/ContentMetadata;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    invoke-virtual {v2}, Lcom/ooyala/adtech/ContentMetadata;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/ContentMetadata;->setIdentifier(Ljava/lang/String;)V

    :cond_12
    iget-object v2, p0, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    invoke-virtual {v2}, Lcom/ooyala/adtech/ContentMetadata;->getContentPartner()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v1}, Lcom/ooyala/adtech/ContentMetadata;->getContentPartner()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_13

    iget-object v2, p0, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    invoke-virtual {v2}, Lcom/ooyala/adtech/ContentMetadata;->getContentPartner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/ContentMetadata;->setContentPartner(Ljava/lang/String;)V

    :cond_13
    iget-object v2, p0, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    invoke-virtual {v2}, Lcom/ooyala/adtech/ContentMetadata;->getDuration()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_14

    invoke-virtual {v1}, Lcom/ooyala/adtech/ContentMetadata;->getDuration()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_14

    iget-object v2, p0, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    invoke-virtual {v2}, Lcom/ooyala/adtech/ContentMetadata;->getDuration()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/ContentMetadata;->setDuration(F)V

    :cond_14
    iget-object v2, p0, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    invoke-virtual {v2}, Lcom/ooyala/adtech/ContentMetadata;->getFlags()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v1}, Lcom/ooyala/adtech/ContentMetadata;->getFlags()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_15

    iget-object v2, p0, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    invoke-virtual {v2}, Lcom/ooyala/adtech/ContentMetadata;->getFlags()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/ContentMetadata;->setFlags(Ljava/util/List;)V

    :cond_15
    iget-object v2, p0, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    invoke-virtual {v2}, Lcom/ooyala/adtech/ContentMetadata;->getContentProviderInformation()Lcom/ooyala/pulse/d;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {v1}, Lcom/ooyala/adtech/ContentMetadata;->getContentProviderInformation()Lcom/ooyala/pulse/d;

    move-result-object v2

    if-nez v2, :cond_16

    iget-object v2, p0, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    invoke-virtual {v2}, Lcom/ooyala/adtech/ContentMetadata;->getContentProviderInformation()Lcom/ooyala/pulse/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/ContentMetadata;->copyContentProviderInformation(Lcom/ooyala/pulse/d;)V

    :cond_16
    iget-object v2, p0, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    invoke-virtual {v2}, Lcom/ooyala/adtech/ContentMetadata;->getTags()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {v1}, Lcom/ooyala/adtech/ContentMetadata;->getTags()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_17

    iget-object v2, p0, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    invoke-virtual {v2}, Lcom/ooyala/adtech/ContentMetadata;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/ContentMetadata;->setTags(Ljava/util/List;)V

    :cond_17
    iget-object v2, p0, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    invoke-virtual {v2}, Lcom/ooyala/adtech/ContentMetadata;->getCustomParameters()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-virtual {v1}, Lcom/ooyala/adtech/ContentMetadata;->getCustomParameters()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_18

    iget-object v2, p0, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    invoke-virtual {v2}, Lcom/ooyala/adtech/ContentMetadata;->getCustomParameters()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/ContentMetadata;->setCustomParameters(Ljava/util/Map;)V

    :cond_18
    iget-object p1, p1, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    iput-object p1, v0, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    return-object v0
.end method

.method public final b(Lcom/ooyala/pulse/h;)V
    .locals 5

    iget-object v0, p1, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v0}, Lcom/ooyala/adtech/RequestSettings;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ooyala/adtech/RequestSettings;->setHeight(I)V

    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v0}, Lcom/ooyala/adtech/RequestSettings;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ooyala/adtech/RequestSettings;->setWidth(I)V

    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v0}, Lcom/ooyala/adtech/RequestSettings;->getMaxBitRate()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ooyala/adtech/RequestSettings;->setMaxBitRate(I)V

    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v0}, Lcom/ooyala/adtech/RequestSettings;->getAdvertisingID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ooyala/adtech/RequestSettings;->setAdvertisingID(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v0}, Lcom/ooyala/adtech/RequestSettings;->getApplicationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ooyala/adtech/RequestSettings;->setApplicationName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v0}, Lcom/ooyala/adtech/RequestSettings;->getApplicationID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ooyala/adtech/RequestSettings;->setApplicationID(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v0}, Lcom/ooyala/adtech/RequestSettings;->getApplicationVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ooyala/adtech/RequestSettings;->setApplicationVersion(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v0}, Lcom/ooyala/adtech/RequestSettings;->getApplicationBundle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ooyala/adtech/RequestSettings;->setApplicationBundle(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v0}, Lcom/ooyala/adtech/RequestSettings;->getStoreUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ooyala/adtech/RequestSettings;->setStoreUrl(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/ooyala/adtech/RequestSettings;->getLinearPlaybackPositions()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/ooyala/adtech/RequestSettings;->getLinearPlaybackPositions()Ljava/util/List;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    :goto_0
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Lcom/ooyala/adtech/RequestSettings;->setLinearPlaybackPositions(Ljava/util/List;)V

    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/ooyala/adtech/RequestSettings;->getNonlinearPlaybackPositions()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/ooyala/adtech/RequestSettings;->getNonlinearPlaybackPositions()Ljava/util/List;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    :goto_1
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Lcom/ooyala/adtech/RequestSettings;->setNonlinearPlaybackPositions(Ljava/util/List;)V

    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/ooyala/adtech/RequestSettings;->getInsertionPointFilter()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/ooyala/adtech/RequestSettings;->getInsertionPointFilter()Ljava/util/List;

    move-result-object v4

    goto :goto_2

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    :goto_2
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Lcom/ooyala/adtech/RequestSettings;->setInsertionPointFilter(Ljava/util/List;)V

    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v0}, Lcom/ooyala/adtech/RequestSettings;->getReferrerURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ooyala/adtech/RequestSettings;->setReferrerURL(Ljava/net/URL;)V

    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v0}, Lcom/ooyala/adtech/RequestSettings;->getMaxLinearBreakDuration()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ooyala/adtech/RequestSettings;->setMaxLinearBreakDuration(I)V

    :try_start_0
    const-string v2, "assetFilteringDisabled"

    invoke-static {v2, v0}, Lcom/ooyala/pulse/h;->a(Ljava/lang/String;Lcom/ooyala/adtech/RequestSettings;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v0}, Lcom/ooyala/adtech/RequestSettings;->isAssetFilteringDisabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ooyala/adtech/RequestSettings;->disableAssetFiltering(Z)V

    :cond_3
    const-string v2, "cacheBustingEnforced"

    invoke-static {v2, v0}, Lcom/ooyala/pulse/h;->a(Ljava/lang/String;Lcom/ooyala/adtech/RequestSettings;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    invoke-virtual {v0}, Lcom/ooyala/adtech/RequestSettings;->isCacheBustingEnforced()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/ooyala/adtech/RequestSettings;->setEnforceCachebusting(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    goto :goto_3

    :cond_4
    iput-object v1, p0, Lcom/ooyala/pulse/h;->b:Lcom/ooyala/adtech/RequestSettings;

    :cond_5
    :goto_3
    iget-object v0, p1, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    invoke-virtual {v0}, Lcom/ooyala/adtech/ContentMetadata;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/ContentMetadata;->setCategory(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    invoke-virtual {v0}, Lcom/ooyala/adtech/ContentMetadata;->getContentForm()Lcom/ooyala/pulse/ContentMetadata$ContentForm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/ContentMetadata;->setContentForm(Lcom/ooyala/pulse/ContentMetadata$ContentForm;)V

    iget-object v1, p0, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    invoke-virtual {v0}, Lcom/ooyala/adtech/ContentMetadata;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/ContentMetadata;->setIdentifier(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    invoke-virtual {v0}, Lcom/ooyala/adtech/ContentMetadata;->getContentPartner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/ContentMetadata;->setContentPartner(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    invoke-virtual {v0}, Lcom/ooyala/adtech/ContentMetadata;->getDuration()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/ContentMetadata;->setDuration(F)V

    iget-object v1, p0, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/ooyala/adtech/ContentMetadata;->getFlags()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lcom/ooyala/adtech/ContentMetadata;->getFlags()Ljava/util/List;

    move-result-object v3

    goto :goto_4

    :cond_6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    :goto_4
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/ContentMetadata;->setFlags(Ljava/util/List;)V

    iget-object v1, p0, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/ooyala/adtech/ContentMetadata;->getTags()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lcom/ooyala/adtech/ContentMetadata;->getTags()Ljava/util/List;

    move-result-object v3

    goto :goto_5

    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    :goto_5
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/ContentMetadata;->setTags(Ljava/util/List;)V

    iget-object v1, p0, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    invoke-virtual {v0}, Lcom/ooyala/adtech/ContentMetadata;->getContentProviderInformation()Lcom/ooyala/pulse/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/ContentMetadata;->copyContentProviderInformation(Lcom/ooyala/pulse/d;)V

    iget-object v1, p0, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    new-instance v2, Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/ooyala/adtech/ContentMetadata;->getCustomParameters()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lcom/ooyala/adtech/ContentMetadata;->getCustomParameters()Ljava/util/Map;

    move-result-object v0

    goto :goto_6

    :cond_8
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_6
    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/ContentMetadata;->setCustomParameters(Ljava/util/Map;)V

    goto :goto_7

    :cond_9
    iput-object v1, p0, Lcom/ooyala/pulse/h;->a:Lcom/ooyala/adtech/ContentMetadata;

    :goto_7
    iget v0, p1, Lcom/ooyala/pulse/h;->c:I

    if-eqz v0, :cond_a

    iget v0, p1, Lcom/ooyala/pulse/h;->c:I

    iput v0, p0, Lcom/ooyala/pulse/h;->c:I

    :cond_a
    iget-object v0, p1, Lcom/ooyala/pulse/h;->d:Lcom/ooyala/pulse/PulseSessionExtensionListener;

    if-eqz v0, :cond_b

    iget-object p1, p1, Lcom/ooyala/pulse/h;->d:Lcom/ooyala/pulse/PulseSessionExtensionListener;

    iput-object p1, p0, Lcom/ooyala/pulse/h;->d:Lcom/ooyala/pulse/PulseSessionExtensionListener;

    :cond_b
    return-void
.end method
