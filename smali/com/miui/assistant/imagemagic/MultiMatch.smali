.class public Lcom/miui/assistant/imagemagic/MultiMatch;
.super Ljava/lang/Object;
.source "MultiMatch.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageProcess"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "jni-interface-lib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static array2Point([I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    array-length v2, p0

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    new-instance v2, Landroid/graphics/Point;

    aget v3, p0, v0

    add-int/lit8 v4, v0, 0x1

    aget v4, p0, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public static templateMatching(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FI)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            "FI)",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-lt v4, v5, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-lt v4, v5, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-lt v4, v6, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v4, v6, :cond_1

    :cond_0
    const-string/jumbo v4, "ImageProcess"

    const-string/jumbo v5, "Image is null or image size to small"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_1
    new-instance v2, Lcom/miui/assistant/imagemagic/ImageHolder;

    invoke-direct {v2, p0}, Lcom/miui/assistant/imagemagic/ImageHolder;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Lcom/miui/assistant/imagemagic/ImageHolder;

    invoke-direct {v3, p1}, Lcom/miui/assistant/imagemagic/ImageHolder;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v2, v3, p2, p3}, Lcom/miui/assistant/imagemagic/MultiMatch;->templateMatchingNative(Lcom/miui/assistant/imagemagic/ImageHolder;Lcom/miui/assistant/imagemagic/ImageHolder;FI)[I

    move-result-object v0

    invoke-static {v0}, Lcom/miui/assistant/imagemagic/MultiMatch;->array2Point([I)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public static native templateMatchingNative(Lcom/miui/assistant/imagemagic/ImageHolder;Lcom/miui/assistant/imagemagic/ImageHolder;FI)[I
.end method
