.class public Lcom/facebook/ads/internal/u/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/facebook/ads/internal/protocol/c;

.field private final c:Lcom/facebook/ads/internal/protocol/AdPlacementType;

.field private final d:Ljava/lang/String;

.field private e:Landroid/content/Context;

.field private f:Lcom/facebook/ads/internal/protocol/e;

.field private g:Z

.field private h:Z

.field private i:I

.field private j:Lcom/facebook/ads/internal/w/b/m;

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/facebook/ads/internal/protocol/g;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/n/d;Ljava/lang/String;Lcom/facebook/ads/internal/w/b/m;Lcom/facebook/ads/internal/protocol/e;Ljava/lang/String;IZZLcom/facebook/ads/internal/protocol/g;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/u/b;->e:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/n/d;->b()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/internal/u/b;->k:Ljava/util/Map;

    iput-object p3, p0, Lcom/facebook/ads/internal/u/b;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/ads/internal/u/b;->j:Lcom/facebook/ads/internal/w/b/m;

    iput-object p5, p0, Lcom/facebook/ads/internal/u/b;->f:Lcom/facebook/ads/internal/protocol/e;

    iput-object p6, p0, Lcom/facebook/ads/internal/u/b;->d:Ljava/lang/String;

    iput p7, p0, Lcom/facebook/ads/internal/u/b;->i:I

    iput-boolean p8, p0, Lcom/facebook/ads/internal/u/b;->g:Z

    iput-boolean p9, p0, Lcom/facebook/ads/internal/u/b;->h:Z

    iput-object p10, p0, Lcom/facebook/ads/internal/u/b;->l:Lcom/facebook/ads/internal/protocol/g;

    invoke-static {p5}, Lcom/facebook/ads/internal/protocol/c;->a(Lcom/facebook/ads/internal/protocol/e;)Lcom/facebook/ads/internal/protocol/c;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/internal/u/b;->b:Lcom/facebook/ads/internal/protocol/c;

    iget-object p1, p0, Lcom/facebook/ads/internal/u/b;->b:Lcom/facebook/ads/internal/protocol/c;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/protocol/c;->a()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/internal/u/b;->c:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    iput-object p11, p0, Lcom/facebook/ads/internal/u/b;->m:Ljava/lang/String;

    iput-object p12, p0, Lcom/facebook/ads/internal/u/b;->n:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/ads/internal/protocol/e;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/u/b;->f:Lcom/facebook/ads/internal/protocol/e;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/u/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/facebook/ads/internal/protocol/c;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/u/b;->b:Lcom/facebook/ads/internal/protocol/c;

    return-object v0
.end method

.method public d()Lcom/facebook/ads/internal/w/b/m;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/u/b;->j:Lcom/facebook/ads/internal/w/b/m;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/u/b;->i:I

    return v0
.end method

.method public f()Lcom/facebook/ads/internal/protocol/g;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/u/b;->l:Lcom/facebook/ads/internal/protocol/g;

    return-object v0
.end method

.method public g()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/facebook/ads/internal/u/b;->k:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v1, "IDFA"

    sget-object v2, Lcom/facebook/ads/internal/g/b;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/ads/internal/u/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "IDFA_FLAG"

    sget-boolean v2, Lcom/facebook/ads/internal/g/b;->c:Z

    if-eqz v2, :cond_0

    const-string v2, "0"

    goto :goto_0

    :cond_0
    const-string v2, "1"

    :goto_0
    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/ads/internal/u/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "COPPA"

    iget-boolean v2, p0, Lcom/facebook/ads/internal/u/b;->h:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/ads/internal/u/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PLACEMENT_ID"

    iget-object v2, p0, Lcom/facebook/ads/internal/u/b;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/ads/internal/u/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/u/b;->c:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    sget-object v2, Lcom/facebook/ads/internal/protocol/AdPlacementType;->UNKNOWN:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    if-eq v1, v2, :cond_1

    const-string v1, "PLACEMENT_TYPE"

    iget-object v2, p0, Lcom/facebook/ads/internal/u/b;->c:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/ads/internal/u/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/internal/u/b;->j:Lcom/facebook/ads/internal/w/b/m;

    if-eqz v1, :cond_2

    const-string v1, "WIDTH"

    iget-object v2, p0, Lcom/facebook/ads/internal/u/b;->j:Lcom/facebook/ads/internal/w/b/m;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/w/b/m;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/ads/internal/u/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "HEIGHT"

    iget-object v2, p0, Lcom/facebook/ads/internal/u/b;->j:Lcom/facebook/ads/internal/w/b/m;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/w/b/m;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/ads/internal/u/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/internal/u/b;->f:Lcom/facebook/ads/internal/protocol/e;

    if-eqz v1, :cond_3

    const-string v1, "TEMPLATE_ID"

    iget-object v2, p0, Lcom/facebook/ads/internal/u/b;->f:Lcom/facebook/ads/internal/protocol/e;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/e;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/ads/internal/u/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-boolean v1, p0, Lcom/facebook/ads/internal/u/b;->g:Z

    if-eqz v1, :cond_4

    const-string v1, "TEST_MODE"

    const-string v2, "1"

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/ads/internal/u/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/internal/u/b;->d:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v1, "DEMO_AD_ID"

    iget-object v2, p0, Lcom/facebook/ads/internal/u/b;->d:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/ads/internal/u/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget v1, p0, Lcom/facebook/ads/internal/u/b;->i:I

    if-eqz v1, :cond_6

    const-string v1, "NUM_ADS_REQUESTED"

    iget v2, p0, Lcom/facebook/ads/internal/u/b;->i:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/ads/internal/u/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v1, "CLIENT_EVENTS"

    invoke-static {}, Lcom/facebook/ads/internal/o/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/ads/internal/u/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "KG_RESTRICTED"

    iget-object v2, p0, Lcom/facebook/ads/internal/u/b;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/facebook/ads/internal/w/b/z;->a(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/ads/internal/u/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "REQUEST_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/facebook/ads/internal/w/b/v;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/ads/internal/u/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/u/b;->l:Lcom/facebook/ads/internal/protocol/g;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/g;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "BID_ID"

    iget-object v2, p0, Lcom/facebook/ads/internal/u/b;->l:Lcom/facebook/ads/internal/protocol/g;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/g;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/ads/internal/u/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lcom/facebook/ads/internal/u/b;->m:Ljava/lang/String;

    if-eqz v1, :cond_8

    const-string v1, "STACK_TRACE"

    iget-object v2, p0, Lcom/facebook/ads/internal/u/b;->m:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/ads/internal/u/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string v1, "CLIENT_REQUEST_ID"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/ads/internal/u/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "AD_REPORTING_CONFIG_LAST_UPDATE_TIME"

    iget-object v2, p0, Lcom/facebook/ads/internal/u/b;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/facebook/ads/internal/f/a;->a(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/facebook/ads/internal/w/b/v;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/ads/internal/u/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/u/b;->n:Ljava/lang/String;

    if-eqz v1, :cond_9

    const-string v1, "EXTRA_HINTS"

    iget-object v2, p0, Lcom/facebook/ads/internal/u/b;->n:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/ads/internal/u/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-object v0
.end method
