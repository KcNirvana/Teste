.class public Lcom/facebook/ads/internal/view/i/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/w/b/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/i/c$a;,
        Lcom/facebook/ads/internal/view/i/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/internal/w/b/r<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Z

.field private final c:Landroid/content/Context;

.field private final d:Lcom/facebook/ads/internal/s/c;

.field private final e:Lcom/facebook/ads/internal/view/i/c$a;

.field private final f:Lcom/facebook/ads/internal/d/a;

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final k:Lcom/facebook/ads/internal/view/i/e;

.field private final l:Ljava/util/Map;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/view/i/c$a;Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/internal/s/c;",
            "Lcom/facebook/ads/internal/view/i/c$a;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/d/b;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/internal/view/i/c;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/view/i/c$a;Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/view/i/c$a;Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .param p6    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/internal/s/c;",
            "Lcom/facebook/ads/internal/view/i/c$a;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/d/b;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/internal/view/i/c;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/view/i/c$a;Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/view/i/c$a;Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 14
    .param p6    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/internal/s/c;",
            "Lcom/facebook/ads/internal/view/i/c$a;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/d/b;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v9, p0

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/facebook/ads/internal/view/i/c;->b:Z

    const/4 v0, 0x0

    iput v0, v9, Lcom/facebook/ads/internal/view/i/c;->g:I

    iput v0, v9, Lcom/facebook/ads/internal/view/i/c;->h:I

    const/4 v0, 0x0

    iput-object v0, v9, Lcom/facebook/ads/internal/view/i/c;->i:Ljava/lang/String;

    iput-object v0, v9, Lcom/facebook/ads/internal/view/i/c;->j:Ljava/lang/String;

    move-object v0, p1

    iput-object v0, v9, Lcom/facebook/ads/internal/view/i/c;->c:Landroid/content/Context;

    move-object/from16 v0, p2

    iput-object v0, v9, Lcom/facebook/ads/internal/view/i/c;->d:Lcom/facebook/ads/internal/s/c;

    move-object/from16 v12, p3

    iput-object v12, v9, Lcom/facebook/ads/internal/view/i/c;->e:Lcom/facebook/ads/internal/view/i/c$a;

    move-object/from16 v0, p5

    iput-object v0, v9, Lcom/facebook/ads/internal/view/i/c;->a:Ljava/lang/String;

    move-object/from16 v0, p7

    iput-object v0, v9, Lcom/facebook/ads/internal/view/i/c;->l:Ljava/util/Map;

    new-instance v13, Lcom/facebook/ads/internal/view/i/c$1;

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const/4 v8, 0x1

    move-object v0, v13

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/internal/view/i/c$1;-><init>(Lcom/facebook/ads/internal/view/i/c;DDDZ)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/facebook/ads/internal/view/i/c$2;

    const-wide v2, 0x3e7ad7f29abcaf48L    # 1.0E-7

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    const/4 v8, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/internal/view/i/c$2;-><init>(Lcom/facebook/ads/internal/view/i/c;DDDZ)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v11, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/d/a;

    invoke-interface/range {p3 .. p3}, Lcom/facebook/ads/internal/view/i/c$a;->getView()Landroid/view/View;

    move-result-object v1

    const-string v2, "adQualityManager"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v1, v10, v2}, Lcom/facebook/ads/internal/d/a;-><init>(Landroid/view/View;Ljava/util/List;Landroid/os/Bundle;)V

    iput-object v0, v9, Lcom/facebook/ads/internal/view/i/c;->f:Lcom/facebook/ads/internal/d/a;

    const-string v0, "lastProgressTimeMS"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v9, Lcom/facebook/ads/internal/view/i/c;->g:I

    const-string v0, "lastBoundaryTimeMS"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v9, Lcom/facebook/ads/internal/view/i/c;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/facebook/ads/internal/d/a;

    invoke-interface/range {p3 .. p3}, Lcom/facebook/ads/internal/view/i/c$a;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Lcom/facebook/ads/internal/d/a;-><init>(Landroid/view/View;Ljava/util/List;)V

    iput-object v0, v9, Lcom/facebook/ads/internal/view/i/c;->f:Lcom/facebook/ads/internal/d/a;

    :goto_0
    new-instance v0, Lcom/facebook/ads/internal/view/i/e;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/facebook/ads/internal/view/i/e;-><init>(Landroid/os/Handler;Lcom/facebook/ads/internal/view/i/c;)V

    iput-object v0, v9, Lcom/facebook/ads/internal/view/i/c;->k:Lcom/facebook/ads/internal/view/i/e;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/i/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/i/c;->a:Ljava/lang/String;

    return-object p0
