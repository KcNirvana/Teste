.class public Lcom/google/ads/interactivemedia/v3/internal/ib$a;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/internal/ib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/ib;


# direct methods
.method protected constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ib;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ib$a;->a:Lcom/google/ads/interactivemedia/v3/internal/ib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ib$a;->a:Lcom/google/ads/interactivemedia/v3/internal/ib;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ib;->a(Lcom/google/ads/interactivemedia/v3/internal/ib;)Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ib$a;->a:Lcom/google/ads/interactivemedia/v3/internal/ib;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ib;->a(Lcom/google/ads/interactivemedia/v3/internal/ib;Landroid/app/Activity;)Landroid/app/Activity;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ib$a;->a:Lcom/google/ads/interactivemedia/v3/internal/ib;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ib;->d(Lcom/google/ads/interactivemedia/v3/internal/ib;)Landroid/app/Application;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ib$a;->a:Lcom/google/ads/interactivemedia/v3/internal/ib;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ib;->e(Lcom/google/ads/interactivemedia/v3/internal/ib;)Lcom/google/ads/interactivemedia/v3/internal/ib$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ib$a;->a:Lcom/google/ads/interactivemedia/v3/internal/ib;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ib;->a(Lcom/google/ads/interactivemedia/v3/internal/ib;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ib$a;->a:Lcom/google/ads/interactivemedia/v3/internal/ib;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ib;->a(Lcom/google/ads/interactivemedia/v3/internal/ib;)Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ib$a;->a:Lcom/google/ads/interactivemedia/v3/internal/ib;

    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ib;->a(Lcom/google/ads/interactivemedia/v3/internal/ib;Landroid/app/Activity;)Landroid/app/Activity;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ib$a;->a:Lcom/google/ads/interactivemedia/v3/internal/ib;

    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    const-string v3, "inactive"

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ib;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/a;

    move-result-object p1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ib$a;->a:Lcom/google/ads/interactivemedia/v3/internal/ib;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ib;->c(Lcom/google/ads/interactivemedia/v3/internal/ib;)Lcom/google/ads/interactivemedia/v3/internal/jd;

    move-result-object v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/jc;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->activityMonitor:Lcom/google/ads/interactivemedia/v3/internal/jc$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->appStateChanged:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ib$a;->a:Lcom/google/ads/interactivemedia/v3/internal/ib;

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/ib;->b(Lcom/google/ads/interactivemedia/v3/internal/ib;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/google/ads/interactivemedia/v3/internal/jc;-><init>(Lcom/google/ads/interactivemedia/v3/internal/jc$b;Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/jd;->b(Lcom/google/ads/interactivemedia/v3/internal/jc;)V

    :cond_1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ib$a;->a:Lcom/google/ads/interactivemedia/v3/internal/ib;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ib;->a(Lcom/google/ads/interactivemedia/v3/internal/ib;)Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ib$a;->a:Lcom/google/ads/interactivemedia/v3/internal/ib;

    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    const-string v3, "active"

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ib;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/a;

    move-result-object p1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ib$a;->a:Lcom/google/ads/interactivemedia/v3/internal/ib;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ib;->c(Lcom/google/ads/interactivemedia/v3/internal/ib;)Lcom/google/ads/interactivemedia/v3/internal/jd;

    move-result-object v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/jc;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->activityMonitor:Lcom/google/ads/interactivemedia/v3/internal/jc$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->appStateChanged:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ib$a;->a:Lcom/google/ads/interactivemedia/v3/internal/ib;

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/ib;->b(Lcom/google/ads/interactivemedia/v3/internal/ib;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/google/ads/interactivemedia/v3/internal/jc;-><init>(Lcom/google/ads/interactivemedia/v3/internal/jc$b;Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/jd;->b(Lcom/google/ads/interactivemedia/v3/internal/jc;)V

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
