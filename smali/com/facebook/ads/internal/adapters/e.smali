.class public Lcom/facebook/ads/internal/adapters/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/adapters/AdAdapter;


# static fields
.field private static final a:Ljava/lang/String; = "e"


# instance fields
.field private b:Lcom/facebook/ads/internal/view/c/a$b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private c:Lcom/facebook/ads/internal/view/c/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private d:Lcom/facebook/ads/internal/adapters/m;

.field private e:Lcom/facebook/ads/internal/adapters/BannerAdapterListener;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/facebook/ads/internal/s/c;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/e;)Lcom/facebook/ads/internal/adapters/BannerAdapterListener;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/adapters/e;->e:Lcom/facebook/ads/internal/adapters/BannerAdapterListener;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/adapters/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/adapters/e;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/adapters/e;->i:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/adapters/e;)Lcom/facebook/ads/internal/s/c;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/adapters/e;->g:Lcom/facebook/ads/internal/s/c;

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/adapters/e;)Lcom/facebook/ads/internal/adapters/m;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/adapters/e;->d:Lcom/facebook/ads/internal/adapters/m;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/protocol/d;Lcom/facebook/ads/internal/adapters/BannerAdapterListener;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/internal/s/c;",
            "Lcom/facebook/ads/internal/protocol/d;",
            "Lcom/facebook/ads/internal/adapters/BannerAdapterListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/e;->i:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/e;->g:Lcom/facebook/ads/internal/s/c;

    iput-object p4, p0, Lcom/facebook/ads/internal/adapters/e;->e:Lcom/facebook/ads/internal/adapters/BannerAdapterListener;

    iput-object p5, p0, Lcom/facebook/ads/internal/adapters/e;->f:Ljava/util/Map;

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/e;->f:Ljava/util/Map;

    const-string p2, "definition"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/ads/internal/m/d;

    iget-object p2, p0, Lcom/facebook/ads/internal/adapters/e;->f:Ljava/util/Map;

    const-string p3, "data"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;

    invoke-static {p2}, Lcom/facebook/ads/internal/adapters/l;->a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/adapters/l;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/l;->getClientToken()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/facebook/ads/internal/adapters/e;->h:Ljava/lang/String;

    iget-object p3, p0, Lcom/facebook/ads/internal/adapters/e;->i:Landroid/content/Context;

    iget-object p4, p0, Lcom/facebook/ads/internal/adapters/e;->g:Lcom/facebook/ads/internal/s/c;

    invoke-static {p3, p2, p4}, Lcom/facebook/ads/internal/a/e;->a(Landroid/content/Context;Lcom/facebook/ads/internal/a/e$a;Lcom/facebook/ads/internal/s/c;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/e;->e:Lcom/facebook/ads/internal/adapters/BannerAdapterListener;

    const/16 p2, 0x7d6

    invoke-static {p2}, Lcom/facebook/ads/AdError;->internalError(I)Lcom/facebook/ads/AdError;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lcom/facebook/ads/internal/adapters/BannerAdapterListener;->onBannerError(Lcom/facebook/ads/internal/adapters/e;Lcom/facebook/ads/AdError;)V

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/facebook/ads/internal/adapters/e$1;

    invoke-direct {p3, p0, p2}, Lcom/facebook/ads/internal/adapters/e$1;-><init>(Lcom/facebook/ads/internal/adapters/e;Lcom/facebook/ads/internal/adapters/l;)V

    iput-object p3, p0, Lcom/facebook/ads/internal/adapters/e;->b:Lcom/facebook/ads/internal/view/c/a$b;

    new-instance p3, Lcom/facebook/ads/internal/view/c/a;

    iget-object p4, p0, Lcom/facebook/ads/internal/adapters/e;->i:Landroid/content/Context;

    new-instance p5, Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->b:Lcom/facebook/ads/internal/view/c/a$b;

    invoke-direct {p5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/facebook/ads/internal/m/d;->f()I

    move-result v0

    invoke-direct {p3, p4, p5, v0}, Lcom/facebook/ads/internal/view/c/a;-><init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;I)V

    iput-object p3, p0, Lcom/facebook/ads/internal/adapters/e;->c:Lcom/facebook/ads/internal/view/c/a;

    iget-object p3, p0, Lcom/facebook/ads/internal/adapters/e;->c:Lcom/facebook/ads/internal/view/c/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/m/d;->h()I

    move-result p4

    invoke-virtual {p1}, Lcom/facebook/ads/internal/m/d;->i()I

    move-result p1

    invoke-virtual {p3, p4, p1}, Lcom/facebook/ads/internal/view/c/a;->a(II)V

    new-instance v5, Lcom/facebook/ads/internal/adapters/e$2;

    invoke-direct {v5, p0}, Lcom/facebook/ads/internal/adapters/e$2;-><init>(Lcom/facebook/ads/internal/adapters/e;)V

    new-instance p1, Lcom/facebook/ads/internal/adapters/m;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/e;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/e;->g:Lcom/facebook/ads/internal/s/c;

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/e;->c:Lcom/facebook/ads/internal/view/c/a;

    iget-object p3, p0, Lcom/facebook/ads/internal/adapters/e;->c:Lcom/facebook/ads/internal/view/c/a;

    invoke-virtual {p3}, Lcom/facebook/ads/internal/view/c/a;->getViewabilityChecker()Lcom/facebook/ads/internal/x/a;

    move-result-object v4

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/adapters/m;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/w/e/a;Lcom/facebook/ads/internal/x/a;Lcom/facebook/ads/internal/adapters/c;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/e;->d:Lcom/facebook/ads/internal/adapters/m;

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/e;->d:Lcom/facebook/ads/internal/adapters/m;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/adapters/m;->a(Lcom/facebook/ads/internal/adapters/l;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->c:Lcom/facebook/ads/internal/view/c/a;

    invoke-static {}, Lcom/facebook/ads/internal/w/e/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/l;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/internal/view/c/a;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/e;->e:Lcom/facebook/ads/internal/adapters/BannerAdapterListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/e;->e:Lcom/facebook/ads/internal/adapters/BannerAdapterListener;

    iget-object p2, p0, Lcom/facebook/ads/internal/adapters/e;->c:Lcom/facebook/ads/internal/view/c/a;

    invoke-interface {p1, p0, p2}, Lcom/facebook/ads/internal/adapters/BannerAdapterListener;->onBannerAdLoaded(Lcom/facebook/ads/internal/adapters/e;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getClientToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlacementType()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->c:Lcom/facebook/ads/internal/view/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->c:Lcom/facebook/ads/internal/view/c/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/c/a;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->c:Lcom/facebook/ads/internal/view/c/a;

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->b:Lcom/facebook/ads/internal/view/c/a$b;

    :cond_0
    return-void
.end method
