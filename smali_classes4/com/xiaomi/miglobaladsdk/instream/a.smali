.class Lcom/xiaomi/miglobaladsdk/instream/a;
.super Lcom/xiaomi/miglobaladsdk/nativead/c;
.source "InstreamVideoAdManagerInternal.java"


# instance fields
.field private b:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

.field private c:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/miglobaladsdk/nativead/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p1, 0x7fffffff

    iput p1, p0, Lcom/xiaomi/miglobaladsdk/instream/a;->c:I

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/miglobaladsdk/instream/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/instream/a;->b:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    invoke-interface {v0}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;->getAdTypeName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/xiaomi/miglobaladsdk/instream/a;->b(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/xiaomi/miglobaladsdk/instream/a;->c:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/instream/a;->a:Lcom/xiaomi/miglobaladsdk/nativead/b;

    invoke-virtual {v1, p1}, Lcom/xiaomi/miglobaladsdk/nativead/b;->a(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/b/b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/xiaomi/miglobaladsdk/b/a;->a()Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/xiaomi/miglobaladsdk/instream/a;->b:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    iput v0, p0, Lcom/xiaomi/miglobaladsdk/instream/a;->c:I

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/xiaomi/miglobaladsdk/nativead/c;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    const v0, 0x7fffffff

    iput v0, p0, Lcom/xiaomi/miglobaladsdk/instream/a;->c:I

    invoke-super {p0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/c;->a(Z)V

    return-void
.end method

.method b()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/miglobaladsdk/instream/a;->c:I

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/instream/a;->b:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/instream/a;->b:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;->registerViewForInteraction(Landroid/view/View;)Z

    return-void
.end method

.method c()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/instream/a;->b:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/instream/a;->b:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    invoke-interface {v0}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;->unregisterView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/instream/a;->b:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    return-void
.end method

.method d()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/instream/a;->b:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/instream/a;->b:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    invoke-interface {v0}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;->hasExpired()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/instream/a;->a:Lcom/xiaomi/miglobaladsdk/nativead/b;

    const-string v1, "gis"

    invoke-virtual {v0, v1}, Lcom/xiaomi/miglobaladsdk/nativead/b;->a(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/b/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/b/b;->f()V

    :cond_0
    return-void
.end method
