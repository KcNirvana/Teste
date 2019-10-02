.class public Lcom/facebook/ads/internal/adapters/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/adapters/AdAdapter;


# static fields
.field private static final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/internal/view/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Landroid/content/Context;

.field private f:Lcom/facebook/ads/internal/adapters/o;

.field private g:Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

.field private h:Lcom/facebook/ads/internal/adapters/c/a$b;

.field private i:Z

.field private j:Lcom/facebook/ads/internal/adapters/l;

.field private k:Lcom/facebook/ads/internal/view/c/f;

.field private l:Lcom/facebook/ads/internal/adapters/b/k;

.field private m:Lcom/facebook/ads/internal/settings/a$a;

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/adapters/g;->a:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/g;->b:Ljava/lang/String;

    sget-object v0, Lcom/facebook/ads/internal/view/c/f;->a:Lcom/facebook/ads/internal/view/c/f;

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/g;->k:Lcom/facebook/ads/internal/view/c/f;

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/b/d;)I
    .locals 0

    invoke-static {p0}, Lcom/facebook/ads/internal/r/a;->S(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/facebook/ads/internal/w/b/x;->a:Landroid/util/DisplayMetrics;

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/d;->h()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/d;->h()I

    move-result p0

    :goto_0
    return p0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/g;)Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/adapters/g;->g:Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/ads/internal/view/a;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/adapters/g;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/internal/view/a;

    return-object p0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/g;Lcom/facebook/ads/internal/view/c/f;)Lcom/facebook/ads/internal/view/c/f;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/g;->k:Lcom/facebook/ads/internal/view/c/f;

    return-object p1
.end method

.method public static a(Lcom/facebook/ads/internal/view/a;)V
    .locals 3

    sget-object v0, Lcom/facebook/ads/internal/adapters/g;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    sget-object v2, Lcom/facebook/ads/internal/adapters/g;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Lcom/facebook/ads/internal/view/a;)V
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/adapters/g;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/g;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/adapters/g;->i:Z

    return p1
.end method

