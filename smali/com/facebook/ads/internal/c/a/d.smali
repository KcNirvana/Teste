.class public Lcom/facebook/ads/internal/c/a/d;
.super Lcom/facebook/ads/internal/c/a/a;

# interfaces
.implements Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;


# instance fields
.field private final c:Lcom/facebook/ads/internal/c/e;

.field private final d:Lcom/facebook/ads/internal/c/j;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/internal/c/a/c;Lcom/facebook/ads/internal/c/e;Lcom/facebook/ads/internal/c/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/internal/c/a/a;-><init>(Ljava/lang/String;Lcom/facebook/ads/internal/c/a/c;)V

    iput-object p3, p0, Lcom/facebook/ads/internal/c/a/d;->c:Lcom/facebook/ads/internal/c/e;

    iput-object p4, p0, Lcom/facebook/ads/internal/c/a/d;->d:Lcom/facebook/ads/internal/c/j;

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 3

    iget-object p1, p0, Lcom/facebook/ads/internal/c/a/d;->b:Lcom/facebook/ads/internal/c/a/c;

    iget-object v0, p0, Lcom/facebook/ads/internal/c/a/d;->a:Ljava/lang/String;

    const/16 v1, 0x838

    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v2}, Lcom/facebook/ads/internal/c/a/c;->a(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 3

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "LONG_INVALIDATION_TIME_KEY"

    iget-object v1, p0, Lcom/facebook/ads/internal/c/a/d;->c:Lcom/facebook/ads/internal/c/e;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/c/e;->b()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "INT_RV_VIDEO_DURATION_KEY"

    iget-object v1, p0, Lcom/facebook/ads/internal/c/a/d;->d:Lcom/facebook/ads/internal/c/j;

    iget v1, v1, Lcom/facebook/ads/internal/c/j;->h:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/c/a/d;->b:Lcom/facebook/ads/internal/c/a/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/c/a/d;->a:Ljava/lang/String;

    const/16 v2, 0x834

    invoke-interface {v0, v2, v1, p1}, Lcom/facebook/ads/internal/c/a/c;->a(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 2

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "STR_ERROR_MESSAGE_KEY"

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "INT_ERROR_CODE_KEY"

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/facebook/ads/internal/c/a/d;->b:Lcom/facebook/ads/internal/c/a/c;

    iget-object v0, p0, Lcom/facebook/ads/internal/c/a/d;->a:Ljava/lang/String;

    const/16 v1, 0x837

    invoke-interface {p2, v1, v0, p1}, Lcom/facebook/ads/internal/c/a/c;->a(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 3

    iget-object p1, p0, Lcom/facebook/ads/internal/c/a/d;->b:Lcom/facebook/ads/internal/c/a/c;

    iget-object v0, p0, Lcom/facebook/ads/internal/c/a/d;->a:Ljava/lang/String;

    const/16 v1, 0x839

    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v2}, Lcom/facebook/ads/internal/c/a/c;->a(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onRewardServerFailed()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/c/a/d;->b:Lcom/facebook/ads/internal/c/a/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/c/a/d;->a:Ljava/lang/String;

    const/16 v2, 0x83d

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/facebook/ads/internal/c/a/c;->a(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onRewardServerSuccess()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/c/a/d;->b:Lcom/facebook/ads/internal/c/a/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/c/a/d;->a:Ljava/lang/String;

    const/16 v2, 0x83c

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/facebook/ads/internal/c/a/c;->a(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onRewardedVideoActivityDestroyed()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/c/a/d;->b:Lcom/facebook/ads/internal/c/a/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/c/a/d;->a:Ljava/lang/String;

    const/16 v2, 0x83a

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/facebook/ads/internal/c/a/c;->a(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onRewardedVideoClosed()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/c/a/d;->b:Lcom/facebook/ads/internal/c/a/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/c/a/d;->a:Ljava/lang/String;

    const/16 v2, 0x83e

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/facebook/ads/internal/c/a/c;->a(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onRewardedVideoCompleted()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/c/a/d;->b:Lcom/facebook/ads/internal/c/a/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/c/a/d;->a:Ljava/lang/String;

    const/16 v2, 0x83b

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/facebook/ads/internal/c/a/c;->a(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
