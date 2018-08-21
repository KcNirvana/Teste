.class public Lcom/alipay/android/app/birdnest/a/a;
.super Ljava/lang/Object;
.source "FBTools.java"


# static fields
.field private static a:F

.field private static b:I

.field private static c:I

.field private static d:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, -0x1

    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/alipay/android/app/birdnest/a/a;->a:F

    sput v1, Lcom/alipay/android/app/birdnest/a/a;->b:I

    sput v1, Lcom/alipay/android/app/birdnest/a/a;->c:I

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/birdnest/a/a;->d:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public static a(Landroid/content/Context;)F
    .locals 2

    sget v0, Lcom/alipay/android/app/birdnest/a/a;->a:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/alipay/android/app/birdnest/a/a;->b(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/alipay/android/app/birdnest/a/a;->a:F

    :cond_0
    sget v0, Lcom/alipay/android/app/birdnest/a/a;->a:F

    return v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x7

    const/4 v3, 0x0

    const-string/jumbo v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    new-array v2, v2, [C

    aget-char v0, v1, v3

    aput-char v0, v2, v3

    const/4 v0, 0x1

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, -0x1

    aget-char v4, v1, v0

    aput-char v4, v2, v3

    mul-int/lit8 v3, v0, 0x2

    aget-char v4, v1, v0

    aput-char v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 5

    invoke-static {p0}, Lcom/alipay/android/app/birdnest/a/a;->d(Ljava/lang/String;)[I

    move-result-object v0

    const/4 v1, 0x3

    aget v1, v0, v1

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v0, v0, v4

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 2

    sget-object v0, Lcom/alipay/android/app/birdnest/a/a;->d:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/alipay/android/app/birdnest/a/a;->d:Landroid/util/DisplayMetrics;

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/birdnest/a/a;->d:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :cond_0
    sget-object v0, Lcom/alipay/android/app/birdnest/a/a;->d:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public static c(Ljava/lang/String;)I
    .locals 2

    const v0, -0x777778

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/alipay/android/app/birdnest/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "rgb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/alipay/android/app/birdnest/a/a;->b(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)[I
    .locals 6

    const/4 v5, 0x3

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/16 v0, 0xff

    aput v0, v1, v5

    const-string/jumbo v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string/jumbo v2, ")"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    if-ne v0, v5, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v0

    goto :goto_1

    :cond_1
    return-object v1
.end method
