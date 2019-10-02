.class public Lcom/mixpanel/android/util/ActivityImageUtils;
.super Ljava/lang/Object;
.source "ActivityImageUtils.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "MixpanelAPI.ActImgUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHighlightColor(I)I
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p0, 0x2

    const v1, 0x3e99999a    # 0.3f

    aput v1, v0, p0

    const/16 p0, 0xf2

    invoke-static {p0, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p0

    return p0
.end method

.method public static getHighlightColorFromBackground(Landroid/app/Activity;)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v0, v1}, Lcom/mixpanel/android/util/ActivityImageUtils;->getScaledScreenshot(Landroid/app/Activity;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v1, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, -0x1000000

    :goto_0
    invoke-static {p0}, Lcom/mixpanel/android/util/ActivityImageUtils;->getHighlightColor(I)I

    move-result p0

    return p0
.end method

.method public static getHighlightColorFromBitmap(Landroid/graphics/Bitmap;)I
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0, v1, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, -0x1000000

    :goto_0
    invoke-static {p0}, Lcom/mixpanel/android/util/ActivityImageUtils;->getHighlightColor(I)I

    move-result p0

    return p0
.end method

.method public static getScaledScreenshot(Landroid/app/Activity;IIZ)Landroid/graphics/Bitmap;
    .locals 4

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->buildDrawingCache(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-lez v3, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    div-int p1, p3, p1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    div-int p2, p3, p2

    :cond_0
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    :try_start_0
    invoke-static {v1, p1, p2, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "MixpanelAPI.ActImgUtils"

    const-string p2, "Not enough memory to produce scaled image, returning a null screenshot"

    invoke-static {p1, p2}, Lcom/mixpanel/android/util/MPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_2
    return-object p1
.end method
