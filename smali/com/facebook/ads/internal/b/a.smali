.class public Lcom/facebook/ads/internal/b/a;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/facebook/ads/internal/protocol/e;

.field final c:Lcom/facebook/ads/internal/protocol/d;

.field final d:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/lang/String;

.field f:Z

.field g:I

.field h:Lcom/facebook/ads/internal/t/d;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final i:Lcom/facebook/ads/internal/protocol/AdPlacementType;

.field private final j:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/internal/protocol/e;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/internal/protocol/d;I)V
    .locals 8

    sget-object v0, Lcom/facebook/ads/CacheFlag;->NONE:Lcom/facebook/ads/CacheFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/internal/b/a;-><init>(Ljava/lang/String;Lcom/facebook/ads/internal/protocol/e;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/internal/protocol/d;ILjava/util/EnumSet;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/internal/protocol/e;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/internal/protocol/d;ILjava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/internal/protocol/e;",
            "Lcom/facebook/ads/internal/protocol/AdPlacementType;",
            "Lcom/facebook/ads/internal/protocol/d;",
            "I",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/b/a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/internal/b/a;->i:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    iput-object p4, p0, Lcom/facebook/ads/internal/b/a;->c:Lcom/facebook/ads/internal/protocol/d;

    iput p5, p0, Lcom/facebook/ads/internal/b/a;->j:I

    iput-object p6, p0, Lcom/facebook/ads/internal/b/a;->d:Ljava/util/EnumSet;

    iput-object p2, p0, Lcom/facebook/ads/internal/b/a;->b:Lcom/facebook/ads/internal/protocol/e;

    const/4 p1, -0x1

    iput p1, p0, Lcom/facebook/ads/internal/b/a;->g:I

    return-void
.end method


# virtual methods
.method a()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/b/a;->i:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/b/a;->i:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/b/a;->c:Lcom/facebook/ads/internal/protocol/d;

    if-nez v0, :cond_1

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/b/a;->c:Lcom/facebook/ads/internal/protocol/d;

    sget-object v1, Lcom/facebook/ads/internal/protocol/d;->b:Lcom/facebook/ads/internal/protocol/d;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0

    :cond_2
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method

.method a(Landroid/content/Context;Lcom/facebook/ads/internal/protocol/g;)Lcom/facebook/ads/internal/u/b;
    .locals 15

    move-object v0, p0

    new-instance v14, Lcom/facebook/ads/internal/u/b;

    new-instance v3, Lcom/facebook/ads/internal/n/d;

    const/4 v1, 0x0

    move-object/from16 v2, p1

    invoke-direct {v3, v2, v1}, Lcom/facebook/ads/internal/n/d;-><init>(Landroid/content/Context;Z)V

    iget-object v4, v0, Lcom/facebook/ads/internal/b/a;->a:Ljava/lang/String;

    iget-object v1, v0, Lcom/facebook/ads/internal/b/a;->c:Lcom/facebook/ads/internal/protocol/d;

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lcom/facebook/ads/internal/w/b/m;

    iget-object v6, v0, Lcom/facebook/ads/internal/b/a;->c:Lcom/facebook/ads/internal/protocol/d;

    invoke-virtual {v6}, Lcom/facebook/ads/internal/protocol/d;->b()I

    move-result v6

    iget-object v7, v0, Lcom/facebook/ads/internal/b/a;->c:Lcom/facebook/ads/internal/protocol/d;

    invoke-virtual {v7}, Lcom/facebook/ads/internal/protocol/d;->a()I

    move-result v7

    invoke-direct {v1, v6, v7}, Lcom/facebook/ads/internal/w/b/m;-><init>(II)V

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, v5

    :goto_0
    iget-object v7, v0, Lcom/facebook/ads/internal/b/a;->b:Lcom/facebook/ads/internal/protocol/e;

    invoke-static {}, Lcom/facebook/ads/AdSettings;->getTestAdType()Lcom/facebook/ads/AdSettings$TestAdType;

    move-result-object v1

    sget-object v8, Lcom/facebook/ads/AdSettings$TestAdType;->DEFAULT:Lcom/facebook/ads/AdSettings$TestAdType;

    if-eq v1, v8, :cond_1

    invoke-static {}, Lcom/facebook/ads/AdSettings;->getTestAdType()Lcom/facebook/ads/AdSettings$TestAdType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/AdSettings$TestAdType;->getAdTypeString()Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object v8, v5

    :goto_1
    iget v9, v0, Lcom/facebook/ads/internal/b/a;->j:I

    invoke-static/range {p1 .. p1}, Lcom/facebook/ads/AdSettings;->isTestMode(Landroid/content/Context;)Z

    move-result v10

    invoke-static {}, Lcom/facebook/ads/AdSettings;->isChildDirected()Z

    move-result v11

    invoke-static/range {p1 .. p1}, Lcom/facebook/ads/internal/r/a;->G(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Lcom/facebook/ads/internal/w/b/q;->a(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/facebook/ads/internal/b/a;->e:Ljava/lang/String;

    move-object v1, v14

    move-object/from16 v2, p1

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move-object/from16 v11, p2

    invoke-direct/range {v1 .. v13}, Lcom/facebook/ads/internal/u/b;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/n/d;Ljava/lang/String;Lcom/facebook/ads/internal/w/b/m;Lcom/facebook/ads/internal/protocol/e;Ljava/lang/String;IZZLcom/facebook/ads/internal/protocol/g;Ljava/lang/String;Ljava/lang/String;)V

    return-object v14
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/b/a;->g:I

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/t/d;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/internal/t/d;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/facebook/ads/internal/b/a;->h:Lcom/facebook/ads/internal/t/d;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/b/a;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/b/a;->f:Z

    return-void
.end method
