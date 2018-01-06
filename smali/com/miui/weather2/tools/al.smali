.class public Lcom/miui/weather2/tools/al;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(DI)I
    .locals 8

    const/4 v1, 0x3

    const/4 v0, 0x0

    int-to-float v2, p2

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3e800000    # 0.25f

    const v4, 0x3eb33333    # 0.35f

    const/high16 v5, 0x3f800000    # 1.0f

    float-to-double v6, v3

    cmpg-double v6, p0, v6

    if-gtz v6, :cond_2

    const-wide/16 v4, 0x0

    cmpl-double v4, p0, v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    sub-int v0, p2, v0

    return v0

    :cond_1
    float-to-double v4, v3

    div-double v4, p0, v4

    float-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v0, v2

    if-gt v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    float-to-double v6, v4

    cmpg-double v1, p0, v6

    if-gtz v1, :cond_3

    float-to-double v0, v3

    sub-double v0, p0, v0

    sub-float v3, v4, v3

    float-to-double v4, v3

    div-double/2addr v0, v4

    float-to-double v4, v2

    mul-double/2addr v0, v4

    float-to-double v2, v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0

    :cond_3
    float-to-double v6, v5

    cmpg-double v1, p0, v6

    if-gtz v1, :cond_0

    float-to-double v0, v4

    sub-double v0, p0, v0

    sub-float v3, v5, v4

    float-to-double v4, v3

    div-double/2addr v0, v4

    float-to-double v4, v2

    mul-double/2addr v0, v4

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0
.end method

.method public static a(Ljava/util/ArrayList;III)Landroid/graphics/Path;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/MinuteRainPoint;",
            ">;III)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    const/4 v0, 0x0

    sub-int v2, p2, p3

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/MinuteRainPoint;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/MinuteRainPoint;->getPoxX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Lcom/miui/weather2/structures/MinuteRainPoint;->getPoxY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    :cond_2
    int-to-float v0, p1

    sub-int v2, p2, p3

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(II)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/MinuteRainPoint;",
            ">;"
        }
    .end annotation

    int-to-float v0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42f00000    # 120.0f

    div-float v1, v0, v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x78

    if-gt v0, v3, :cond_0

    int-to-float v3, v0

    mul-float/2addr v3, v1

    float-to-int v3, v3

    new-instance v4, Lcom/miui/weather2/structures/MinuteRainPoint;

    invoke-direct {v4, v3, p1}, Lcom/miui/weather2/structures/MinuteRainPoint;-><init>(II)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static a(Ljava/util/ArrayList;II)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/MinuteRainPoint;",
            ">;II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/MinuteRainPoint;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {p1, p2}, Lcom/miui/weather2/tools/al;->a(II)Ljava/util/ArrayList;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static a(Ljava/util/ArrayList;Ljava/util/ArrayList;IF)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/MinuteRainPoint;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/MinuteRainPoint;",
            ">;IF)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/MinuteRainPoint;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/MinuteRainPoint;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/weather2/structures/MinuteRainPoint;

    new-instance v4, Lcom/miui/weather2/structures/MinuteRainPoint;

    invoke-direct {v4, v1}, Lcom/miui/weather2/structures/MinuteRainPoint;-><init>(Lcom/miui/weather2/structures/MinuteRainPoint;)V

    invoke-virtual {v1}, Lcom/miui/weather2/structures/MinuteRainPoint;->getPoxY()I

    move-result v1

    invoke-virtual {v0}, Lcom/miui/weather2/structures/MinuteRainPoint;->getPoxY()I

    move-result v0

    int-to-float v5, v0

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    sub-float v0, v5, v0

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Lcom/miui/weather2/structures/MinuteRainPoint;->setPoxY(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v3

    goto :goto_0
.end method

.method public static a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/MinuteRainPoint;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/MinuteRainPoint;",
            ">;)Z"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/MinuteRainPoint;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/weather2/structures/MinuteRainPoint;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/structures/MinuteRainPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/util/ArrayList;II)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/MinuteRainPoint;",
            ">;"
        }
    .end annotation

    const/16 v8, 0x77

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x78

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    int-to-float v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42f00000    # 120.0f

    div-float v3, v0, v1

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    int-to-float v0, v1

    mul-float/2addr v0, v3

    float-to-int v4, v0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7, p2}, Lcom/miui/weather2/tools/al;->a(DI)I

    move-result v0

    new-instance v5, Lcom/miui/weather2/structures/MinuteRainPoint;

    invoke-direct {v5, v4, v0}, Lcom/miui/weather2/structures/MinuteRainPoint;-><init>(II)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/miui/weather2/structures/MinuteRainPoint;->setPrecipitationProbability(D)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lcom/miui/weather2/tools/al;->a(DI)I

    move-result v0

    new-instance v1, Lcom/miui/weather2/structures/MinuteRainPoint;

    invoke-direct {v1, p1, v0}, Lcom/miui/weather2/structures/MinuteRainPoint;-><init>(II)V

    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/miui/weather2/structures/MinuteRainPoint;->setPrecipitationProbability(D)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    goto :goto_0
.end method
