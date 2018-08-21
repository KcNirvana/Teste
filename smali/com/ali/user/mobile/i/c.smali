.class public Lcom/ali/user/mobile/i/c;
.super Ljava/lang/Object;
.source "DensityUtil.java"


# static fields
.field private static a:F

.field private static b:F


# direct methods
.method public static a(FI)F
    .locals 1

    invoke-static {p1}, Lcom/ali/user/mobile/i/c;->a(I)F

    move-result v0

    mul-float/2addr v0, p0

    return v0
.end method

.method public static a(I)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/high16 v0, 0x3f600000    # 0.875f

    goto :goto_0

    :pswitch_2
    const/high16 v0, 0x3f900000    # 1.125f

    goto :goto_0

    :pswitch_3
    const/high16 v0, 0x3fa00000    # 1.25f

    goto :goto_0

    :pswitch_4
    const/high16 v0, 0x3fb00000    # 1.375f

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;F)I
    .locals 2

    invoke-static {p0}, Lcom/ali/user/mobile/i/c;->a(Landroid/content/Context;)V

    sget v0, Lcom/ali/user/mobile/i/c;->a:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    sget v0, Lcom/ali/user/mobile/i/c;->a:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/ali/user/mobile/i/c;->a:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(FF)Z
    .locals 2

    float-to-int v0, p0

    float-to-int v1, p1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;F)F
    .locals 1

    invoke-static {p0}, Lcom/ali/user/mobile/i/c;->b(Landroid/content/Context;)V

    sget v0, Lcom/ali/user/mobile/i/c;->b:F

    div-float v0, p1, v0

    return v0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    sget v0, Lcom/ali/user/mobile/i/c;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    sput v0, Lcom/ali/user/mobile/i/c;->b:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
