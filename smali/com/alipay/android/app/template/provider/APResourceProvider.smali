.class public Lcom/alipay/android/app/template/provider/APResourceProvider;
.super Ljava/lang/Object;
.source "APResourceProvider.java"

# interfaces
.implements Lcom/alipay/birdnest/api/BirdNestEngine$d;
.implements Lcom/alipay/birdnest/api/BirdNestEngine$e;
.implements Lcom/alipay/birdnest/api/BirdNestEngine$h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string/jumbo v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "drawable"

    invoke-static {p4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    array-length v1, v0

    if-le v1, v4, :cond_2

    aget-object v0, v0, v4

    :goto_0
    if-eqz v0, :cond_0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1

    const-string/jumbo v1, "getResource_getDrawableId"

    invoke-static {v5, v1, p2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    array-length v1, v0

    if-le v1, v3, :cond_3

    aget-object v0, v0, v3

    goto :goto_0

    :cond_3
    aget-object v0, v0, v2

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "getResource_readAssetsFile"

    invoke-static {v5, v1, p2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    array-length v2, v0

    if-le v2, v3, :cond_5

    aget-object p2, v0, v3

    :cond_5
    invoke-static {p2, v1}, Lcom/alipay/android/app/ctemplate/a/a;->a(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getResourceAsync(Landroid/view/View;Ljava/lang/String;IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IZLcom/alipay/birdnest/api/BirdNestEngine$h$a;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput p3, v1, v3

    const/4 v2, 0x1

    aput p4, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;->a([I)V

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;->None:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;->a(Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;)V

    const-string/jumbo v1, "local:alipay_msp_bank_logo"

    invoke-static {p1, p2, v3, v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->a(Landroid/view/View;Ljava/lang/String;ZLcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUniqueResId(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x4

    const-string/jumbo v1, "getResource_getUniqueResId"

    invoke-static {v0, v1, p1}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public prepareContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x4

    const-string/jumbo v1, "getResource_prepareContent"

    invoke-static {v0, v1, p1}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public renderEmojiReturncount(Landroid/content/Context;Landroid/text/SpannableStringBuilder;I)I
    .locals 0

    return p3
.end method
