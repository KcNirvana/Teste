.class public Lcom/miui/weather2/tools/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/tools/p$a;
    }
.end annotation


# direct methods
.method private static a(Landroid/content/res/Resources;I)I
    .locals 6

    const/16 v0, 0x1f4

    const/high16 v5, 0x3f800000    # 1.0f

    const v1, 0x7f0a0043

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v1, 0x7f0a003d

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-gez p1, :cond_6

    const/4 v1, 0x0

    :goto_0
    if-le p1, v0, :cond_5

    :goto_1
    sget-object v1, Lcom/miui/weather2/tools/p$a;->a:Lcom/miui/weather2/tools/p$a;

    invoke-static {v1}, Lcom/miui/weather2/tools/p$a;->a(Lcom/miui/weather2/tools/p$a;)I

    move-result v1

    if-gt v0, v1, :cond_0

    sget-object v1, Lcom/miui/weather2/tools/p$a;->a:Lcom/miui/weather2/tools/p$a;

    invoke-static {v1}, Lcom/miui/weather2/tools/p$a;->b(Lcom/miui/weather2/tools/p$a;)I

    move-result v1

    mul-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v4, Lcom/miui/weather2/tools/p$a;->a:Lcom/miui/weather2/tools/p$a;

    invoke-static {v4}, Lcom/miui/weather2/tools/p$a;->c(Lcom/miui/weather2/tools/p$a;)I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    mul-float/2addr v0, v5

    sget-object v4, Lcom/miui/weather2/tools/p$a;->a:Lcom/miui/weather2/tools/p$a;

    invoke-static {v4}, Lcom/miui/weather2/tools/p$a;->d(Lcom/miui/weather2/tools/p$a;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    int-to-float v4, v2

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    float-to-int v0, v0

    :goto_2
    mul-int/lit8 v1, v2, 0x7

    add-int/2addr v1, v3

    sub-int v0, v1, v0

    return v0

    :cond_0
    sget-object v1, Lcom/miui/weather2/tools/p$a;->b:Lcom/miui/weather2/tools/p$a;

    invoke-static {v1}, Lcom/miui/weather2/tools/p$a;->a(Lcom/miui/weather2/tools/p$a;)I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/miui/weather2/tools/p$a;->b:Lcom/miui/weather2/tools/p$a;

    invoke-static {v1}, Lcom/miui/weather2/tools/p$a;->b(Lcom/miui/weather2/tools/p$a;)I

    move-result v1

    mul-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v4, Lcom/miui/weather2/tools/p$a;->b:Lcom/miui/weather2/tools/p$a;

    invoke-static {v4}, Lcom/miui/weather2/tools/p$a;->c(Lcom/miui/weather2/tools/p$a;)I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    mul-float/2addr v0, v5

    sget-object v4, Lcom/miui/weather2/tools/p$a;->b:Lcom/miui/weather2/tools/p$a;

    invoke-static {v4}, Lcom/miui/weather2/tools/p$a;->d(Lcom/miui/weather2/tools/p$a;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    int-to-float v4, v2

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_2

    :cond_1
    sget-object v1, Lcom/miui/weather2/tools/p$a;->c:Lcom/miui/weather2/tools/p$a;

    invoke-static {v1}, Lcom/miui/weather2/tools/p$a;->a(Lcom/miui/weather2/tools/p$a;)I

    move-result v1

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/miui/weather2/tools/p$a;->c:Lcom/miui/weather2/tools/p$a;

    invoke-static {v1}, Lcom/miui/weather2/tools/p$a;->b(Lcom/miui/weather2/tools/p$a;)I

    move-result v1

    mul-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v4, Lcom/miui/weather2/tools/p$a;->c:Lcom/miui/weather2/tools/p$a;

    invoke-static {v4}, Lcom/miui/weather2/tools/p$a;->c(Lcom/miui/weather2/tools/p$a;)I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    mul-float/2addr v0, v5

    sget-object v4, Lcom/miui/weather2/tools/p$a;->c:Lcom/miui/weather2/tools/p$a;

    invoke-static {v4}, Lcom/miui/weather2/tools/p$a;->d(Lcom/miui/weather2/tools/p$a;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    int-to-float v4, v2

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/miui/weather2/tools/p$a;->d:Lcom/miui/weather2/tools/p$a;

    invoke-static {v1}, Lcom/miui/weather2/tools/p$a;->a(Lcom/miui/weather2/tools/p$a;)I

    move-result v1

    if-ge v0, v1, :cond_3

    sget-object v1, Lcom/miui/weather2/tools/p$a;->d:Lcom/miui/weather2/tools/p$a;

    invoke-static {v1}, Lcom/miui/weather2/tools/p$a;->b(Lcom/miui/weather2/tools/p$a;)I

    move-result v1

    mul-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v4, Lcom/miui/weather2/tools/p$a;->d:Lcom/miui/weather2/tools/p$a;

    invoke-static {v4}, Lcom/miui/weather2/tools/p$a;->c(Lcom/miui/weather2/tools/p$a;)I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    mul-float/2addr v0, v5

    sget-object v4, Lcom/miui/weather2/tools/p$a;->d:Lcom/miui/weather2/tools/p$a;

    invoke-static {v4}, Lcom/miui/weather2/tools/p$a;->d(Lcom/miui/weather2/tools/p$a;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    int-to-float v4, v2

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/miui/weather2/tools/p$a;->e:Lcom/miui/weather2/tools/p$a;

    invoke-static {v1}, Lcom/miui/weather2/tools/p$a;->a(Lcom/miui/weather2/tools/p$a;)I

    move-result v1

    if-ge v0, v1, :cond_4

    sget-object v1, Lcom/miui/weather2/tools/p$a;->e:Lcom/miui/weather2/tools/p$a;

    invoke-static {v1}, Lcom/miui/weather2/tools/p$a;->b(Lcom/miui/weather2/tools/p$a;)I

    move-result v1

    mul-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v4, Lcom/miui/weather2/tools/p$a;->e:Lcom/miui/weather2/tools/p$a;

    invoke-static {v4}, Lcom/miui/weather2/tools/p$a;->c(Lcom/miui/weather2/tools/p$a;)I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    mul-float/2addr v0, v5

    sget-object v4, Lcom/miui/weather2/tools/p$a;->e:Lcom/miui/weather2/tools/p$a;

    invoke-static {v4}, Lcom/miui/weather2/tools/p$a;->d(Lcom/miui/weather2/tools/p$a;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    int-to-float v4, v2

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto/16 :goto_2

    :cond_4
    sget-object v0, Lcom/miui/weather2/tools/p$a;->f:Lcom/miui/weather2/tools/p$a;

    invoke-static {v0}, Lcom/miui/weather2/tools/p$a;->b(Lcom/miui/weather2/tools/p$a;)I

    move-result v0

    mul-int/2addr v0, v2

    int-to-float v0, v0

    sget-object v1, Lcom/miui/weather2/tools/p$a;->f:Lcom/miui/weather2/tools/p$a;

    invoke-static {v1}, Lcom/miui/weather2/tools/p$a;->c(Lcom/miui/weather2/tools/p$a;)I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    sget-object v4, Lcom/miui/weather2/tools/p$a;->f:Lcom/miui/weather2/tools/p$a;

    invoke-static {v4}, Lcom/miui/weather2/tools/p$a;->d(Lcom/miui/weather2/tools/p$a;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    int-to-float v4, v2

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto/16 :goto_2

    :cond_5
    move v0, v1

    goto/16 :goto_1

    :cond_6
    move v1, p1

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/miui/weather2/structures/ForecastData;II)Lcom/miui/weather2/structures/AqiQualityTablePoint;
    .locals 6

    new-instance v0, Lcom/miui/weather2/structures/AqiQualityTablePoint;

    invoke-direct {v0}, Lcom/miui/weather2/structures/AqiQualityTablePoint;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/miui/weather2/structures/ForecastData;->getAqiNum(I)I

    move-result v1

    const/high16 v2, -0x80000000

    if-eq v2, v1, :cond_1

    invoke-static {v1}, Lcom/miui/weather2/structures/ForecastData;->getAqiLevel(I)I

    move-result v2

    invoke-static {v1}, Lcom/miui/weather2/structures/AQIData;->getAqiColorResId(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/miui/weather2/tools/p;->a(Landroid/content/res/Resources;I)I

    move-result v4

    invoke-virtual {p1, p2, p0}, Lcom/miui/weather2/structures/ForecastData;->getAqiDesc(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, p3}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->setPositionX(I)V

    invoke-virtual {v0, v4}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->setPositionY(I)V

    invoke-virtual {v0, v3}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->setColor(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->setAqiDesc(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->setAqiValue(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->setAqiLevel(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->setIsInvalid(Z)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->setIsInvalid(Z)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Lcom/miui/weather2/structures/AqiQualityTablePoint;
    .locals 4

    const/4 v3, 0x1

    const/high16 v2, -0x80000000

    new-instance v0, Lcom/miui/weather2/structures/AqiQualityTablePoint;

    invoke-direct {v0}, Lcom/miui/weather2/structures/AqiQualityTablePoint;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1, v2}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;I)I

    move-result v1

    if-eq v2, v1, :cond_0

    invoke-static {v1}, Lcom/miui/weather2/structures/AQIData;->getAqiColorResId(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/miui/weather2/tools/p;->a(Landroid/content/res/Resources;I)I

    move-result v3

    invoke-static {v1, p0}, Lcom/miui/weather2/structures/AQIData;->getTitle(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->setPositionX(I)V

    invoke-virtual {v0, v3}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->setPositionY(I)V

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->setColor(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->setAqiDesc(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->setAqiValue(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->setIsInvalid(Z)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, v3}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->setIsInvalid(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Lcom/miui/weather2/structures/AqiQualityTablePoint;->setIsInvalid(Z)V

    goto :goto_0
.end method
