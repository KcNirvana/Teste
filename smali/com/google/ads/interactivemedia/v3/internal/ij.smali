.class public Lcom/google/ads/interactivemedia/v3/internal/ij;
.super Lcom/google/ads/interactivemedia/v3/internal/ir;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdsManager;


# instance fields
.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/jd;Lcom/google/ads/interactivemedia/v3/internal/jf;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;Ljava/util/List;Ljava/util/SortedSet;Lcom/google/ads/interactivemedia/v3/internal/jh;Landroid/content/Context;Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/internal/jd;",
            "Lcom/google/ads/interactivemedia/v3/internal/jf;",
            "Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;",
            "Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/SortedSet<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/google/ads/interactivemedia/v3/internal/jh;",
            "Landroid/content/Context;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/api/AdError;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    invoke-direct/range {v0 .. v13}, Lcom/google/ads/interactivemedia/v3/internal/ij;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/jd;Lcom/google/ads/interactivemedia/v3/internal/jf;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;Ljava/util/List;Ljava/util/SortedSet;Lcom/google/ads/interactivemedia/v3/internal/jo;Lcom/google/ads/interactivemedia/v3/internal/iv;Lcom/google/ads/interactivemedia/v3/internal/ib;Lcom/google/ads/interactivemedia/v3/internal/jh;Landroid/content/Context;Z)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/jd;Lcom/google/ads/interactivemedia/v3/internal/jf;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;Ljava/util/List;Ljava/util/SortedSet;Lcom/google/ads/interactivemedia/v3/internal/jo;Lcom/google/ads/interactivemedia/v3/internal/iv;Lcom/google/ads/interactivemedia/v3/internal/ib;Lcom/google/ads/interactivemedia/v3/internal/jh;Landroid/content/Context;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/internal/jd;",
            "Lcom/google/ads/interactivemedia/v3/internal/jf;",
            "Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;",
            "Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/SortedSet<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/google/ads/interactivemedia/v3/internal/jo;",
            "Lcom/google/ads/interactivemedia/v3/internal/iv;",
            "Lcom/google/ads/interactivemedia/v3/internal/ib;",
            "Lcom/google/ads/interactivemedia/v3/internal/jh;",
            "Landroid/content/Context;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/api/AdError;
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p5

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    move/from16 v8, p13

    invoke-direct/range {v0 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/ir;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/jd;Lcom/google/ads/interactivemedia/v3/internal/jf;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Lcom/google/ads/interactivemedia/v3/internal/ib;Lcom/google/ads/interactivemedia/v3/internal/jh;Landroid/content/Context;Z)V

    move-object/from16 v0, p6

    iput-object v0, v9, Lcom/google/ads/interactivemedia/v3/internal/ij;->h:Ljava/util/List;

    if-eqz v13, :cond_2

    invoke-interface/range {p7 .. p7}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v12, :cond_1

    if-eqz v15, :cond_0

    iput-object v15, v9, Lcom/google/ads/interactivemedia/v3/internal/ij;->e:Lcom/google/ads/interactivemedia/v3/internal/iv;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/iv;

    invoke-virtual/range {p3 .. p3}, Lcom/google/ads/interactivemedia/v3/internal/jf;->a()J

    move-result-wide v1

    invoke-direct {v0, v12, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/iv;-><init>(Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;J)V

    iput-object v0, v9, Lcom/google/ads/interactivemedia/v3/internal/ij;->e:Lcom/google/ads/interactivemedia/v3/internal/iv;

    :goto_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/iu;

    invoke-direct {v0, v11, v13, v10}, Lcom/google/ads/interactivemedia/v3/internal/iu;-><init>(Lcom/google/ads/interactivemedia/v3/internal/jd;Ljava/util/SortedSet;Ljava/lang/String;)V

    iput-object v0, v9, Lcom/google/ads/interactivemedia/v3/internal/ij;->d:Lcom/google/ads/interactivemedia/v3/internal/iu;

    iget-object v0, v9, Lcom/google/ads/interactivemedia/v3/internal/ij;->e:Lcom/google/ads/interactivemedia/v3/internal/iv;

    iget-object v1, v9, Lcom/google/ads/interactivemedia/v3/internal/ij;->d:Lcom/google/ads/interactivemedia/v3/internal/iu;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/iv;->a(Lcom/google/ads/interactivemedia/v3/internal/ji$b;)V

    iget-object v0, v9, Lcom/google/ads/interactivemedia/v3/internal/ij;->e:Lcom/google/ads/interactivemedia/v3/internal/iv;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/iv;->b()V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->PLAY:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->PLAYLIST_NO_CONTENT_TRACKING:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v3, "Unable to handle cue points, no content progress provider configured."

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    if-eqz v14, :cond_3

    iput-object v14, v9, Lcom/google/ads/interactivemedia/v3/internal/ij;->c:Lcom/google/ads/interactivemedia/v3/internal/jo;

    goto :goto_2

    :cond_3
    invoke-virtual/range {p3 .. p3}, Lcom/google/ads/interactivemedia/v3/internal/jf;->b()Lcom/google/ads/interactivemedia/v3/internal/jc$a;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/ij$1;->a:[I

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/jc$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->PLAY:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v4, "UI style not supported: "

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/jc$a;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :pswitch_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/jg;

    move-object/from16 v1, p4

    check-cast v1, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    move-object/from16 p4, v0

    move-object/from16 p5, p1

    move-object/from16 p6, p3

    move-object/from16 p7, p2

    move-object/from16 p8, p0

    move-object/from16 p9, v1

    move-object/from16 p10, p12

    invoke-direct/range {p4 .. p10}, Lcom/google/ads/interactivemedia/v3/internal/jg;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/jf;Lcom/google/ads/interactivemedia/v3/internal/jd;Lcom/google/ads/interactivemedia/v3/internal/ij;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;Landroid/content/Context;)V

    iput-object v0, v9, Lcom/google/ads/interactivemedia/v3/internal/ij;->c:Lcom/google/ads/interactivemedia/v3/internal/jo;

    :goto_2
    iget-object v0, v9, Lcom/google/ads/interactivemedia/v3/internal/ij;->c:Lcom/google/ads/interactivemedia/v3/internal/jo;

    invoke-virtual {v9, v0}, Lcom/google/ads/interactivemedia/v3/internal/ij;->addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    iget-object v0, v9, Lcom/google/ads/interactivemedia/v3/internal/ij;->c:Lcom/google/ads/interactivemedia/v3/internal/jo;

    invoke-virtual {v11, v0, v10}, Lcom/google/ads/interactivemedia/v3/internal/jd;->a(Lcom/google/ads/interactivemedia/v3/internal/jo;Ljava/lang/String;)V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-direct {v1, v2, v3, v0}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private b(Ljava/util/Map;)V
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

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/le;->a(Ljava/util/Collection;)Lcom/google/ads/interactivemedia/v3/internal/le;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ij;->g:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ij;->g:Ljava/util/List;

    :goto_0
    return-void
.end method

.method private getCurrentCompanions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ij;->g:Ljava/util/List;

    return-object v0
.end method

.method private onCompanionRendered(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ij;->a:Lcom/google/ads/interactivemedia/v3/internal/jd;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ij;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/jd;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ij;->g:Ljava/util/List;

    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/internal/ir;->a()V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ir;->a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ir;->a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/jd$c;)V
    .locals 3

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/jd$c;->a:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/ij$1;->b:[I

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ij;->a()V

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ij;->f:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->destroy:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ij;->a(Lcom/google/ads/interactivemedia/v3/internal/jc$c;)V

    :cond_1
    :goto_0
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->SKIPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    if-ne v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ij;->b(Ljava/util/Map;)V

    :cond_3
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ir;->a(Lcom/google/ads/interactivemedia/v3/internal/jd$c;)V

    return-void
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

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ij;->b(Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ir;->addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    return-void
.end method

.method public bridge synthetic addAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ir;->addAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V

    return-void
.end method

.method public clicked()V
    .locals 5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ij;->a:Lcom/google/ads/interactivemedia/v3/internal/jd;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/jc;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->adsManager:Lcom/google/ads/interactivemedia/v3/internal/jc$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->click:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ij;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/jc;-><init>(Lcom/google/ads/interactivemedia/v3/internal/jc$b;Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/jd;->b(Lcom/google/ads/interactivemedia/v3/internal/jc;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ij;->e:Lcom/google/ads/interactivemedia/v3/internal/iv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ij;->e:Lcom/google/ads/interactivemedia/v3/internal/iv;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/iv;->c()V

    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->destroy:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ij;->a(Lcom/google/ads/interactivemedia/v3/internal/jc$c;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ij;->f:Z

    return-void
.end method

.method public discardAdBreak()V
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->discardAdBreak:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ij;->a(Lcom/google/ads/interactivemedia/v3/internal/jc$c;)V

    return-void
.end method

.method public focusSkipButton()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ij;->getCurrentAd()Lcom/google/ads/interactivemedia/v3/api/Ad;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ij;->getCurrentAd()Lcom/google/ads/interactivemedia/v3/api/Ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/Ad;->isSkippable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ij;->a:Lcom/google/ads/interactivemedia/v3/internal/jd;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ij;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/jd;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAdCuePoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ij;->h:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .locals 1

    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/internal/ir;->getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCurrentAd()Lcom/google/ads/interactivemedia/v3/api/Ad;
    .locals 1

    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/internal/ir;->getCurrentAd()Lcom/google/ads/interactivemedia/v3/api/Ad;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic init()V
    .locals 0

    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/internal/ir;->init()V

    return-void
.end method

.method public bridge synthetic init(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ir;->init(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V

    return-void
.end method

.method public isCustomPlaybackUsed()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ij;->c:Lcom/google/ads/interactivemedia/v3/internal/jo;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/jo;->e()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->pause:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ij;->a(Lcom/google/ads/interactivemedia/v3/internal/jc$c;)V

    return-void
.end method

.method public bridge synthetic removeAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ir;->removeAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    return-void
.end method

.method public bridge synthetic removeAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ir;->removeAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V

    return-void
.end method

.method public requestNextAdBreak()V
    .locals 6

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ij;->e:Lcom/google/ads/interactivemedia/v3/internal/iv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ij;->a:Lcom/google/ads/interactivemedia/v3/internal/jd;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/jc;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->contentTimeUpdate:Lcom/google/ads/interactivemedia/v3/internal/jc$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->contentTimeUpdate:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ij;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/ij;->e:Lcom/google/ads/interactivemedia/v3/internal/iv;

    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/iv;->a()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/jc;-><init>(Lcom/google/ads/interactivemedia/v3/internal/jc$b;Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/jd;->b(Lcom/google/ads/interactivemedia/v3/internal/jc;)V

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->requestNextAdBreak:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ij;->a(Lcom/google/ads/interactivemedia/v3/internal/jc$c;)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->resume:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ij;->a(Lcom/google/ads/interactivemedia/v3/internal/jc$c;)V

    return-void
.end method

.method public skip()V
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->skip:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ij;->a(Lcom/google/ads/interactivemedia/v3/internal/jc$c;)V

    return-void
.end method

.method public start()V
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->start:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ij;->a(Lcom/google/ads/interactivemedia/v3/internal/jc$c;)V

    return-void
.end method
