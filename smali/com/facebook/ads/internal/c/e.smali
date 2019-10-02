.class public Lcom/facebook/ads/internal/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/c/c;


# static fields
.field private static final a:Ljava/lang/String; = "e"


# instance fields
.field private final b:Lcom/facebook/ads/internal/c/j;

.field private c:Lcom/facebook/ads/internal/b/h;

.field private d:Z

.field private final e:Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/c/j;Lcom/facebook/ads/internal/c/a/c;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/c/e;->d:Z

    iput-object p1, p0, Lcom/facebook/ads/internal/c/e;->b:Lcom/facebook/ads/internal/c/j;

    new-instance v0, Lcom/facebook/ads/internal/c/a/d;

    invoke-direct {v0, p3, p2, p0, p1}, Lcom/facebook/ads/internal/c/a/d;-><init>(Ljava/lang/String;Lcom/facebook/ads/internal/c/a/c;Lcom/facebook/ads/internal/c/e;Lcom/facebook/ads/internal/c/j;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/c/e;->e:Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/c/e;)Lcom/facebook/ads/internal/c/j;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/c/e;->b:Lcom/facebook/ads/internal/c/j;

    return-object p0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/c/e;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/c/e;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/c/e;->c:Lcom/facebook/ads/internal/b/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/c/e;->c:Lcom/facebook/ads/internal/b/h;

    new-instance v1, Lcom/facebook/ads/internal/c/e$2;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/c/e$2;-><init>(Lcom/facebook/ads/internal/c/e;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/b/h;->a(Lcom/facebook/ads/internal/adapters/a;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/c/e;->c:Lcom/facebook/ads/internal/b/h;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/b/h;->a(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/facebook/ads/internal/c/e;->c:Lcom/facebook/ads/internal/b/h;

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/facebook/ads/internal/c/e;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/c/e;->e:Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    return-object p0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/c/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/c/e;->d:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/c/e;->a(Z)V

    return-void
.end method

.method public a(Lcom/facebook/ads/RewardData;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/c/e;->b:Lcom/facebook/ads/internal/c/j;

    iput-object p1, v0, Lcom/facebook/ads/internal/c/j;->e:Lcom/facebook/ads/RewardData;

    iget-boolean v0, p0, Lcom/facebook/ads/internal/c/e;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/c/e;->c:Lcom/facebook/ads/internal/b/h;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/b/h;->a(Lcom/facebook/ads/RewardData;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 7

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/internal/c/e;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/c/e;->c:Lcom/facebook/ads/internal/b/h;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/ads/internal/c/e;->a:Ljava/lang/String;

    const-string v1, "An ad load is already in progress. You should wait for adLoaded() to be called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/c/e;->a(Z)V

    iput-boolean v0, p0, Lcom/facebook/ads/internal/c/e;->d:Z

    new-instance v0, Lcom/facebook/ads/internal/b/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/c/e;->b:Lcom/facebook/ads/internal/c/j;

    iget-object v2, v1, Lcom/facebook/ads/internal/c/j;->b:Ljava/lang/String;

    sget-object v3, Lcom/facebook/ads/internal/protocol/e;->m:Lcom/facebook/ads/internal/protocol/e;

    sget-object v4, Lcom/facebook/ads/internal/protocol/AdPlacementType;->REWARDED_VIDEO:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    sget-object v5, Lcom/facebook/ads/internal/protocol/d;->b:Lcom/facebook/ads/internal/protocol/d;

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/internal/b/a;-><init>(Ljava/lang/String;Lcom/facebook/ads/internal/protocol/e;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/internal/protocol/d;I)V

    invoke-virtual {v0, p2}, Lcom/facebook/ads/internal/b/a;->a(Z)V

    iget-object p2, p0, Lcom/facebook/ads/internal/c/e;->b:Lcom/facebook/ads/internal/c/j;

    iget-object p2, p2, Lcom/facebook/ads/internal/c/j;->d:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/internal/b/a;->a(Ljava/lang/String;)V

    new-instance p2, Lcom/facebook/ads/internal/b/h;

    iget-object v1, p0, Lcom/facebook/ads/internal/c/e;->b:Lcom/facebook/ads/internal/c/j;

    iget-object v1, v1, Lcom/facebook/ads/internal/c/j;->a:Landroid/content/Context;

    invoke-direct {p2, v1, v0}, Lcom/facebook/ads/internal/b/h;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/b/a;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/c/e;->c:Lcom/facebook/ads/internal/b/h;

    iget-object p2, p0, Lcom/facebook/ads/internal/c/e;->c:Lcom/facebook/ads/internal/b/h;

    new-instance v0, Lcom/facebook/ads/internal/c/e$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/c/e$1;-><init>(Lcom/facebook/ads/internal/c/e;)V

    invoke-virtual {p2, v0}, Lcom/facebook/ads/internal/b/h;->a(Lcom/facebook/ads/internal/adapters/a;)V

    iget-object p2, p0, Lcom/facebook/ads/internal/c/e;->c:Lcom/facebook/ads/internal/b/h;

    invoke-virtual {p2, p1}, Lcom/facebook/ads/internal/b/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/facebook/ads/internal/c/e;->a:Ljava/lang/String;

    const-string v0, "Error loading rewarded video ad"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p2, p0, Lcom/facebook/ads/internal/c/e;->b:Lcom/facebook/ads/internal/c/j;

    iget-object p2, p2, Lcom/facebook/ads/internal/c/j;->a:Landroid/content/Context;

    const-string v0, "api"

    sget v1, Lcom/facebook/ads/internal/w/h/b;->i:I

    invoke-static {p2, v0, v1, p1}, Lcom/facebook/ads/internal/w/h/a;->b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Exception;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/c/e;->e:Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    iget-object p2, p0, Lcom/facebook/ads/internal/c/e;->b:Lcom/facebook/ads/internal/c/j;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/c/j;->a()Lcom/facebook/ads/RewardedVideoAd;

    move-result-object p2

    const/16 v0, 0x7d4

    invoke-static {v0}, Lcom/facebook/ads/AdError;->internalError(I)Lcom/facebook/ads/AdError;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    :goto_0
    return-void
.end method

.method public a(I)Z
    .locals 3

    iget-boolean v0, p0, Lcom/facebook/ads/internal/c/e;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/c/e;->e:Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    iget-object v0, p0, Lcom/facebook/ads/internal/c/e;->b:Lcom/facebook/ads/internal/c/j;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c/j;->a()Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    sget-object v2, Lcom/facebook/ads/AdError;->SHOW_CALLED_BEFORE_LOAD_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {p1, v0, v2}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/c/e;->c:Lcom/facebook/ads/internal/b/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/c/e;->c:Lcom/facebook/ads/internal/b/h;

    iget-object v0, v0, Lcom/facebook/ads/internal/b/h;->h:Lcom/facebook/ads/internal/b/a;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/b/a;->a(I)V

    iget-object p1, p0, Lcom/facebook/ads/internal/c/e;->c:Lcom/facebook/ads/internal/b/h;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/b/h;->e()V

    iput-boolean v1, p0, Lcom/facebook/ads/internal/c/e;->d:Z

    const/4 p1, 0x1

    return p1

    :cond_1
    iput-boolean v1, p0, Lcom/facebook/ads/internal/c/e;->d:Z

    return v1
.end method

.method public b()J
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/c/e;->c:Lcom/facebook/ads/internal/b/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/c/e;->c:Lcom/facebook/ads/internal/b/h;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/h;->h()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/c/e;->c:Lcom/facebook/ads/internal/b/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/c/e;->c:Lcom/facebook/ads/internal/b/h;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/h;->g()Z

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

    iget-boolean v0, p0, Lcom/facebook/ads/internal/c/e;->d:Z

    return v0
.end method
