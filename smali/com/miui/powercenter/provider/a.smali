.class public Lcom/miui/powercenter/provider/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aCM:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/provider/a;->aCM:Ljava/util/List;

    return-void
.end method

.method private aNU(Landroid/content/Context;Lcom/miui/powercenter/provider/b;IJIJ)Ljava/lang/String;
    .locals 5

    iget v0, p2, Lcom/miui/powercenter/provider/b;->percent:I

    sub-int/2addr v0, p3

    if-lt v0, p6, :cond_0

    iget-wide v0, p2, Lcom/miui/powercenter/provider/b;->time:J

    sub-long v0, p4, v0

    cmp-long v0, v0, p7

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    long-to-int v1, p7

    div-int/lit16 v1, v1, 0x3e8

    div-int/lit8 v1, v1, 0x3c

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    long-to-int v3, p7

    div-int/lit16 v3, v3, 0x3e8

    div-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const v3, 0x7f0c001d

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    return-object v0
.end method


# virtual methods
.method public aNR(Lcom/miui/powercenter/provider/b;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/provider/a;->aCM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/provider/a;->aCM:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/powercenter/provider/a;->aCM:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/provider/b;

    iget v0, v0, Lcom/miui/powercenter/provider/b;->percent:I

    iget v1, p1, Lcom/miui/powercenter/provider/b;->percent:I

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/provider/a;->aCM:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public aNS(I)V
    .locals 4

    new-instance v0, Lcom/miui/powercenter/provider/b;

    invoke-direct {v0}, Lcom/miui/powercenter/provider/b;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/powercenter/provider/b;->time:J

    iput p1, v0, Lcom/miui/powercenter/provider/b;->percent:I

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/provider/a;->aNR(Lcom/miui/powercenter/provider/b;)V

    return-void
.end method

.method public aNT(Landroid/content/Context;I)Ljava/lang/String;
    .locals 11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v1, p0, Lcom/miui/powercenter/provider/a;->aCM:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v10, v1

    :goto_0
    if-ltz v10, :cond_3

    iget-object v1, p0, Lcom/miui/powercenter/provider/a;->aCM:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/powercenter/provider/b;

    const-wide/32 v8, 0x927c0

    const/16 v7, 0x14

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v1 .. v9}, Lcom/miui/powercenter/provider/a;->aNU(Landroid/content/Context;Lcom/miui/powercenter/provider/b;IJIJ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    const-wide/32 v8, 0x1b7740

    const/16 v7, 0x1e

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v1 .. v9}, Lcom/miui/powercenter/provider/a;->aNU(Landroid/content/Context;Lcom/miui/powercenter/provider/b;IJIJ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    const-wide/32 v8, 0x36ee80

    const/16 v7, 0x32

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v1 .. v9}, Lcom/miui/powercenter/provider/a;->aNU(Landroid/content/Context;Lcom/miui/powercenter/provider/b;IJIJ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v1, v10, -0x1

    move v10, v1

    goto :goto_0

    :cond_3
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/provider/a;->aCM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
