.class public abstract Lcom/xiaomi/a/a/h;
.super Lcom/xiaomi/a/a/a;
.source ""


# instance fields
.field protected bpK:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/a/a/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/a/a/h;->bpK:Z

    return-void
.end method


# virtual methods
.method public abstract bNj(Lcom/xiaomi/a/j;[II)Z
.end method

.method protected bNk(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public bNy(Ljava/util/List;)Ljava/util/List;
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xiaomi/a/a/h;->bNk(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public bNz(Lcom/xiaomi/a/j;[II)Z
    .locals 1

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    array-length v0, p2

    if-ge p3, v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/a/a/h;->bNj(Lcom/xiaomi/a/j;[II)Z

    move-result v0

    return v0
.end method

.method protected reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/a/a/h;->bpK:Z

    return-void
.end method
