.class public Lcom/miui/weather2/tools/am;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(III)F
    .locals 2

    invoke-static {p2, p1}, Lcom/miui/weather2/tools/am;->a(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-static {p2, p1}, Lcom/miui/weather2/tools/am;->b(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p0

    mul-float/2addr v0, v1

    return v0
.end method

.method private static a(II)I
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x8

    :cond_0
    return p1
.end method

.method private static a(Ljava/util/ArrayList;II)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/MinuteRainPoint;",
            ">;II)I"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {p2, p1}, Lcom/miui/weather2/tools/am;->a(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-static {p2, p1}, Lcom/miui/weather2/tools/am;->b(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/MinuteRainPoint;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/MinuteRainPoint;->getPoxY()I

    move-result v0

    goto :goto_0
.end method

.method private static a(Landroid/content/res/Resources;II)Lcom/miui/weather2/tools/ak;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Lcom/miui/weather2/tools/ao;

    invoke-direct {v0, p0}, Lcom/miui/weather2/tools/ao;-><init>(Landroid/content/res/Resources;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    new-instance v0, Lcom/miui/weather2/tools/an;

    invoke-direct {v0, p0}, Lcom/miui/weather2/tools/an;-><init>(Landroid/content/res/Resources;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    if-ge p1, v0, :cond_2

    new-instance v0, Lcom/miui/weather2/tools/an;

    invoke-direct {v0, p0}, Lcom/miui/weather2/tools/an;-><init>(Landroid/content/res/Resources;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/miui/weather2/tools/ao;

    invoke-direct {v0, p0}, Lcom/miui/weather2/tools/ao;-><init>(Landroid/content/res/Resources;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/res/Resources;IIILjava/util/ArrayList;)Lcom/miui/weather2/tools/ak;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "III",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/MinuteRainPoint;",
            ">;)",
            "Lcom/miui/weather2/tools/ak;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/miui/weather2/tools/am;->a(Landroid/content/res/Resources;II)Lcom/miui/weather2/tools/ak;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/weather2/tools/ak;->a(Landroid/content/res/Resources;)V

    invoke-static {p3, p1, p2}, Lcom/miui/weather2/tools/am;->a(III)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/tools/ak;->b(F)V

    invoke-static {p4, p1, p2}, Lcom/miui/weather2/tools/am;->a(Ljava/util/ArrayList;II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/tools/ak;->a(F)V

    invoke-virtual {v0}, Lcom/miui/weather2/tools/ak;->b()V

    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;IILjava/util/ArrayList;)[Lcom/miui/weather2/tools/ak;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/MinuteRainPoint;",
            ">;)[",
            "Lcom/miui/weather2/tools/ak;"
        }
    .end annotation

    const/16 v3, 0xf

    new-array v1, v3, [Lcom/miui/weather2/tools/ak;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/miui/weather2/tools/am;->a(Landroid/content/res/Resources;IIILjava/util/ArrayList;)Lcom/miui/weather2/tools/ak;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static b(II)I
    .locals 2

    const/16 v1, 0x8

    const/16 v0, 0xf

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    if-ge p1, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
