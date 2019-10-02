.class public final Lcom/facebook/ads/BidderTokenProvider;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBidderToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    new-instance v0, Lcom/facebook/ads/internal/n/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/internal/n/d;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/d;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
