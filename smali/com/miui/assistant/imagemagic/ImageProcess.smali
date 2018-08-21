.class public Lcom/miui/assistant/imagemagic/ImageProcess;
.super Ljava/lang/Object;
.source "ImageProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/assistant/imagemagic/ImageProcess$Rect;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageProcess"

.field private static final areas:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/miui/assistant/imagemagic/ImageProcess$Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/miui/assistant/imagemagic/ImageProcess;->areas:Landroid/util/SparseArray;

    const-string/jumbo v0, "jni-interface-lib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sget-object v0, Lcom/miui/assistant/imagemagic/ImageProcess;->areas:Landroid/util/SparseArray;

    const/4 v1, 0x1

    new-instance v2, Lcom/miui/assistant/imagemagic/ImageProcess$Rect;

    invoke-direct {v2, v3, v4, v3, v3}, Lcom/miui/assistant/imagemagic/ImageProcess$Rect;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/miui/assistant/imagemagic/ImageProcess;->areas:Landroid/util/SparseArray;

    const/4 v1, 0x2

    new-instance v2, Lcom/miui/assistant/imagemagic/ImageProcess$Rect;

    invoke-direct {v2, v4, v4, v3, v3}, Lcom/miui/assistant/imagemagic/ImageProcess$Rect;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/miui/assistant/imagemagic/ImageProcess;->areas:Landroid/util/SparseArray;

    const/4 v1, 0x4

    new-instance v2, Lcom/miui/assistant/imagemagic/ImageProcess$Rect;

    invoke-direct {v2, v4, v3, v3, v3}, Lcom/miui/assistant/imagemagic/ImageProcess$Rect;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/miui/assistant/imagemagic/ImageProcess;->areas:Landroid/util/SparseArray;

    const/16 v1, 0x8

    new-instance v2, Lcom/miui/assistant/imagemagic/ImageProcess$Rect;

    invoke-direct {v2, v3, v3, v3, v3}, Lcom/miui/assistant/imagemagic/ImageProcess$Rect;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/miui/assistant/imagemagic/ImageProcess;->areas:Landroid/util/SparseArray;

    const/4 v1, 0x3

    new-instance v2, Lcom/miui/assistant/imagemagic/ImageProcess$Rect;

    invoke-direct {v2, v4, v4, v5, v3}, Lcom/miui/assistant/imagemagic/ImageProcess$Rect;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/miui/assistant/imagemagic/ImageProcess;->areas:Landroid/util/SparseArray;

    const/16 v1, 0xc

    new-instance v2, Lcom/miui/assistant/imagemagic/ImageProcess$Rect;

    invoke-direct {v2, v4, v3, v5, v3}, Lcom/miui/assistant/imagemagic/ImageProcess$Rect;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/miui/assistant/imagemagic/ImageProcess;->areas:Landroid/util/SparseArray;

    const/4 v1, 0x6

    new-instance v2, Lcom/miui/assistant/imagemagic/ImageProcess$Rect;

    invoke-direct {v2, v4, v4, v3, v5}, Lcom/miui/assistant/imagemagic/ImageProcess$Rect;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/miui/assistant/imagemagic/ImageProcess;->areas:Landroid/util/SparseArray;

    const/16 v1, 0x9

    new-instance v2, Lcom/miui/assistant/imagemagic/ImageProcess$Rect;

    invoke-direct {v2, v3, v4, v3, v5}, Lcom/miui/assistant/imagemagic/ImageProcess$Rect;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/miui/assistant/imagemagic/ImageProcess;->areas:Landroid/util/SparseArray;

    const/16 v1, 0xf

    new-instance v2, Lcom/miui/assistant/imagemagic/ImageProcess$Rect;

    invoke-direct {v2, v4, v4, v5, v5}, Lcom/miui/assistant/imagemagic/ImageProcess$Rect;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static singleMatch(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIZZ)Landroid/graphics/Point;
    .locals 20

    sget-object v4, Lcom/miui/assistant/imagemagic/ImageProcess;->areas:Landroid/util/SparseArray;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/miui/assistant/imagemagic/ImageProcess$Rect;

    new-instance v2, Lcom/miui/assistant/imagemagic/ImageHolder;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/miui/assistant/imagemagic/ImageHolder;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Lcom/miui/assistant/imagemagic/ImageHolder;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/miui/assistant/imagemagic/ImageHolder;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const/16 v5, 0x1b8

    const/4 v6, 0x2

    iget v4, v2, Lcom/miui/assistant/imagemagic/ImageHolder;->w:I

    int-to-float v4, v4

    move-object/from16 v0, v16

    iget v7, v0, Lcom/miui/assistant/imagemagic/ImageProcess$Rect;->x:F

    mul-float/2addr v4, v7

    float-to-int v7, v4

    iget v4, v2, Lcom/miui/assistant/imagemagic/ImageHolder;->h:I

    int-to-float v4, v4

    move-object/from16 v0, v16

    iget v8, v0, Lcom/miui/assistant/imagemagic/ImageProcess$Rect;->y:F

    mul-float/2addr v4, v8

    float-to-int v8, v4

    iget v4, v2, Lcom/miui/assistant/imagemagic/ImageHolder;->w:I

    int-to-float v4, v4

    move-object/from16 v0, v16

    iget v9, v0, Lcom/miui/assistant/imagemagic/ImageProcess$Rect;->w:F

    mul-float/2addr v4, v9

    float-to-int v9, v4

    iget v4, v2, Lcom/miui/assistant/imagemagic/ImageHolder;->h:I

    int-to-float v4, v4

    move-object/from16 v0, v16

    iget v10, v0, Lcom/miui/assistant/imagemagic/ImageProcess$Rect;->h:F

    mul-float/2addr v4, v10

    float-to-int v10, v4

    move/from16 v4, p2

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-static/range {v2 .. v12}, Lcom/miui/assistant/imagemagic/ImageProcess;->singleMatchNative(Lcom/miui/assistant/imagemagic/ImageHolder;Lcom/miui/assistant/imagemagic/ImageHolder;IIIIIIIZZ)[I

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-string/jumbo v4, "ImageProcess"

    const-string/jumbo v5, "end match inner:%d, cost:%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sub-long v8, v14, v18

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v13, :cond_0

    array-length v4, v13

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_1
    const-string/jumbo v4, "ImageProcess"

    const-string/jumbo v5, "match result:(%d,%d)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, v13, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    aget v8, v13, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/graphics/Point;

    const/4 v5, 0x0

    aget v5, v13, v5

    mul-int/lit8 v5, v5, 0x64

    iget v6, v2, Lcom/miui/assistant/imagemagic/ImageHolder;->w:I

    div-int/2addr v5, v6

    const/4 v6, 0x1

    aget v6, v13, v6

    mul-int/lit8 v6, v6, 0x64

    iget v7, v2, Lcom/miui/assistant/imagemagic/ImageHolder;->h:I

    div-int/2addr v6, v7

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method public static singleMatch(Landroid/graphics/Bitmap;Ljava/util/List;II)Landroid/graphics/Point;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II)",
            "Landroid/graphics/Point;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/miui/assistant/imagemagic/ImageProcess;->singleMatch(Landroid/graphics/Bitmap;Ljava/util/List;IIZZ)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public static singleMatch(Landroid/graphics/Bitmap;Ljava/util/List;IIZZ)Landroid/graphics/Point;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;IIZZ)",
            "Landroid/graphics/Point;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/miui/assistant/imagemagic/ImageProcess;->singleMatch(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIZZ)Landroid/graphics/Point;

    move-result-object v6

    if-eqz v6, :cond_0

    :goto_0
    return-object v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static native singleMatchNative(Lcom/miui/assistant/imagemagic/ImageHolder;Lcom/miui/assistant/imagemagic/ImageHolder;IIIIIIIZZ)[I
.end method