.end method

.method private a(Lcom/facebook/ads/internal/view/i/c$b;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/internal/view/i/c$b;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i/c;->e:Lcom/facebook/ads/internal/view/i/c$a;

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/i/c$a;->getCurrentPositionInMillis()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/internal/view/i/c;->a(Lcom/facebook/ads/internal/view/i/c$b;I)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/facebook/ads/internal/view/i/c$b;I)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/internal/view/i/c$b;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i/c;->e:Lcom/facebook/ads/internal/view/i/c$a;

    invoke-interface {v1}, Lcom/facebook/ads/internal/view/i/c$a;->getVideoStartReason()Lcom/facebook/ads/internal/view/i/a/a;

    move-result-object v1

    sget-object v2, Lcom/facebook/ads/internal/view/i/a/a;->c:Lcom/facebook/ads/internal/view/i/a/a;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/internal/view/i/c;->e:Lcom/facebook/ads/internal/view/i/c$a;

    invoke-interface {v2}, Lcom/facebook/ads/internal/view/i/c$a;->i()Z

    move-result v2

    xor-int/2addr v2, v3

    const-string v3, "autoplay"

    if-eqz v1, :cond_1

    const-string v1, "1"

    goto :goto_1

    :cond_1
    const-string v1, "0"

    :goto_1
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "inline"

    if-eqz v2, :cond_2

    const-string v2, "1"

    goto :goto_2

    :cond_2
    const-string v2, "0"

    :goto_2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "exoplayer"

    iget-object v2, p0, Lcom/facebook/ads/internal/view/i/c;->e:Lcom/facebook/ads/internal/view/i/c$a;

    invoke-interface {v2}, Lcom/facebook/ads/internal/view/i/c$a;->h()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "prep"

    iget-object v2, p0, Lcom/facebook/ads/internal/view/i/c;->e:Lcom/facebook/ads/internal/view/i/c$a;

    invoke-interface {v2}, Lcom/facebook/ads/internal/view/i/c$a;->getInitialBufferTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i/c;->f:Lcom/facebook/ads/internal/d/a;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/d/a;->c()Lcom/facebook/ads/internal/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/d/c;->c()Lcom/facebook/ads/internal/d/c$a;

    move-result-object v2

    const-string v3, "vwa"

    invoke-virtual {v2}, Lcom/facebook/ads/internal/d/c$a;->d()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "vwm"

    invoke-virtual {v2}, Lcom/facebook/ads/internal/d/c$a;->c()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "vwmax"

    invoke-virtual {v2}, Lcom/facebook/ads/internal/d/c$a;->e()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "vtime_ms"

    invoke-virtual {v2}, Lcom/facebook/ads/internal/d/c$a;->g()D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double v4, v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "mcvt_ms"

    invoke-virtual {v2}, Lcom/facebook/ads/internal/d/c$a;->h()D

    move-result-wide v4

    mul-double v4, v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/i/c;->i:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v2, "vw_d"

    iget-object v3, p0, Lcom/facebook/ads/internal/view/i/c;->i:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v2, p0, Lcom/facebook/ads/internal/view/i/c;->j:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string v2, "vw_rsn"

    iget-object v3, p0, Lcom/facebook/ads/internal/view/i/c;->j:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v1}, Lcom/facebook/ads/internal/d/c;->d()Lcom/facebook/ads/internal/d/c$a;

    move-result-object v1

    const-string v2, "vla"

    invoke-virtual {v1}, Lcom/facebook/ads/internal/d/c$a;->d()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "vlm"

    invoke-virtual {v1}, Lcom/facebook/ads/internal/d/c$a;->c()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "vlmax"

    invoke-virtual {v1}, Lcom/facebook/ads/internal/d/c$a;->e()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "atime_ms"

    invoke-virtual {v1}, Lcom/facebook/ads/internal/d/c$a;->g()D

    move-result-wide v3

    mul-double v3, v3, v6

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mcat_ms"

    invoke-virtual {v1}, Lcom/facebook/ads/internal/d/c$a;->h()D

    move-result-wide v3

    mul-double v3, v3, v6

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ptime"

    iget v2, p0, Lcom/facebook/ads/internal/view/i/c;->h:I

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "time"

    int-to-float p2, p2

    div-float/2addr p2, v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i/c;->e:Lcom/facebook/ads/internal/view/i/c$a;

    invoke-interface {v1, p2}, Lcom/facebook/ads/internal/view/i/c$a;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const-string v1, "pt"

    iget v2, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pl"

    iget p2, p2, Landroid/graphics/Rect;->left:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "ph"

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i/c;->e:Lcom/facebook/ads/internal/view/i/c$a;

    invoke-interface {v1}, Lcom/facebook/ads/internal/view/i/c$a;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "pw"

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i/c;->e:Lcom/facebook/ads/internal/view/i/c$a;

    invoke-interface {v1}, Lcom/facebook/ads/internal/view/i/c$a;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/facebook/ads/internal/view/i/c;->c:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const-string p2, "vph"

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "vpw"

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/facebook/ads/internal/view/i/c;->l:Ljava/util/Map;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/facebook/ads/internal/view/i/c;->l:Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_5
    const-string p2, "action"

    iget p1, p1, Lcom/facebook/ads/internal/view/i/c$b;->j:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/i/c;Lcom/facebook/ads/internal/view/i/c$b;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/i/c;->a(Lcom/facebook/ads/internal/view/i/c$b;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/i/c;)Lcom/facebook/ads/internal/s/c;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/i/c;->d:Lcom/facebook/ads/internal/s/c;

    return-object p0
