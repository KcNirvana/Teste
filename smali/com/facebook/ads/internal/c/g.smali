.class public Lcom/facebook/ads/internal/c/g;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public c:Lcom/facebook/ads/InterstitialAdListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public e:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/String;

.field public g:J

.field private h:Lcom/facebook/ads/InterstitialAd;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/InterstitialAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/InterstitialAd;Ljava/lang/String;)V
    .locals 0
    .param p2    # Lcom/facebook/ads/InterstitialAd;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/c/g;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/facebook/ads/internal/c/g;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/ads/internal/c/g;->h:Lcom/facebook/ads/InterstitialAd;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/c/g;->i:Ljava/lang/ref/WeakReference;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/facebook/ads/internal/c/g;->g:J

    return-void
.end method


# virtual methods
.method a()Lcom/facebook/ads/InterstitialAd;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/c/g;->h:Lcom/facebook/ads/InterstitialAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/c/g;->h:Lcom/facebook/ads/InterstitialAd;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/c/g;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/InterstitialAd;

    :goto_0
    return-object v0
.end method

.method public a(Lcom/facebook/ads/InterstitialAd;)V
    .locals 1
    .param p1    # Lcom/facebook/ads/InterstitialAd;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/c/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->Z(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/internal/c/g;->h:Lcom/facebook/ads/InterstitialAd;

    return-void
.end method
