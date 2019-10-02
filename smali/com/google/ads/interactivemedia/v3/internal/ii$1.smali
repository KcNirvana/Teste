.class Lcom/google/ads/interactivemedia/v3/internal/ii$1;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/jd$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/internal/ii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/ii;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ii;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$1;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$1;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(Lcom/google/ads/interactivemedia/v3/internal/ii;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$1;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(Lcom/google/ads/interactivemedia/v3/internal/ii;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$1;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ii;->f(Lcom/google/ads/interactivemedia/v3/internal/ii;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/id;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdError;

    invoke-direct {v1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/id;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$1;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ii;->e(Lcom/google/ads/interactivemedia/v3/internal/ii;)Lcom/google/ads/interactivemedia/v3/internal/ix;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$1;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(Lcom/google/ads/interactivemedia/v3/internal/ii;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$1;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(Lcom/google/ads/interactivemedia/v3/internal/ii;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$1;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ii;->f(Lcom/google/ads/interactivemedia/v3/internal/ii;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/id;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdError;

    invoke-direct {v1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/id;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$1;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ii;->e(Lcom/google/ads/interactivemedia/v3/internal/ii;)Lcom/google/ads/interactivemedia/v3/internal/ix;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/jf;Ljava/lang/String;Z)V
    .locals 14

    move-object v1, p0

    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/ii$1;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ii;->f(Lcom/google/ads/interactivemedia/v3/internal/ii;)Ljava/util/Map;

    move-result-object v0

    move-object v3, p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/ii$1;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ii;->c(Lcom/google/ads/interactivemedia/v3/internal/ii;)Lcom/google/ads/interactivemedia/v3/internal/jh;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/jh;->a(Z)V

    :try_start_0
    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/ii$1;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    new-instance v12, Lcom/google/ads/interactivemedia/v3/internal/ik;

    new-instance v13, Lcom/google/ads/interactivemedia/v3/internal/jl;

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/ii$1;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/ii;->b(Lcom/google/ads/interactivemedia/v3/internal/ii;)Lcom/google/ads/interactivemedia/v3/internal/jd;

    move-result-object v4

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/ii$1;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/ii;->c(Lcom/google/ads/interactivemedia/v3/internal/ii;)Lcom/google/ads/interactivemedia/v3/internal/jh;

    move-result-object v7

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/ii$1;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/ii;->d(Lcom/google/ads/interactivemedia/v3/internal/ii;)Landroid/content/Context;

    move-result-object v8

    move-object v2, v13

    move-object v3, p1

    move-object/from16 v5, p2

    move-object v6, v11

    move-object/from16 v9, p3

    move/from16 v10, p4

    invoke-direct/range {v2 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/jl;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/jd;Lcom/google/ads/interactivemedia/v3/internal/jf;Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Lcom/google/ads/interactivemedia/v3/internal/jh;Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-interface {v11}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v12, v13, v2}, Lcom/google/ads/interactivemedia/v3/internal/ik;-><init>(Lcom/google/ads/interactivemedia/v3/api/StreamManager;Ljava/lang/Object;)V

    invoke-virtual {v0, v12}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;)V
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/api/AdError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/ii$1;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/ii;->e(Lcom/google/ads/interactivemedia/v3/internal/ii;)Lcom/google/ads/interactivemedia/v3/internal/ix;

    move-result-object v2

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/id;

    invoke-interface {v11}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/id;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/jf;Ljava/util/List;Ljava/util/SortedSet;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/internal/jf;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/SortedSet<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/ii$1;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(Lcom/google/ads/interactivemedia/v3/internal/ii;)Ljava/util/Map;

    move-result-object v0

    move-object/from16 v3, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    :try_start_0
    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/ii$1;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    new-instance v14, Lcom/google/ads/interactivemedia/v3/internal/ik;

    new-instance v15, Lcom/google/ads/interactivemedia/v3/internal/ij;

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/ii$1;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/ii;->b(Lcom/google/ads/interactivemedia/v3/internal/ii;)Lcom/google/ads/interactivemedia/v3/internal/jd;

    move-result-object v4

    invoke-interface {v13}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getAdDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    move-result-object v6

    invoke-interface {v13}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getContentProgressProvider()Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

    move-result-object v7

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/ii$1;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/ii;->c(Lcom/google/ads/interactivemedia/v3/internal/ii;)Lcom/google/ads/interactivemedia/v3/internal/jh;

    move-result-object v10

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/ii$1;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/ii;->d(Lcom/google/ads/interactivemedia/v3/internal/ii;)Landroid/content/Context;

    move-result-object v11

    move-object v2, v15

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v12, p5

    invoke-direct/range {v2 .. v12}, Lcom/google/ads/interactivemedia/v3/internal/ij;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/jd;Lcom/google/ads/interactivemedia/v3/internal/jf;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;Ljava/util/List;Ljava/util/SortedSet;Lcom/google/ads/interactivemedia/v3/internal/jh;Landroid/content/Context;Z)V

    invoke-interface {v13}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v14, v15, v2}, Lcom/google/ads/interactivemedia/v3/internal/ik;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdsManager;Ljava/lang/Object;)V

    invoke-virtual {v0, v14}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;)V
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/api/AdError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/ii$1;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/ii;->e(Lcom/google/ads/interactivemedia/v3/internal/ii;)Lcom/google/ads/interactivemedia/v3/internal/ix;

    move-result-object v2

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/id;

    invoke-interface {v13}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/id;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    :goto_0
    return-void
.end method
