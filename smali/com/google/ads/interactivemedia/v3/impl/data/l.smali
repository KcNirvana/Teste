.class public abstract Lcom/google/ads/interactivemedia/v3/impl/data/l;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/data/l$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/ads/interactivemedia/v3/impl/data/l$a;
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/h$a;-><init>()V

    return-object v0
.end method

.method public static create(Lcom/google/ads/interactivemedia/v3/api/AdsRequest;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/internal/ii$b;Z)Lcom/google/ads/interactivemedia/v3/impl/data/l;
    .locals 14

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getAdTagUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getAdsResponse()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getExtraParameters()Ljava/util/Map;

    move-result-object v2

    move-object v4, p0

    check-cast v4, Lcom/google/ads/interactivemedia/v3/internal/in;

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/in;->a()Lcom/google/ads/interactivemedia/v3/internal/in$a;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/in;->b()Lcom/google/ads/interactivemedia/v3/internal/in$b;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/in;->c()Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/in;->d()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/in;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/in;->f()Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/in;->g()Ljava/lang/Float;

    move-result-object v4

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getAdDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    move-result-object v11

    check-cast v11, Lcom/google/ads/interactivemedia/v3/internal/ic;

    invoke-static {v11}, Lcom/google/ads/interactivemedia/v3/impl/data/l;->getCompanionSlots(Lcom/google/ads/interactivemedia/v3/internal/iq;)Ljava/util/Map;

    move-result-object v11

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getAdDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v12

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/impl/data/a$a;->createFromLocationOnScreen(Landroid/view/View;)Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    move-result-object v3

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/l;->builder()Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object v13

    invoke-interface {v13, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->adTagUrl(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->adsResponse(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object v0

    move-object v1, p1

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->env(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->network(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->extraParameters(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object v0

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->settings(Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->videoPlayActivation(Lcom/google/ads/interactivemedia/v3/internal/in$a;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->videoPlayMuted(Lcom/google/ads/interactivemedia/v3/internal/in$b;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->contentDuration(Ljava/lang/Float;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->contentKeywords(Ljava/util/List;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object v0

    invoke-interface {v0, v9}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->contentTitle(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object v0

    invoke-interface {v0, v10}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->vastLoadTimeout(Ljava/lang/Float;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->liveStreamPrefetchSeconds(Ljava/lang/Float;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object v0

    invoke-interface {v0, v11}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->companionSlots(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object v0

    move-object/from16 v1, p4

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->marketAppInfo(Lcom/google/ads/interactivemedia/v3/internal/ii$b;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object v0

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->isTv(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object v0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->isAdContainerAttachedToWindow(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->adContainerBounds(Lcom/google/ads/interactivemedia/v3/impl/data/a$a;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->build()Lcom/google/ads/interactivemedia/v3/impl/data/l;

    move-result-object v0

    return-object v0
.end method

.method public static createFromStreamRequest(Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/internal/ii$b;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/l;
    .locals 6

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getStreamDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/jk;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/l;->getCompanionSlots(Lcom/google/ads/interactivemedia/v3/internal/iq;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getStreamDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/data/a$a;->createFromLocationOnScreen(Landroid/view/View;)Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    move-result-object v1

    const-string v3, "hls"

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getFormat()Lcom/google/ads/interactivemedia/v3/api/StreamRequest$StreamFormat;

    move-result-object v4

    sget-object v5, Lcom/google/ads/interactivemedia/v3/api/StreamRequest$StreamFormat;->DASH:Lcom/google/ads/interactivemedia/v3/api/StreamRequest$StreamFormat;

    if-ne v4, v5, :cond_0

    const-string v3, "dash"

    :cond_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/l;->builder()Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object v4

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getAssetKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->assetKey(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object v4

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->authToken(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object v4

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getContentSourceId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->contentSourceId(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object v4

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getVideoId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->videoId(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object v4

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getApiKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->apiKey(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object v4

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getAdTagParameters()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->adTagParameters(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->env(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->network(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->settings(Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->companionSlots(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object p1

    invoke-interface {p1, p4}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->marketAppInfo(Lcom/google/ads/interactivemedia/v3/internal/ii$b;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object p1

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->isTv(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object p1

    invoke-interface {p1, p6}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->msParameter(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->isAdContainerAttachedToWindow(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->adContainerBounds(Lcom/google/ads/interactivemedia/v3/impl/data/a$a;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object p1

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getStreamActivityMonitorId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->streamActivityMonitorId(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->format(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object p1

    invoke-interface {p1, p7}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->rdid(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object p1

    invoke-interface {p1, p8}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->idType(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object p1

    invoke-interface {p1, p9}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->isLat(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object p1

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getUseQAStreamBaseUrl()Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->useQAStreamBaseUrl(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/l$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/l$a;->build()Lcom/google/ads/interactivemedia/v3/impl/data/l;

    move-result-object p0

    return-object p0
.end method

.method private static getCompanionSlots(Lcom/google/ads/interactivemedia/v3/internal/iq;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/iq;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/iq;->a()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/lf$a;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/lf$a;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;

    invoke-interface {v3}, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;->getWidth()I

    move-result v4

    invoke-interface {v3}, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;->getHeight()I

    move-result v3

    const/16 v5, 0x17

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/lf$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/lf$a;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/lf$a;->a()Lcom/google/ads/interactivemedia/v3/internal/lf;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abstract adContainerBounds()Lcom/google/ads/interactivemedia/v3/impl/data/a$a;
.end method

.method public abstract adTagParameters()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract adTagUrl()Ljava/lang/String;
.end method

.method public abstract adsResponse()Ljava/lang/String;
.end method

.method public abstract apiKey()Ljava/lang/String;
.end method

.method public abstract assetKey()Ljava/lang/String;
.end method

.method public abstract authToken()Ljava/lang/String;
.end method

.method public abstract companionSlots()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract contentDuration()Ljava/lang/Float;
.end method

.method public abstract contentKeywords()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract contentSourceId()Ljava/lang/String;
.end method

.method public abstract contentTitle()Ljava/lang/String;
.end method

.method public abstract env()Ljava/lang/String;
.end method

.method public abstract extraParameters()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract format()Ljava/lang/String;
.end method

.method public abstract idType()Ljava/lang/String;
.end method

.method public abstract isAdContainerAttachedToWindow()Ljava/lang/Boolean;
.end method

.method public abstract isLat()Ljava/lang/String;
.end method

.method public abstract isTv()Ljava/lang/Boolean;
.end method

.method public abstract liveStreamPrefetchSeconds()Ljava/lang/Float;
.end method

.method public abstract marketAppInfo()Lcom/google/ads/interactivemedia/v3/internal/ii$b;
.end method

.method public abstract msParameter()Ljava/lang/String;
.end method

.method public abstract network()Ljava/lang/String;
.end method

.method public abstract rdid()Ljava/lang/String;
.end method

.method public abstract settings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;
.end method

.method public abstract streamActivityMonitorId()Ljava/lang/String;
.end method

.method public abstract useQAStreamBaseUrl()Ljava/lang/Boolean;
.end method

.method public abstract vastLoadTimeout()Ljava/lang/Float;
.end method

.method public abstract videoId()Ljava/lang/String;
.end method

.method public abstract videoPlayActivation()Lcom/google/ads/interactivemedia/v3/internal/in$a;
.end method

.method public abstract videoPlayMuted()Lcom/google/ads/interactivemedia/v3/internal/in$b;
.end method