.end method


# virtual methods
.method a(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/facebook/ads/internal/view/i/c;->a(IZZ)V

    return-void
.end method

.method a(II)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/ads/internal/view/i/c;->a(IZZ)V

    iput p2, p0, Lcom/facebook/ads/internal/view/i/c;->h:I

    iput p2, p0, Lcom/facebook/ads/internal/view/i/c;->g:I

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i/c;->f:Lcom/facebook/ads/internal/d/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/d/a;->a()V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i/c;->f:Lcom/facebook/ads/internal/d/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/d/a;->b()V

    return-void
.end method

.method a(IZZ)V
    .locals 5

    int-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_3

    iget v0, p0, Lcom/facebook/ads/internal/view/i/c;->g:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/facebook/ads/internal/view/i/c;->g:I

    if-le p1, v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i/c;->f:Lcom/facebook/ads/internal/d/a;

    iget v1, p0, Lcom/facebook/ads/internal/view/i/c;->g:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/i/c;->d()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/ads/internal/d/a;->a(DD)V

    iput p1, p0, Lcom/facebook/ads/internal/view/i/c;->g:I

    if-nez p3, :cond_1

    iget p3, p0, Lcom/facebook/ads/internal/view/i/c;->h:I

    sub-int p3, p1, p3

    const/16 v0, 0x1388

    if-lt p3, v0, :cond_2

    :cond_1
    iget-object p2, p0, Lcom/facebook/ads/internal/view/i/c;->d:Lcom/facebook/ads/internal/s/c;

    iget-object p3, p0, Lcom/facebook/ads/internal/view/i/c;->a:Ljava/lang/String;

    sget-object v0, Lcom/facebook/ads/internal/view/i/c$b;->c:Lcom/facebook/ads/internal/view/i/c$b;

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/internal/view/i/c;->a(Lcom/facebook/ads/internal/view/i/c$b;I)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/facebook/ads/internal/s/c;->e(Ljava/lang/String;Ljava/util/Map;)V

    iget p1, p0, Lcom/facebook/ads/internal/view/i/c;->g:I

    iput p1, p0, Lcom/facebook/ads/internal/view/i/c;->h:I

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i/c;->f:Lcom/facebook/ads/internal/d/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/d/a;->a()V

    return-void

    :cond_2
    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/facebook/ads/internal/view/i/c;->d:Lcom/facebook/ads/internal/s/c;

    iget-object p3, p0, Lcom/facebook/ads/internal/view/i/c;->a:Ljava/lang/String;

    sget-object v0, Lcom/facebook/ads/internal/view/i/c$b;->c:Lcom/facebook/ads/internal/view/i/c$b;

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/internal/view/i/c;->a(Lcom/facebook/ads/internal/view/i/c$b;I)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/facebook/ads/internal/s/c;->e(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/i/c;->k:Lcom/facebook/ads/internal/view/i/e;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public b(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/facebook/ads/internal/view/i/c;->a(IZZ)V

    iput v0, p0, Lcom/facebook/ads/internal/view/i/c;->h:I

    iput v0, p0, Lcom/facebook/ads/internal/view/i/c;->g:I

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i/c;->f:Lcom/facebook/ads/internal/d/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/d/a;->a()V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i/c;->f:Lcom/facebook/ads/internal/d/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/d/a;->b()V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i/c;->k:Lcom/facebook/ads/internal/view/i/e;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected d()F
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i/c;->c:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    if-lez v0, :cond_0

    int-to-float v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/i/c;->e:Lcom/facebook/ads/internal/view/i/c$a;

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/i/c$a;->getVolume()F

    move-result v0

    mul-float v1, v1, v0

    return v1
.end method

.method e()V
    .locals 4

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/i/c;->d()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/i/c;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i/c;->d:Lcom/facebook/ads/internal/s/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i/c;->a:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/internal/view/i/c$b;->g:Lcom/facebook/ads/internal/view/i/c$b;

    invoke-direct {p0, v2}, Lcom/facebook/ads/internal/view/i/c;->a(Lcom/facebook/ads/internal/view/i/c$b;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/internal/s/c;->e(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/i/c;->b:Z

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/i/c;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i/c;->d:Lcom/facebook/ads/internal/s/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i/c;->a:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/internal/view/i/c$b;->h:Lcom/facebook/ads/internal/view/i/c$b;

    invoke-direct {p0, v2}, Lcom/facebook/ads/internal/view/i/c;->a(Lcom/facebook/ads/internal/view/i/c$b;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/internal/s/c;->e(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method f()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i/c;->d:Lcom/facebook/ads/internal/s/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i/c;->a:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/internal/view/i/c$b;->b:Lcom/facebook/ads/internal/view/i/c$b;

    invoke-direct {p0, v2}, Lcom/facebook/ads/internal/view/i/c;->a(Lcom/facebook/ads/internal/view/i/c$b;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/internal/s/c;->e(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public g()Landroid/os/Bundle;
    .locals 3

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/i/c;->j()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/i/c;->j()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/internal/view/i/c;->a(II)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "lastProgressTimeMS"

    iget v2, p0, Lcom/facebook/ads/internal/view/i/c;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "lastBoundaryTimeMS"

    iget v2, p0, Lcom/facebook/ads/internal/view/i/c;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "adQualityManager"

    iget-object v2, p0, Lcom/facebook/ads/internal/view/i/c;->f:Lcom/facebook/ads/internal/d/a;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/d/a;->g()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method h()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i/c;->d:Lcom/facebook/ads/internal/s/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i/c;->a:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/internal/view/i/c$b;->e:Lcom/facebook/ads/internal/view/i/c$b;

    invoke-direct {p0, v2}, Lcom/facebook/ads/internal/view/i/c;->a(Lcom/facebook/ads/internal/view/i/c$b;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/internal/s/c;->e(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method i()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i/c;->d:Lcom/facebook/ads/internal/s/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i/c;->a:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/internal/view/i/c$b;->f:Lcom/facebook/ads/internal/view/i/c$b;

    invoke-direct {p0, v2}, Lcom/facebook/ads/internal/view/i/c;->a(Lcom/facebook/ads/internal/view/i/c$b;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/internal/s/c;->e(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/view/i/c;->g:I

    return v0
.end method
