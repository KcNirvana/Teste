.class public Lcom/miui/powercenter/c/b;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ben(Landroid/content/Context;)Ljava/util/List;
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/miui/powercenter/c/b;->beo(Landroid/content/Context;IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static beo(Landroid/content/Context;IZ)Ljava/util/List;
    .locals 10

    const/4 v0, 0x0

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/f;->aRq()V

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/f;->aRr()Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    if-ge v1, p1, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/legacypowerrank/e;

    invoke-virtual {v0}, Lcom/miui/powercenter/legacypowerrank/e;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/powercenter/a/g;->bbv(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/legacypowerrank/e;

    invoke-virtual {v0}, Lcom/miui/powercenter/legacypowerrank/e;->getValue()D

    move-result-wide v6

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/f;->aRt()D

    move-result-wide v8

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v6, v8

    if-gez v0, :cond_2

    :cond_1
    return-object v4

    :cond_2
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/legacypowerrank/e;

    invoke-static {p0, v0}, Lcom/miui/powercenter/legacypowerrank/j;->aRM(Landroid/content/Context;Lcom/miui/powercenter/legacypowerrank/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    new-instance v5, Lcom/miui/powercenter/c/a;

    invoke-direct {v5}, Lcom/miui/powercenter/c/a;-><init>()V

    iput-object v0, v5, Lcom/miui/powercenter/c/a;->appName:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/legacypowerrank/e;

    invoke-virtual {v0}, Lcom/miui/powercenter/legacypowerrank/e;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/miui/powercenter/c/a;->packageName:Ljava/lang/String;

    iput-wide v6, v5, Lcom/miui/powercenter/c/a;->aOD:D

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/legacypowerrank/e;

    invoke-static {v0}, Lcom/miui/powercenter/legacypowerrank/j;->aRN(Lcom/miui/powercenter/legacypowerrank/e;)I

    move-result v0

    iput v0, v5, Lcom/miui/powercenter/c/a;->aOE:I

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/legacypowerrank/e;

    invoke-virtual {v0}, Lcom/miui/powercenter/legacypowerrank/e;->getUid()I

    move-result v0

    iput v0, v5, Lcom/miui/powercenter/c/a;->uid:I

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_1
.end method
