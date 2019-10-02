.class public Lcom/facebook/ads/internal/adapters/k;
.super Lcom/facebook/ads/internal/adapters/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/adapters/k$a;,
        Lcom/facebook/ads/internal/adapters/k$b;
    }
.end annotation


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Landroid/content/Context;

.field private f:Lcom/facebook/ads/internal/adapters/t;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:J

.field private j:Lcom/facebook/ads/internal/adapters/b/a;

.field private k:Lcom/facebook/ads/internal/adapters/u;

.field private l:Lcom/facebook/ads/internal/settings/a$a;

.field private m:Ljava/lang/String;

.field private n:Lcom/facebook/ads/internal/adapters/k$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/s;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/k;)Lcom/facebook/ads/internal/adapters/b/a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/adapters/k;->j:Lcom/facebook/ads/internal/adapters/b/a;

    return-object p0
.end method

.method private a(Landroid/content/Context;ZLcom/facebook/ads/internal/adapters/b/q;)V
    .locals 3

    new-instance v0, Lcom/facebook/ads/internal/adapters/k$a;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/k;->f:Lcom/facebook/ads/internal/adapters/t;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/k;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/ads/internal/adapters/k$a;-><init>(Lcom/facebook/ads/internal/adapters/k;Lcom/facebook/ads/internal/adapters/t;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->n:Lcom/facebook/ads/internal/adapters/k$a;

    invoke-static {p3}, Lcom/facebook/ads/internal/adapters/b/o;->a(Lcom/facebook/ads/internal/adapters/b/q;)Lcom/facebook/ads/internal/adapters/b/o;

    move-result-object p3

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->n:Lcom/facebook/ads/internal/adapters/k$a;

    invoke-static {p1, p3, p2, v0}, Lcom/facebook/ads/internal/adapters/c/a;->a(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/b/o;ZLcom/facebook/ads/internal/adapters/c/a$b;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/k;Landroid/content/Context;ZLcom/facebook/ads/internal/adapters/b/q;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/internal/adapters/k;->a(Landroid/content/Context;ZLcom/facebook/ads/internal/adapters/b/q;)V

    return-void
.end method

.method private a(Lcom/facebook/ads/internal/h/b;Lcom/facebook/ads/internal/adapters/b/q;)V
    .locals 4

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/q;->f()Lcom/facebook/ads/internal/adapters/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/m;->b()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/facebook/ads/internal/view/e/c;->a:I

    sget v2, Lcom/facebook/ads/internal/view/e/c;->a:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/facebook/ads/internal/h/b;->a(Ljava/lang/String;II)V

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/q;->j()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/h/b;->a(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/q;->j()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/d;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/k;->e:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/q;->j()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object v2

    invoke-static {v1}, Lcom/facebook/ads/internal/r/a;->S(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/facebook/ads/internal/w/b/x;->a:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/b/d;->i()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/b/d;->i()I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/k;->e:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/q;->j()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object v3

    invoke-static {v2}, Lcom/facebook/ads/internal/r/a;->S(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/facebook/ads/internal/w/b/x;->a:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3}, Lcom/facebook/ads/internal/adapters/b/d;->h()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/facebook/ads/internal/adapters/b/d;->h()I

    move-result v2

    :goto_1
    invoke-virtual {p1, v0, v1, v2}, Lcom/facebook/ads/internal/h/b;->a(Ljava/lang/String;II)V

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/q;->k()Lcom/facebook/ads/internal/adapters/b/j;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/j;->d()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1, v1}, Lcom/facebook/ads/internal/h/b;->a(Ljava/lang/String;II)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/b/q;Z)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/facebook/ads/internal/adapters/k;->b(Lcom/facebook/ads/internal/adapters/b/q;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/adapters/k;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/adapters/k;->e:Landroid/content/Context;

    return-object p0
.end method

.method private static b(Lcom/facebook/ads/internal/adapters/b/q;Z)Z
    .locals 0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/b/q;->j()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/b/d;->j()Lcom/facebook/ads/internal/adapters/b/n;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/b/n;->i()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a()I
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->j:Lcom/facebook/ads/internal/adapters/b/a;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->l:Lcom/facebook/ads/internal/settings/a$a;

    sget-object v1, Lcom/facebook/ads/internal/settings/a$a;->j:Lcom/facebook/ads/internal/settings/a$a;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/k;->j:Lcom/facebook/ads/internal/adapters/b/a;

    check-cast v1, Lcom/facebook/ads/internal/adapters/b/f;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/b/f;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/b/q;->j()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/b/d;->d()I

    move-result v2

    if-ge v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->j:Lcom/facebook/ads/internal/adapters/b/a;

    check-cast v0, Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/q;->j()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/d;->d()I

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/t;Ljava/util/Map;ZLjava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/internal/adapters/t;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/k;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/k;->f:Lcom/facebook/ads/internal/adapters/t;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "placementId"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->h:Ljava/lang/String;

    const-string v0, "requestTime"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/ads/internal/adapters/k;->i:J

    const-string v0, "definition"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/m/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/m/d;->k()I

    move-result v0

    iput-object p5, p0, Lcom/facebook/ads/internal/adapters/k;->m:Ljava/lang/String;

    iget-object p5, p0, Lcom/facebook/ads/internal/adapters/k;->h:Ljava/lang/String;

    if-eqz p5, :cond_0

    iget-object p5, p0, Lcom/facebook/ads/internal/adapters/k;->h:Ljava/lang/String;

    const-string v2, "_"

    invoke-virtual {p5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p5

    aget-object p5, p5, v1

    goto :goto_0

    :cond_0
    const-string p5, ""

    :goto_0
    iput-object p5, p0, Lcom/facebook/ads/internal/adapters/k;->g:Ljava/lang/String;

    const-string p5, "choose_your_own_ad_rewarded_video"

    const-string v1, "data_model_type"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    const-string v1, "data"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/json/JSONObject;

    invoke-static {p5, p3}, Lcom/facebook/ads/internal/adapters/b/a;->a(ZLorg/json/JSONObject;)Lcom/facebook/ads/internal/adapters/b/a;

    move-result-object p3

    iput-object p3, p0, Lcom/facebook/ads/internal/adapters/k;->j:Lcom/facebook/ads/internal/adapters/b/a;

    if-eqz p5, :cond_1

    sget-object p3, Lcom/facebook/ads/internal/settings/a$a;->j:Lcom/facebook/ads/internal/settings/a$a;

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/facebook/ads/internal/adapters/k;->j:Lcom/facebook/ads/internal/adapters/b/a;

    check-cast p3, Lcom/facebook/ads/internal/adapters/b/q;

    const/4 p5, 0x1

    invoke-static {p3, p5}, Lcom/facebook/ads/internal/adapters/k;->b(Lcom/facebook/ads/internal/adapters/b/q;Z)Z

    move-result p3

    if-eqz p3, :cond_2

    sget-object p3, Lcom/facebook/ads/internal/settings/a$a;->i:Lcom/facebook/ads/internal/settings/a$a;

    goto :goto_1

    :cond_2
    sget-object p3, Lcom/facebook/ads/internal/settings/a$a;->h:Lcom/facebook/ads/internal/settings/a$a;

    :goto_1
    iput-object p3, p0, Lcom/facebook/ads/internal/adapters/k;->l:Lcom/facebook/ads/internal/settings/a$a;

    iget-object p3, p0, Lcom/facebook/ads/internal/adapters/k;->j:Lcom/facebook/ads/internal/adapters/b/a;

    iget-object p5, p0, Lcom/facebook/ads/internal/adapters/k;->m:Ljava/lang/String;

    invoke-virtual {p3, p5}, Lcom/facebook/ads/internal/adapters/b/a;->b(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/facebook/ads/internal/adapters/k;->j:Lcom/facebook/ads/internal/adapters/b/a;

    invoke-virtual {p3, v0}, Lcom/facebook/ads/internal/adapters/b/a;->a(I)V

    iget-object p3, p0, Lcom/facebook/ads/internal/adapters/k;->l:Lcom/facebook/ads/internal/settings/a$a;

    sget-object p5, Lcom/facebook/ads/internal/settings/a$a;->h:Lcom/facebook/ads/internal/settings/a$a;

    if-ne p3, p5, :cond_3

    iget-object p3, p0, Lcom/facebook/ads/internal/adapters/k;->j:Lcom/facebook/ads/internal/adapters/b/a;

    check-cast p3, Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {p3}, Lcom/facebook/ads/internal/adapters/b/q;->j()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object p3

    invoke-virtual {p3}, Lcom/facebook/ads/internal/adapters/b/d;->a()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/k;->f:Lcom/facebook/ads/internal/adapters/t;

    const/16 p2, 0x7d3

    invoke-static {p2}, Lcom/facebook/ads/AdError;->internalError(I)Lcom/facebook/ads/AdError;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lcom/facebook/ads/internal/adapters/t;->a(Lcom/facebook/ads/internal/adapters/s;Lcom/facebook/ads/AdError;)V

    return-void

    :cond_3
    new-instance p3, Lcom/facebook/ads/internal/adapters/u;

    iget-object p5, p0, Lcom/facebook/ads/internal/adapters/k;->c:Ljava/lang/String;

    invoke-direct {p3, p5, p0, p2}, Lcom/facebook/ads/internal/adapters/u;-><init>(Ljava/lang/String;Lcom/facebook/ads/internal/adapters/s;Lcom/facebook/ads/internal/adapters/t;)V

    iput-object p3, p0, Lcom/facebook/ads/internal/adapters/k;->k:Lcom/facebook/ads/internal/adapters/u;

    iget-object p2, p0, Lcom/facebook/ads/internal/adapters/k;->e:Landroid/content/Context;

    invoke-static {p2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p2

    iget-object p3, p0, Lcom/facebook/ads/internal/adapters/k;->k:Lcom/facebook/ads/internal/adapters/u;

    iget-object p5, p0, Lcom/facebook/ads/internal/adapters/k;->k:Lcom/facebook/ads/internal/adapters/u;

    invoke-virtual {p5}, Lcom/facebook/ads/internal/adapters/u;->a()Landroid/content/IntentFilter;

    move-result-object p5

    invoke-virtual {p2, p3, p5}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object p2, p0, Lcom/facebook/ads/internal/adapters/k;->l:Lcom/facebook/ads/internal/settings/a$a;

    sget-object p3, Lcom/facebook/ads/internal/settings/a$a;->h:Lcom/facebook/ads/internal/settings/a$a;

    if-ne p2, p3, :cond_4

    new-instance p2, Lcom/facebook/ads/internal/h/b;

    invoke-direct {p2, p1}, Lcom/facebook/ads/internal/h/b;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/k;->j:Lcom/facebook/ads/internal/adapters/b/a;

    move-object v7, p1

    check-cast v7, Lcom/facebook/ads/internal/adapters/b/q;

    invoke-direct {p0, p2, v7}, Lcom/facebook/ads/internal/adapters/k;->a(Lcom/facebook/ads/internal/h/b;Lcom/facebook/ads/internal/adapters/b/q;)V

    new-instance p1, Lcom/facebook/ads/internal/adapters/k$1;

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/k;->f:Lcom/facebook/ads/internal/adapters/t;

    iget-object v5, p0, Lcom/facebook/ads/internal/adapters/k;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p0

    move-object v4, p2

    move v6, p4

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/internal/adapters/k$1;-><init>(Lcom/facebook/ads/internal/adapters/k;Lcom/facebook/ads/internal/adapters/k;Lcom/facebook/ads/internal/adapters/t;Lcom/facebook/ads/internal/h/b;Ljava/util/concurrent/atomic/AtomicBoolean;ZLcom/facebook/ads/internal/adapters/b/q;Z)V

    :goto_2
    invoke-virtual {p2, p1}, Lcom/facebook/ads/internal/h/b;->a(Lcom/facebook/ads/internal/h/a;)V

    goto :goto_4

    :cond_4
    iget-object p2, p0, Lcom/facebook/ads/internal/adapters/k;->l:Lcom/facebook/ads/internal/settings/a$a;

    sget-object p3, Lcom/facebook/ads/internal/settings/a$a;->i:Lcom/facebook/ads/internal/settings/a$a;

    if-ne p2, p3, :cond_5

    iget-object p2, p0, Lcom/facebook/ads/internal/adapters/k;->j:Lcom/facebook/ads/internal/adapters/b/a;

    check-cast p2, Lcom/facebook/ads/internal/adapters/b/q;

    invoke-direct {p0, p1, p4, p2}, Lcom/facebook/ads/internal/adapters/k;->a(Landroid/content/Context;ZLcom/facebook/ads/internal/adapters/b/q;)V

    goto :goto_4

    :cond_5
    new-instance p2, Lcom/facebook/ads/internal/h/b;

    invoke-direct {p2, p1}, Lcom/facebook/ads/internal/h/b;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/k;->j:Lcom/facebook/ads/internal/adapters/b/a;

    move-object v7, p1

    check-cast v7, Lcom/facebook/ads/internal/adapters/b/f;

    invoke-virtual {v7}, Lcom/facebook/ads/internal/adapters/b/f;->j()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/facebook/ads/internal/adapters/b/q;

    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/internal/adapters/k;->a(Lcom/facebook/ads/internal/h/b;Lcom/facebook/ads/internal/adapters/b/q;)V

    goto :goto_3

    :cond_6
    new-instance p1, Lcom/facebook/ads/internal/adapters/k$2;

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/k;->f:Lcom/facebook/ads/internal/adapters/t;

    iget-object v5, p0, Lcom/facebook/ads/internal/adapters/k;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p0

    move-object v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/internal/adapters/k$2;-><init>(Lcom/facebook/ads/internal/adapters/k;Lcom/facebook/ads/internal/adapters/k;Lcom/facebook/ads/internal/adapters/t;Lcom/facebook/ads/internal/h/b;Ljava/util/concurrent/atomic/AtomicBoolean;ZLcom/facebook/ads/internal/adapters/b/f;)V

    goto :goto_2

    :goto_4
    return-void
.end method

.method public b()Z
    .locals 6

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->a:Lcom/facebook/ads/RewardData;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/facebook/ads/AdSettings;->getUrlPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "https://www.%s.facebook.com/audience_network/server_side_reward"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "https://www.facebook.com/audience_network/server_side_reward"

    :goto_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "puid"

    iget-object v4, p0, Lcom/facebook/ads/internal/adapters/k;->a:Lcom/facebook/ads/RewardData;

    invoke-virtual {v4}, Lcom/facebook/ads/RewardData;->getUserID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "pc"

    iget-object v4, p0, Lcom/facebook/ads/internal/adapters/k;->a:Lcom/facebook/ads/RewardData;

    invoke-virtual {v4}, Lcom/facebook/ads/RewardData;->getCurrency()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "ptid"

    iget-object v4, p0, Lcom/facebook/ads/internal/adapters/k;->c:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "appid"

    iget-object v4, p0, Lcom/facebook/ads/internal/adapters/k;->g:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/k;->j:Lcom/facebook/ads/internal/adapters/b/a;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/internal/adapters/b/a;->a(Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/facebook/ads/internal/adapters/k;->e:Landroid/content/Context;

    invoke-static {}, Lcom/facebook/ads/AudienceNetworkActivity;->getAdActivity()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "viewType"

    iget-object v5, p0, Lcom/facebook/ads/internal/adapters/k;->l:Lcom/facebook/ads/internal/settings/a$a;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v4, "rewardedVideoAdDataBundle"

    iget-object v5, p0, Lcom/facebook/ads/internal/adapters/k;->j:Lcom/facebook/ads/internal/adapters/b/a;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v4, "uniqueId"

    iget-object v5, p0, Lcom/facebook/ads/internal/adapters/k;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "rewardServerURL"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "placementId"

    iget-object v4, p0, Lcom/facebook/ads/internal/adapters/k;->h:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "requestTime"

    iget-wide v4, p0, Lcom/facebook/ads/internal/adapters/k;->i:J

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget v0, p0, Lcom/facebook/ads/internal/adapters/k;->b:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "accelerometer_rotation"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_4

    const-string v0, "predefinedOrientationKey"

    iget v1, p0, Lcom/facebook/ads/internal/adapters/k;->b:I

    :goto_3
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->y(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "predefinedOrientationKey"

    const/4 v1, 0x6

    goto :goto_3

    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->e:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_6

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->e:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2
.end method

.method public getClientToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->j:Lcom/facebook/ads/internal/adapters/b/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->k:Lcom/facebook/ads/internal/adapters/u;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/k;->k:Lcom/facebook/ads/internal/adapters/u;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