.method private static b(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/b/d;)I
    .locals 0

    invoke-static {p0}, Lcom/facebook/ads/internal/r/a;->S(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/facebook/ads/internal/w/b/x;->a:Landroid/util/DisplayMetrics;

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/d;->i()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/d;->i()I

    move-result p0

    :goto_0
    return p0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/adapters/g;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/adapters/g;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/adapters/g;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/adapters/g;->n:Z

    return p1
.end method

.method static synthetic c(Lcom/facebook/ads/internal/adapters/g;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/adapters/g;->e:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;Ljava/util/Map;Lcom/facebook/ads/internal/s/c;Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/facebook/ads/internal/s/c;",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/g;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/g;->g:Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    const-string p1, "placementId"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/g;->c:Ljava/lang/String;

    const-string p1, "requestTime"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/internal/adapters/g;->d:J

    iput-object p6, p0, Lcom/facebook/ads/internal/adapters/g;->o:Ljava/lang/String;

    const-string p1, "data"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const-string p6, "ct"

    invoke-virtual {p1, p6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    iput-object p6, p0, Lcom/facebook/ads/internal/adapters/g;->p:Ljava/lang/String;

    const-string p6, "definition"

    invoke-interface {p3, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/facebook/ads/internal/m/d;

    const-string v0, "markup"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x7d6

    if-eqz v0, :cond_2

    sget-object p3, Lcom/facebook/ads/internal/settings/a$a;->a:Lcom/facebook/ads/internal/settings/a$a;

    iput-object p3, p0, Lcom/facebook/ads/internal/adapters/g;->m:Lcom/facebook/ads/internal/settings/a$a;

    invoke-static {p1}, Lcom/facebook/ads/internal/adapters/l;->a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/adapters/l;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/g;->j:Lcom/facebook/ads/internal/adapters/l;

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/g;->e:Landroid/content/Context;

    iget-object p3, p0, Lcom/facebook/ads/internal/adapters/g;->j:Lcom/facebook/ads/internal/adapters/l;

    invoke-static {p1, p3, p4}, Lcom/facebook/ads/internal/a/e;->a(Landroid/content/Context;Lcom/facebook/ads/internal/a/e$a;Lcom/facebook/ads/internal/s/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v1}, Lcom/facebook/ads/AdError;->internalError(I)Lcom/facebook/ads/AdError;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;->onInterstitialError(Lcom/facebook/ads/internal/adapters/g;Lcom/facebook/ads/AdError;)V

    return-void

    :cond_0
    new-instance p1, Lcom/facebook/ads/internal/adapters/o;

    iget-object p2, p0, Lcom/facebook/ads/internal/adapters/g;->e:Landroid/content/Context;

    iget-object p3, p0, Lcom/facebook/ads/internal/adapters/g;->b:Ljava/lang/String;

    iget-object p4, p0, Lcom/facebook/ads/internal/adapters/g;->g:Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    invoke-direct {p1, p2, p3, p0, p4}, Lcom/facebook/ads/internal/adapters/o;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/internal/adapters/g;Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/g;->f:Lcom/facebook/ads/internal/adapters/o;

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/g;->f:Lcom/facebook/ads/internal/adapters/o;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/o;->a()V

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/g;->j:Lcom/facebook/ads/internal/adapters/l;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/l;->e()Ljava/util/Map;

    move-result-object p1

    const-string p2, "orientation"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "orientation"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/facebook/ads/internal/view/c/f;->a(I)Lcom/facebook/ads/internal/view/c/f;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/g;->k:Lcom/facebook/ads/internal/view/c/f;

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/facebook/ads/internal/adapters/g;->i:Z

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/g;->g:Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/g;->g:Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    invoke-interface {p1, p0}, Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;->onInterstitialAdLoaded(Lcom/facebook/ads/internal/adapters/g;)V

    goto/16 :goto_3

    :cond_2
    const-string p2, "video"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p1, Lcom/facebook/ads/internal/settings/a$a;->b:Lcom/facebook/ads/internal/settings/a$a;

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/g;->m:Lcom/facebook/ads/internal/settings/a$a;

    new-instance p1, Lcom/facebook/ads/internal/adapters/o;

    iget-object p2, p0, Lcom/facebook/ads/internal/adapters/g;->e:Landroid/content/Context;

    iget-object p6, p0, Lcom/facebook/ads/internal/adapters/g;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/g;->g:Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    invoke-direct {p1, p2, p6, p0, v0}, Lcom/facebook/ads/internal/adapters/o;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/internal/adapters/g;Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/g;->f:Lcom/facebook/ads/internal/adapters/o;

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/g;->f:Lcom/facebook/ads/internal/adapters/o;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/o;->a()V

    new-instance v0, Lcom/facebook/ads/internal/adapters/h;

    invoke-direct {v0}, Lcom/facebook/ads/internal/adapters/h;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/g;->e:Landroid/content/Context;

    new-instance v2, Lcom/facebook/ads/internal/adapters/g$1;

    invoke-direct {v2, p0, v0}, Lcom/facebook/ads/internal/adapters/g$1;-><init>(Lcom/facebook/ads/internal/adapters/g;Lcom/facebook/ads/internal/adapters/h;)V

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/internal/adapters/h;->a(Landroid/content/Context;Lcom/facebook/ads/a/a;Ljava/util/Map;Lcom/facebook/ads/internal/s/c;Ljava/util/EnumSet;)V

    goto/16 :goto_3

    :cond_3
    iget-object p2, p0, Lcom/facebook/ads/internal/adapters/g;->e:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/facebook/ads/internal/adapters/b/k;->a(Lorg/json/JSONObject;Landroid/content/Context;)Lcom/facebook/ads/internal/adapters/b/k;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/g;->l:Lcom/facebook/ads/internal/adapters/b/k;

    iget-object p2, p0, Lcom/facebook/ads/internal/adapters/g;->l:Lcom/facebook/ads/internal/adapters/b/k;

    iget-object p3, p0, Lcom/facebook/ads/internal/adapters/g;->o:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/facebook/ads/internal/adapters/b/k;->a(Ljava/lang/String;)V

    if-eqz p6, :cond_4

    iget-object p2, p0, Lcom/facebook/ads/internal/adapters/g;->l:Lcom/facebook/ads/internal/adapters/b/k;

    invoke-virtual {p6}, Lcom/facebook/ads/internal/m/d;->k()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/facebook/ads/internal/adapters/b/k;->a(I)V

    :cond_4
    iget-object p2, p0, Lcom/facebook/ads/internal/adapters/g;->l:Lcom/facebook/ads/internal/adapters/b/k;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/k;->d()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_5

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/g;->g:Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    invoke-static {v1}, Lcom/facebook/ads/AdError;->internalError(I)Lcom/facebook/ads/AdError;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;->onInterstitialError(Lcom/facebook/ads/internal/adapters/g;Lcom/facebook/ads/AdError;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/g;->e:Landroid/content/Context;

    const-string p2, "api"

    sget p3, Lcom/facebook/ads/internal/w/h/b;->j:I

    new-instance p4, Ljava/lang/Exception;

    const-string p5, "Internal Error 2006 without a valid AdInfo."

    invoke-direct {p4, p5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, p3, p4}, Lcom/facebook/ads/internal/w/h/a;->b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Exception;)V

    return-void

    :cond_5
    new-instance p2, Lcom/facebook/ads/internal/adapters/o;

    iget-object p3, p0, Lcom/facebook/ads/internal/adapters/g;->e:Landroid/content/Context;

    iget-object p4, p0, Lcom/facebook/ads/internal/adapters/g;->b:Ljava/lang/String;

    iget-object p6, p0, Lcom/facebook/ads/internal/adapters/g;->g:Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    invoke-direct {p2, p3, p4, p0, p6}, Lcom/facebook/ads/internal/adapters/o;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/internal/adapters/g;Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/g;->f:Lcom/facebook/ads/internal/adapters/o;

    iget-object p2, p0, Lcom/facebook/ads/internal/adapters/g;->f:Lcom/facebook/ads/internal/adapters/o;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/o;->a()V

    const-string p2, "carousel"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    sget-object p1, Lcom/facebook/ads/internal/settings/a$a;->e:Lcom/facebook/ads/internal/settings/a$a;

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/g;->m:Lcom/facebook/ads/internal/settings/a$a;

    new-instance p1, Lcom/facebook/ads/internal/h/b;

    iget-object p2, p0, Lcom/facebook/ads/internal/adapters/g;->e:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/facebook/ads/internal/h/b;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/facebook/ads/internal/adapters/g;->l:Lcom/facebook/ads/internal/adapters/b/k;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/k;->a()Lcom/facebook/ads/internal/adapters/b/m;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/m;->b()Ljava/lang/String;

    move-result-object p2

    sget p3, Lcom/facebook/ads/internal/view/e/c;->a:I

    sget p4, Lcom/facebook/ads/internal/view/e/c;->a:I

    invoke-virtual {p1, p2, p3, p4}, Lcom/facebook/ads/internal/h/b;->a(Ljava/lang/String;II)V

    iget-object p2, p0, Lcom/facebook/ads/internal/adapters/g;->l:Lcom/facebook/ads/internal/adapters/b/k;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/k;->d()Ljava/util/List;

    move-result-object p2

    sget-object p3, Lcom/facebook/ads/CacheFlag;->VIDEO:Lcom/facebook/ads/CacheFlag;

    invoke-virtual {p5, p3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/facebook/ads/internal/adapters/b/l;

    invoke-virtual {p4}, Lcom/facebook/ads/internal/adapters/b/l;->c()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object p6

    invoke-virtual {p6}, Lcom/facebook/ads/internal/adapters/b/d;->g()Ljava/lang/String;

    move-result-object p6

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/g;->e:Landroid/content/Context;

    invoke-virtual {p4}, Lcom/facebook/ads/internal/adapters/b/l;->c()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/adapters/g;->b(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/b/d;)I

    move-result v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/g;->e:Landroid/content/Context;

    invoke-virtual {p4}, Lcom/facebook/ads/internal/adapters/b/l;->c()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/ads/internal/adapters/g;->a(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/b/d;)I

    move-result v1

    invoke-virtual {p1, p6, v0, v1}, Lcom/facebook/ads/internal/h/b;->a(Ljava/lang/String;II)V

    if-eqz p3, :cond_6

    invoke-virtual {p4}, Lcom/facebook/ads/internal/adapters/b/l;->c()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object p6

    invoke-virtual {p6}, Lcom/facebook/ads/internal/adapters/b/d;->a()Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-nez p6, :cond_6

    invoke-virtual {p4}, Lcom/facebook/ads/internal/adapters/b/l;->c()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object p4

    invoke-virtual {p4}, Lcom/facebook/ads/internal/adapters/b/d;->g()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/facebook/ads/internal/h/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    new-instance p2, Lcom/facebook/ads/internal/adapters/g$2;

    invoke-direct {p2, p0, p5}, Lcom/facebook/ads/internal/adapters/g$2;-><init>(Lcom/facebook/ads/internal/adapters/g;Ljava/util/EnumSet;)V

    :goto_1
    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/h/b;->a(Lcom/facebook/ads/internal/h/a;)V

    goto/16 :goto_3

    :cond_8
    const-string p2, "playable_data"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    sget-object p1, Lcom/facebook/ads/internal/settings/a$a;->f:Lcom/facebook/ads/internal/settings/a$a;

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/g;->m:Lcom/facebook/ads/internal/settings/a$a;

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/g;->l:Lcom/facebook/ads/internal/adapters/b/k;

    invoke-static {p1}, Lcom/facebook/ads/internal/adapters/b/o;->a(Lcom/facebook/ads/internal/adapters/b/k;)Lcom/facebook/ads/internal/adapters/b/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/o;->f()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/d;->j()Lcom/facebook/ads/internal/adapters/b/n;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/n;->f()Lcom/facebook/ads/internal/view/c/f;

    move-result-object p2

    goto :goto_2

    :cond_9
    sget-object p2, Lcom/facebook/ads/internal/view/c/f;->a:Lcom/facebook/ads/internal/view/c/f;

    :goto_2
    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/g;->k:Lcom/facebook/ads/internal/view/c/f;

    new-instance p2, Lcom/facebook/ads/internal/adapters/g$3;

    invoke-direct {p2, p0, p5}, Lcom/facebook/ads/internal/adapters/g$3;-><init>(Lcom/facebook/ads/internal/adapters/g;Ljava/util/EnumSet;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/g;->h:Lcom/facebook/ads/internal/adapters/c/a$b;

    iget-object p2, p0, Lcom/facebook/ads/internal/adapters/g;->e:Landroid/content/Context;

    iget-object p3, p0, Lcom/facebook/ads/internal/adapters/g;->e:Landroid/content/Context;

    invoke-static {p3}, Lcom/facebook/ads/internal/r/a;->T(Landroid/content/Context;)Z

    move-result p3

    iget-object p4, p0, Lcom/facebook/ads/internal/adapters/g;->h:Lcom/facebook/ads/internal/adapters/c/a$b;

    invoke-static {p2, p1, p3, p4}, Lcom/facebook/ads/internal/adapters/c/a;->a(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/b/o;ZLcom/facebook/ads/internal/adapters/c/a$b;)V

    goto/16 :goto_3

    :cond_a
    const-string p2, "video_url"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_c

    sget-object p1, Lcom/facebook/ads/internal/settings/a$a;->c:Lcom/facebook/ads/internal/settings/a$a;

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/g;->m:Lcom/facebook/ads/internal/settings/a$a;

    new-instance p1, Lcom/facebook/ads/internal/h/b;

    iget-object p3, p0, Lcom/facebook/ads/internal/adapters/g;->e:Landroid/content/Context;

    invoke-direct {p1, p3}, Lcom/facebook/ads/internal/h/b;-><init>(Landroid/content/Context;)V

    iget-object p3, p0, Lcom/facebook/ads/internal/adapters/g;->l:Lcom/facebook/ads/internal/adapters/b/k;

    invoke-virtual {p3}, Lcom/facebook/ads/internal/adapters/b/k;->d()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/ads/internal/adapters/b/l;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/l;->c()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/d;->g()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/facebook/ads/internal/adapters/g;->e:Landroid/content/Context;

    invoke-static {p4, p2}, Lcom/facebook/ads/internal/adapters/g;->b(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/b/d;)I

    move-result p4

    iget-object p6, p0, Lcom/facebook/ads/internal/adapters/g;->e:Landroid/content/Context;

    invoke-static {p6, p2}, Lcom/facebook/ads/internal/adapters/g;->a(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/b/d;)I

    move-result p6

    invoke-virtual {p1, p3, p4, p6}, Lcom/facebook/ads/internal/h/b;->a(Ljava/lang/String;II)V

    iget-object p3, p0, Lcom/facebook/ads/internal/adapters/g;->l:Lcom/facebook/ads/internal/adapters/b/k;

    invoke-virtual {p3}, Lcom/facebook/ads/internal/adapters/b/k;->a()Lcom/facebook/ads/internal/adapters/b/m;

    move-result-object p3

    invoke-virtual {p3}, Lcom/facebook/ads/internal/adapters/b/m;->b()Ljava/lang/String;

    move-result-object p3

    sget p4, Lcom/facebook/ads/internal/view/e/c;->a:I

    sget p6, Lcom/facebook/ads/internal/view/e/c;->a:I

    invoke-virtual {p1, p3, p4, p6}, Lcom/facebook/ads/internal/h/b;->a(Ljava/lang/String;II)V

    sget-object p3, Lcom/facebook/ads/CacheFlag;->VIDEO:Lcom/facebook/ads/CacheFlag;

    invoke-virtual {p5, p3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/d;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/h/b;->a(Ljava/lang/String;)V

    :cond_b
    new-instance p2, Lcom/facebook/ads/internal/adapters/g$4;

    invoke-direct {p2, p0, p5}, Lcom/facebook/ads/internal/adapters/g$4;-><init>(Lcom/facebook/ads/internal/adapters/g;Ljava/util/EnumSet;)V

    goto/16 :goto_1

    :cond_c
    sget-object p1, Lcom/facebook/ads/internal/settings/a$a;->d:Lcom/facebook/ads/internal/settings/a$a;

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/g;->m:Lcom/facebook/ads/internal/settings/a$a;

    new-instance p1, Lcom/facebook/ads/internal/h/b;

    iget-object p3, p0, Lcom/facebook/ads/internal/adapters/g;->e:Landroid/content/Context;

    invoke-direct {p1, p3}, Lcom/facebook/ads/internal/h/b;-><init>(Landroid/content/Context;)V

    iget-object p3, p0, Lcom/facebook/ads/internal/adapters/g;->l:Lcom/facebook/ads/internal/adapters/b/k;

    invoke-virtual {p3}, Lcom/facebook/ads/internal/adapters/b/k;->d()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/ads/internal/adapters/b/l;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/l;->c()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/d;->g()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/facebook/ads/internal/adapters/g;->e:Landroid/content/Context;

    invoke-static {p4, p2}, Lcom/facebook/ads/internal/adapters/g;->b(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/b/d;)I

    move-result p4

    iget-object p5, p0, Lcom/facebook/ads/internal/adapters/g;->e:Landroid/content/Context;

    invoke-static {p5, p2}, Lcom/facebook/ads/internal/adapters/g;->a(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/b/d;)I

    move-result p2

    invoke-virtual {p1, p3, p4, p2}, Lcom/facebook/ads/internal/h/b;->a(Ljava/lang/String;II)V

    iget-object p2, p0, Lcom/facebook/ads/internal/adapters/g;->l:Lcom/facebook/ads/internal/adapters/b/k;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/k;->a()Lcom/facebook/ads/internal/adapters/b/m;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/m;->b()Ljava/lang/String;

    move-result-object p2

    sget p3, Lcom/facebook/ads/internal/view/e/c;->a:I

    sget p4, Lcom/facebook/ads/internal/view/e/c;->a:I

    invoke-virtual {p1, p2, p3, p4}, Lcom/facebook/ads/internal/h/b;->a(Ljava/lang/String;II)V

    new-instance p2, Lcom/facebook/ads/internal/adapters/g$5;

    invoke-direct {p2, p0}, Lcom/facebook/ads/internal/adapters/g$5;-><init>(Lcom/facebook/ads/internal/adapters/g;)V

    goto/16 :goto_1

    :cond_d
    :goto_3
    return-void
.end method

.method public a()Z
    .locals 7

    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/g;->i:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/g;->g:Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/g;->g:Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    sget-object v2, Lcom/facebook/ads/AdError;->SHOW_CALLED_BEFORE_LOAD_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v0, p0, v2}, Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;->onInterstitialError(Lcom/facebook/ads/internal/adapters/g;Lcom/facebook/ads/AdError;)V

    :cond_0
    return v1

    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/g;->e:Landroid/content/Context;

    invoke-static {}, Lcom/facebook/ads/AudienceNetworkActivity;->getAdActivity()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "predefinedOrientationKey"

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/g;->e:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    iget-object v4, p0, Lcom/facebook/ads/internal/adapters/g;->k:Lcom/facebook/ads/internal/view/c/f;

    sget-object v5, Lcom/facebook/ads/internal/view/c/f;->a:Lcom/facebook/ads/internal/view/c/f;

    const/4 v6, 0x1

    if-ne v4, v5, :cond_2

    const/4 v1, -0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/facebook/ads/internal/adapters/g;->k:Lcom/facebook/ads/internal/view/c/f;

    sget-object v5, Lcom/facebook/ads/internal/view/c/f;->c:Lcom/facebook/ads/internal/view/c/f;

    if-ne v4, v5, :cond_3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v1, 0x8

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    if-eq v3, v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/16 v1, 0x9

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "uniqueId"

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "placementId"

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "requestTime"

    iget-wide v2, p0, Lcom/facebook/ads/internal/adapters/g;->d:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "viewType"

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/g;->m:Lcom/facebook/ads/internal/settings/a$a;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "useCache"

    iget-boolean v2, p0, Lcom/facebook/ads/internal/adapters/g;->n:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/g;->l:Lcom/facebook/ads/internal/adapters/b/k;

    if-eqz v1, :cond_5

    const-string v1, "ad_data_bundle"

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/g;->l:Lcom/facebook/ads/internal/adapters/b/k;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/g;->j:Lcom/facebook/ads/internal/adapters/l;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/g;->j:Lcom/facebook/ads/internal/adapters/l;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/adapters/l;->a(Landroid/content/Intent;)V

    :cond_6
    :goto_1
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/g;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/g;->e:Landroid/content/Context;

    const-class v2, Lcom/facebook/ads/InterstitialAdActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/g;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_2
    return v6

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getClientToken()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/g;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlacementType()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/g;->f:Lcom/facebook/ads/internal/adapters/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/g;->f:Lcom/facebook/ads/internal/adapters/o;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/o;->b()V

    :cond_0
    return-void
.end method
