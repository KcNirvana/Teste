.class public Lcom/facebook/ads/internal/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/c/c;


# static fields
.field private static final a:Ljava/lang/String; = "d"


# instance fields
.field private b:Lcom/facebook/ads/internal/b/f;

.field private c:Z

.field private d:Z

.field private final e:Lcom/facebook/ads/internal/c/g;

.field private final f:Lcom/facebook/ads/InterstitialAdExtendedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/c/g;Lcom/facebook/ads/internal/c/a/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/c/d;->e:Lcom/facebook/ads/internal/c/g;

    new-instance p1, Lcom/facebook/ads/internal/c/a/b;

    invoke-direct {p1, p3, p2, p0}, Lcom/facebook/ads/internal/c/a/b;-><init>(Ljava/lang/String;Lcom/facebook/ads/internal/c/a/c;Lcom/facebook/ads/internal/c/d;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/c/d;->f:Lcom/facebook/ads/InterstitialAdExtendedListener;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/c/d;Lcom/facebook/ads/internal/b/f;)Lcom/facebook/ads/internal/b/f;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/c/d;->b:Lcom/facebook/ads/internal/b/f;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/c/d;)Lcom/facebook/ads/internal/c/g;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/c/d;->e:Lcom/facebook/ads/internal/c/g;

    return-object p0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/c/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/c/d;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/c/d;)Lcom/facebook/ads/InterstitialAdExtendedListener;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/c/d;->f:Lcom/facebook/ads/InterstitialAdExtendedListener;

    return-object p0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/c/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/c/d;->d:Z

    return p1
.end method

