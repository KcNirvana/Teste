.class public Lcom/miui/optimizemanage/memoryclean/d;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static xm(Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;Landroid/content/pm/ApplicationInfo;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/miui/optimizemanage/memoryclean/m;

    invoke-direct {v3}, Lcom/miui/optimizemanage/memoryclean/m;-><init>()V

    iget-object v0, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, v3, Lcom/miui/optimizemanage/memoryclean/m;->packageName:Ljava/lang/String;

    iget v0, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, v3, Lcom/miui/optimizemanage/memoryclean/m;->uid:I

    iput-boolean v2, v3, Lcom/miui/optimizemanage/memoryclean/m;->wo:Z

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/memoryclean/e;

    iget-object v4, v0, Lcom/miui/optimizemanage/memoryclean/e;->packageName:Ljava/lang/String;

    iget-object v5, v3, Lcom/miui/optimizemanage/memoryclean/m;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v0, v0, Lcom/miui/optimizemanage/memoryclean/e;->uid:I

    iget v4, v3, Lcom/miui/optimizemanage/memoryclean/m;->uid:I

    if-ne v0, v4, :cond_2

    iput-boolean v1, v3, Lcom/miui/optimizemanage/memoryclean/m;->wo:Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static xn(Landroid/content/Context;)I
    .locals 3

    invoke-static {}, Lcom/miui/optimizemanage/memoryclean/g;->xz()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/optimizemanage/memoryclean/d;->xo(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/memoryclean/m;

    iget-boolean v0, v0, Lcom/miui/optimizemanage/memoryclean/m;->wo:Z

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static xo(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/miui/optimizemanage/a/a;->zZ(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/miui/common/b/f;->aHU()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v4, v4}, Lcom/miui/a/d/a/a;->bua(II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, v2, p1, v0}, Lcom/miui/optimizemanage/memoryclean/d;->xm(Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;Landroid/content/pm/ApplicationInfo;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e7

    invoke-static {v4, v0}, Lcom/miui/a/d/a/a;->bua(II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, v2, p1, v0}, Lcom/miui/optimizemanage/memoryclean/d;->xm(Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;Landroid/content/pm/ApplicationInfo;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/miui/common/b/f;->aHO()I

    move-result v0

    invoke-static {v4, v0}, Lcom/miui/a/d/a/a;->bua(II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, v2, p1, v0}, Lcom/miui/optimizemanage/memoryclean/d;->xm(Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;Landroid/content/pm/ApplicationInfo;)V

    goto :goto_2

    :cond_2
    return-object v1
.end method
