.class public Lcom/facebook/ads/internal/c/j;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public c:Lcom/facebook/ads/RewardedVideoAdListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public e:Lcom/facebook/ads/RewardData;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public g:Z

.field public h:I

.field public i:J

.field private j:Lcom/facebook/ads/RewardedVideoAd;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/RewardedVideoAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/RewardedVideoAd;)V
    .locals 1
    .param p3    # Lcom/facebook/ads/RewardedVideoAd;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/internal/c/j;->h:I

    iput-object p1, p0, Lcom/facebook/ads/internal/c/j;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/c/j;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/internal/c/j;->j:Lcom/facebook/ads/RewardedVideoAd;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/c/j;->k:Ljava/lang/ref/WeakReference;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/facebook/ads/internal/c/j;->i:J

    return-void
.end method


# virtual methods
.method a()Lcom/facebook/ads/RewardedVideoAd;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/c/j;->j:Lcom/facebook/ads/RewardedVideoAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/c/j;->j:Lcom/facebook/ads/RewardedVideoAd;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/c/j;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/RewardedVideoAd;

    :goto_0
    return-object v0
.end method

.method public a(Lcom/facebook/ads/RewardedVideoAd;)V
    .locals 1
    .param p1    # Lcom/facebook/ads/RewardedVideoAd;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/c/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->Z(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/internal/c/j;->j:Lcom/facebook/ads/RewardedVideoAd;

    return-void
.end method