.method static synthetic c(Lcom/facebook/ads/internal/c/d;)Lcom/facebook/ads/internal/b/f;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/c/d;->b:Lcom/facebook/ads/internal/b/f;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/c/d;->b:Lcom/facebook/ads/internal/b/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/c/d;->b:Lcom/facebook/ads/internal/b/f;

    new-instance v1, Lcom/facebook/ads/internal/c/d$3;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/c/d$3;-><init>(Lcom/facebook/ads/internal/c/d;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/b/f;->a(Lcom/facebook/ads/internal/adapters/a;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/c/d;->b:Lcom/facebook/ads/internal/b/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/b/f;->a(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/c/d;->b:Lcom/facebook/ads/internal/b/f;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/c/d;->c:Z

    iput-boolean v0, p0, Lcom/facebook/ads/internal/c/d;->d:Z

    :cond_0
    return-void
.end method

.method public a(Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 9
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/facebook/ads/internal/c/d;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/c/d;->b:Lcom/facebook/ads/internal/b/f;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/ads/internal/c/d;->a:Ljava/lang/String;

    const-string v1, "An ad load is already in progress. You should wait for adLoaded() to be called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/c/d;->c:Z

    iget-boolean v0, p0, Lcom/facebook/ads/internal/c/d;->d:Z

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/internal/c/d;->e:Lcom/facebook/ads/internal/c/g;

    iget-object p1, p1, Lcom/facebook/ads/internal/c/g;->a:Landroid/content/Context;

    const-string p2, "api"

    sget v0, Lcom/facebook/ads/internal/w/h/b;->f:I

    new-instance v1, Lcom/facebook/ads/internal/protocol/b;

    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_ADAPTER_ON_LOAD:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const-string v3, "Interstitial load called while showing interstitial."

    invoke-direct {v1, v2, v3}, Lcom/facebook/ads/internal/protocol/b;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    invoke-static {p1, p2, v0, v1}, Lcom/facebook/ads/internal/w/h/a;->b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Exception;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/c/d;->f:Lcom/facebook/ads/InterstitialAdExtendedListener;

    iget-object p2, p0, Lcom/facebook/ads/internal/c/d;->e:Lcom/facebook/ads/internal/c/g;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/c/g;->a()Lcom/facebook/ads/InterstitialAd;

    move-result-object p2

    new-instance v0, Lcom/facebook/ads/AdError;

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->LOAD_CALLED_WHILE_SHOWING_AD:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->LOAD_CALLED_WHILE_SHOWING_AD:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/c/d;->b:Lcom/facebook/ads/internal/b/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/c/d;->b:Lcom/facebook/ads/internal/b/f;

    new-instance v1, Lcom/facebook/ads/internal/c/d$1;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/c/d$1;-><init>(Lcom/facebook/ads/internal/c/d;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/b/f;->a(Lcom/facebook/ads/internal/adapters/a;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/c/d;->b:Lcom/facebook/ads/internal/b/f;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/f;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/c/d;->b:Lcom/facebook/ads/internal/b/f;

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/internal/c/d;->e:Lcom/facebook/ads/internal/c/g;

    iget-object v0, v0, Lcom/facebook/ads/internal/c/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v8, Lcom/facebook/ads/internal/b/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/c/d;->e:Lcom/facebook/ads/internal/c/g;

    iget-object v2, v1, Lcom/facebook/ads/internal/c/g;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/internal/protocol/f;->a(Landroid/util/DisplayMetrics;)Lcom/facebook/ads/internal/protocol/e;

    move-result-object v3

    sget-object v4, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    sget-object v5, Lcom/facebook/ads/internal/protocol/d;->b:Lcom/facebook/ads/internal/protocol/d;

    const/4 v6, 0x1

    move-object v1, v8

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/internal/b/a;-><init>(Ljava/lang/String;Lcom/facebook/ads/internal/protocol/e;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/internal/protocol/d;ILjava/util/EnumSet;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/c/d;->e:Lcom/facebook/ads/internal/c/g;

    iget-object p1, p1, Lcom/facebook/ads/internal/c/g;->d:Ljava/lang/String;

    invoke-virtual {v8, p1}, Lcom/facebook/ads/internal/b/a;->a(Ljava/lang/String;)V

    new-instance p1, Lcom/facebook/ads/internal/b/f;

    iget-object v0, p0, Lcom/facebook/ads/internal/c/d;->e:Lcom/facebook/ads/internal/c/g;

    iget-object v0, v0, Lcom/facebook/ads/internal/c/g;->a:Landroid/content/Context;

    invoke-direct {p1, v0, v8}, Lcom/facebook/ads/internal/b/f;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/b/a;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/c/d;->b:Lcom/facebook/ads/internal/b/f;

    iget-object p1, p0, Lcom/facebook/ads/internal/c/d;->b:Lcom/facebook/ads/internal/b/f;

    new-instance v0, Lcom/facebook/ads/internal/c/d$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/c/d$2;-><init>(Lcom/facebook/ads/internal/c/d;)V

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/b/f;->a(Lcom/facebook/ads/internal/adapters/a;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/c/d;->b:Lcom/facebook/ads/internal/b/f;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/b/f;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b()J
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/c/d;->b:Lcom/facebook/ads/internal/b/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/c/d;->b:Lcom/facebook/ads/internal/b/f;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/f;->h()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/c/d;->b:Lcom/facebook/ads/internal/b/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/c/d;->b:Lcom/facebook/ads/internal/b/f;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/f;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/c/d;->c:Z

    return v0
.end method

.method public e()Z
    .locals 7

    iget-boolean v0, p0, Lcom/facebook/ads/internal/c/d;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/internal/c/d;->f:Lcom/facebook/ads/InterstitialAdExtendedListener;

    iget-object v2, p0, Lcom/facebook/ads/internal/c/d;->e:Lcom/facebook/ads/internal/c/g;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/c/g;->a()Lcom/facebook/ads/InterstitialAd;

    move-result-object v2

    sget-object v3, Lcom/facebook/ads/AdError;->SHOW_CALLED_BEFORE_LOAD_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v0, v2, v3}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/c/d;->b:Lcom/facebook/ads/internal/b/f;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/c/d;->e:Lcom/facebook/ads/internal/c/g;

    iget-object v0, v0, Lcom/facebook/ads/internal/c/g;->a:Landroid/content/Context;

    const-string v2, "api"

    sget v3, Lcom/facebook/ads/internal/w/h/b;->g:I

    new-instance v4, Lcom/facebook/ads/internal/protocol/b;

    sget-object v5, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERSTITIAL_CONTROLLER_IS_NULL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    sget-object v6, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERSTITIAL_CONTROLLER_IS_NULL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-virtual {v6}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/facebook/ads/internal/protocol/b;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    invoke-static {v0, v2, v3, v4}, Lcom/facebook/ads/internal/w/h/a;->b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Exception;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/c/d;->b:Lcom/facebook/ads/internal/b/f;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/f;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/c/d;->d:Z

    iput-boolean v1, p0, Lcom/facebook/ads/internal/c/d;->c:Z

    return v0
.end method
