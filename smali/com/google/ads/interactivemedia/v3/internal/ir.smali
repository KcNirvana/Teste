.class abstract Lcom/google/ads/interactivemedia/v3/internal/ir;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/BaseManager;
.implements Lcom/google/ads/interactivemedia/v3/internal/jd$d;


# instance fields
.field protected final a:Lcom/google/ads/interactivemedia/v3/internal/jd;

.field protected final b:Ljava/lang/String;

.field protected c:Lcom/google/ads/interactivemedia/v3/internal/jo;

.field protected d:Lcom/google/ads/interactivemedia/v3/internal/iu;

.field protected e:Lcom/google/ads/interactivemedia/v3/internal/iv;

.field protected f:Z

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/ads/interactivemedia/v3/internal/ix;

.field private i:Lcom/google/ads/interactivemedia/v3/impl/data/b;

.field private j:Lcom/google/ads/interactivemedia/v3/internal/ib;

.field private k:Lcom/google/ads/interactivemedia/v3/internal/jh;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/jd;Lcom/google/ads/interactivemedia/v3/internal/jf;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Lcom/google/ads/interactivemedia/v3/internal/ib;Lcom/google/ads/interactivemedia/v3/internal/jh;Landroid/content/Context;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/api/AdError;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->f:Z

    new-instance p3, Ljava/util/ArrayList;

    const/4 p7, 0x1

    invoke-direct {p3, p7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->g:Ljava/util/List;

    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/ix;

    invoke-direct {p3}, Lcom/google/ads/interactivemedia/v3/internal/ix;-><init>()V

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->h:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->a:Lcom/google/ads/interactivemedia/v3/internal/jd;

    if-eqz p5, :cond_0

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->j:Lcom/google/ads/interactivemedia/v3/internal/ib;

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/ib;

    invoke-interface {p4}, Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object p5

    invoke-direct {p3, p1, p2, p5}, Lcom/google/ads/interactivemedia/v3/internal/ib;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/jd;Landroid/view/View;)V

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->j:Lcom/google/ads/interactivemedia/v3/internal/ib;

    :goto_0
    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->j:Lcom/google/ads/interactivemedia/v3/internal/ib;

    invoke-virtual {p3, p8}, Lcom/google/ads/interactivemedia/v3/internal/ib;->a(Z)V

    if-eqz p6, :cond_1

    invoke-virtual {p0, p6}, Lcom/google/ads/interactivemedia/v3/internal/ir;->addAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V

    invoke-virtual {p0, p6}, Lcom/google/ads/interactivemedia/v3/internal/ir;->addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    invoke-interface {p4}, Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object p3

    invoke-virtual {p6, p3}, Lcom/google/ads/interactivemedia/v3/internal/jh;->a(Landroid/view/View;)V

    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->k:Lcom/google/ads/interactivemedia/v3/internal/jh;

    :cond_1
    invoke-virtual {p2, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jd;->a(Lcom/google/ads/interactivemedia/v3/internal/jd$d;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->j:Lcom/google/ads/interactivemedia/v3/internal/ib;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ib;->a()V

    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ir;->a(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Ljava/util/Map;)V

    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ie;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->i:Lcom/google/ads/interactivemedia/v3/impl/data/b;

    invoke-direct {v0, p1, v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ie;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/api/Ad;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;

    invoke-interface {p2, v0}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;->onAdEvent(Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->c:Lcom/google/ads/interactivemedia/v3/internal/jo;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/jo;->d()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->k:Lcom/google/ads/interactivemedia/v3/internal/jh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->k:Lcom/google/ads/interactivemedia/v3/internal/jh;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/jh;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "IMASDK"

    const-string v1, "OMID ad session ended on BaseManager destroy."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->e:Lcom/google/ads/interactivemedia/v3/internal/iv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->e:Lcom/google/ads/interactivemedia/v3/internal/iv;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/iv;->c()V

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->j:Lcom/google/ads/interactivemedia/v3/internal/ib;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ib;->b()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->a:Lcom/google/ads/interactivemedia/v3/internal/jd;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/jd;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->i:Lcom/google/ads/interactivemedia/v3/impl/data/b;

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/id;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdError;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/id;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ir;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/id;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdError;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/id;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ir;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    return-void
.end method

.method a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->h:Lcom/google/ads/interactivemedia/v3/internal/ix;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    return-void
.end method

.method a(Lcom/google/ads/interactivemedia/v3/impl/data/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->i:Lcom/google/ads/interactivemedia/v3/impl/data/b;

    return-void
.end method

.method protected a(Lcom/google/ads/interactivemedia/v3/internal/jc$c;)V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->a:Lcom/google/ads/interactivemedia/v3/internal/jd;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/jc;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->adsManager:Lcom/google/ads/interactivemedia/v3/internal/jc$b;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->b:Ljava/lang/String;

    invoke-direct {v1, v2, p1, v3}, Lcom/google/ads/interactivemedia/v3/internal/jc;-><init>(Lcom/google/ads/interactivemedia/v3/internal/jc$b;Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/jd;->b(Lcom/google/ads/interactivemedia/v3/internal/jc;)V

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/jd$c;)V
    .locals 4

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/jd$c;->a:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/internal/jd$c;->b:Lcom/google/ads/interactivemedia/v3/impl/data/b;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/ir$1;->a:[I

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/internal/jd$c;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/jx;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->a:Lcom/google/ads/interactivemedia/v3/internal/jd;

    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/internal/jd$c;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/jd;->d(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/data/b;->getClickThruUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/jx;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->a:Lcom/google/ads/interactivemedia/v3/internal/jd;

    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/jd;->d(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->e:Lcom/google/ads/interactivemedia/v3/internal/iv;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->e:Lcom/google/ads/interactivemedia/v3/internal/iv;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/iv;->b()V

    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->j:Lcom/google/ads/interactivemedia/v3/internal/ib;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/ib;->d()V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->e:Lcom/google/ads/interactivemedia/v3/internal/iv;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->e:Lcom/google/ads/interactivemedia/v3/internal/iv;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/iv;->c()V

    :cond_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->j:Lcom/google/ads/interactivemedia/v3/internal/ib;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/ib;->c()V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->c:Lcom/google/ads/interactivemedia/v3/internal/jo;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/internal/jo;->a()V

    goto :goto_0

    :pswitch_5
    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ir;->a(Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    :cond_2
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->c:Lcom/google/ads/interactivemedia/v3/internal/jo;

    invoke-interface {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/jo;->a(Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ir;->a(Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    :cond_3
    :goto_0
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/internal/jd$c;->c:Ljava/util/Map;

    if-eqz v1, :cond_4

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/jd$c;->c:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ir;->a(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Ljava/util/Map;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ir;->a(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;)V

    :goto_1
    sget-object p1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    if-eq v0, p1, :cond_5

    sget-object p1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->SKIPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    if-ne v0, p1, :cond_6

    :cond_5
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ir;->a(Lcom/google/ads/interactivemedia/v3/impl/data/b;)V

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->h:Lcom/google/ads/interactivemedia/v3/internal/ix;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    return-void
.end method

.method public addAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->f:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->c:Lcom/google/ads/interactivemedia/v3/internal/jo;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/jo;->getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCurrentAd()Lcom/google/ads/interactivemedia/v3/api/Ad;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->i:Lcom/google/ads/interactivemedia/v3/impl/data/b;

    return-object v0
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ir;->init(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V

    return-void
.end method

.method public init(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "adsRenderingSettings"

    if-nez p1, :cond_0

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/im;

    invoke-direct {v2}, Lcom/google/ads/interactivemedia/v3/internal/im;-><init>()V

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->e:Lcom/google/ads/interactivemedia/v3/internal/iv;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->e:Lcom/google/ads/interactivemedia/v3/internal/iv;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/iv;->a()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v1

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getCurrentTime()F

    move-result v1

    float-to-double v1, v1

    const-string v3, "IMASDK"

    const/16 v4, 0x44

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "AdsManager.init -> Setting contentStartTime "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "contentStartTime"

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ir;->isCustomPlaybackUsed()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "sdkOwnedPlayer"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->c:Lcom/google/ads/interactivemedia/v3/internal/jo;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->getDisableUi()Z

    move-result v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/jo;->a(Z)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->a:Lcom/google/ads/interactivemedia/v3/internal/jd;

    invoke-virtual {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/jd;->a(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->a:Lcom/google/ads/interactivemedia/v3/internal/jd;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/jc;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->adsManager:Lcom/google/ads/interactivemedia/v3/internal/jc$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->init:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/ads/interactivemedia/v3/internal/jc;-><init>(Lcom/google/ads/interactivemedia/v3/internal/jc$b;Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/jd;->b(Lcom/google/ads/interactivemedia/v3/internal/jc;)V

    return-void
.end method

.method public abstract isCustomPlaybackUsed()Z
.end method

.method public removeAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->h:Lcom/google/ads/interactivemedia/v3/internal/ix;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ix;->b(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    return-void
.end method

.method public removeAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ir;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
