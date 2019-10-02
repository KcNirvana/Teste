.class public Lcom/xiaomi/miglobaladsdk/bannerad/a;
.super Lcom/xiaomi/miglobaladsdk/nativead/c;
.source "BannerAdManagerInternal.java"


# instance fields
.field private b:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/miglobaladsdk/nativead/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p1, 0x7fffffff

    iput p1, p0, Lcom/xiaomi/miglobaladsdk/bannerad/a;->d:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/bannerad/a;->e:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/bannerad/a;->f:Ljava/util/List;

    iput-object p2, p0, Lcom/xiaomi/miglobaladsdk/bannerad/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/miglobaladsdk/bannerad/a;->d:I

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/bannerad/a;->b:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/bannerad/a;->b:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;->registerViewForInteraction(Landroid/view/View;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/xiaomi/miglobaladsdk/bannerad/a;->b(Ljava/lang/String;)I

    move-result v0

    const-string v1, "BannerAdManagerInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adTypeName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mCachedIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaomi/miglobaladsdk/bannerad/a;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/xiaomi/miglobaladsdk/bannerad/a;->d:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/bannerad/a;->a:Lcom/xiaomi/miglobaladsdk/nativead/b;

    invoke-virtual {v1, p1}, Lcom/xiaomi/miglobaladsdk/nativead/b;->a(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/b/b;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/xiaomi/miglobaladsdk/b/a;->a()Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v1, p0, Lcom/xiaomi/miglobaladsdk/bannerad/a;->b:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/bannerad/a;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v0, p0, Lcom/xiaomi/miglobaladsdk/bannerad/a;->d:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/bannerad/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/xiaomi/miglobaladsdk/nativead/c;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    const v0, 0x7fffffff

    iput v0, p0, Lcom/xiaomi/miglobaladsdk/bannerad/a;->d:I

    invoke-super {p0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/c;->a(Z)V

    return-void
.end method

.method b()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/bannerad/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/bannerad/a;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xiaomi/miglobaladsdk/bannerad/a;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/bannerad/a;->a:Lcom/xiaomi/miglobaladsdk/nativead/b;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/bannerad/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/bannerad/a;->a:Lcom/xiaomi/miglobaladsdk/nativead/b;

    invoke-virtual {v2, v1}, Lcom/xiaomi/miglobaladsdk/nativead/b;->a(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/b/b;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/xiaomi/miglobaladsdk/b/a;->a()Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;->unregisterView()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/bannerad/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;->unregisterView()V

    goto :goto_1

    :cond_5
    return-void
.end method

.method c()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/bannerad/a;->b:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/bannerad/a;->b:Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

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
