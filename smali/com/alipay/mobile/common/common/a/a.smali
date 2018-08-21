.class public final Lcom/alipay/mobile/common/common/a/a;
.super Ljava/lang/Object;
.source "DensityUtil.java"


# static fields
.field private static a:F

.field private static b:I

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, -0x1

    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/alipay/mobile/common/common/a/a;->a:F

    sput v1, Lcom/alipay/mobile/common/common/a/a;->b:I

    sput v1, Lcom/alipay/mobile/common/common/a/a;->c:I

    return-void
.end method

.method public static a()I
    .locals 1

    sget v0, Lcom/alipay/mobile/common/common/a/a;->b:I

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/Sdk;->b()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/alipay/mobile/common/common/a/a;->b:I

    :cond_0
    sget v0, Lcom/alipay/mobile/common/common/a/a;->b:I

    return v0
.end method

.method public static b()I
    .locals 1

    sget v0, Lcom/alipay/mobile/common/common/a/a;->c:I

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/Sdk;->b()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lcom/alipay/mobile/common/common/a/a;->c:I

    :cond_0
    sget v0, Lcom/alipay/mobile/common/common/a/a;->c:I

    return v0
.end method
