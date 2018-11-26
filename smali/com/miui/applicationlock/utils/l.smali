.class public Lcom/miui/applicationlock/utils/l;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static abu:Landroid/util/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/miui/applicationlock/utils/l;->abu:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static afo(Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/miui/applicationlock/utils/f;
    .locals 9

    sget-object v0, Lcom/miui/applicationlock/utils/l;->abu:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/utils/f;

    if-nez v0, :cond_1

    :try_start_0
    new-instance v1, Lcom/miui/applicationlock/utils/g;

    invoke-direct {v1}, Lcom/miui/applicationlock/utils/g;-><init>()V

    const/4 v2, 0x3

    new-array v2, v2, [I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/miui/applicationlock/utils/g;->aeJ([BII[I)V

    const/4 v1, 0x0

    aget v1, v2, v1

    const/4 v3, 0x1

    aget v3, v2, v3

    const/4 v4, 0x2

    aget v4, v2, v4

    const/16 v5, 0xb2

    invoke-static {v5, v1, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v4, v2, v4

    const/4 v5, 0x2

    aget v5, v2, v5

    const/16 v6, 0xa5

    invoke-static {v6, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, 0x1

    aget v5, v2, v5

    const/4 v6, 0x2

    aget v6, v2, v6

    const/16 v7, 0x99

    invoke-static {v7, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    const/4 v5, 0x0

    aget v5, v2, v5

    const/4 v6, 0x1

    aget v6, v2, v6

    const/4 v7, 0x2

    aget v2, v2, v7

    const/16 v7, 0x8c

    invoke-static {v7, v5, v6, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    const/4 v5, 0x4

    new-array v5, v5, [I

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1c

    if-lt v6, v7, :cond_0

    const/4 v2, 0x0

    aput v1, v5, v2

    const/4 v2, 0x1

    aput v1, v5, v2

    const/4 v2, 0x2

    aput v1, v5, v2

    const/4 v2, 0x3

    aput v1, v5, v2

    :goto_0
    invoke-static {v5}, Lcom/miui/applicationlock/utils/l;->afp([I)Z

    move-result v2

    new-instance v1, Lcom/miui/applicationlock/utils/f;

    invoke-direct {v1, v2, v5}, Lcom/miui/applicationlock/utils/f;-><init>(Z[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/miui/applicationlock/utils/l;->abu:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object v1

    :cond_0
    const/4 v6, 0x0

    :try_start_2
    aput v1, v5, v6

    const/4 v1, 0x1

    aput v3, v5, v1

    const/4 v1, 0x2

    aput v4, v5, v1

    const/4 v1, 0x3

    aput v2, v5, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_1
    move-object v1, v0

    goto :goto_1
.end method

.method private static afp([I)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v4, 0x64

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v2, v3, p0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v1, v1, v4, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-static {v3, v0}, Lmiui/graphics/BitmapFactory;->getBitmapColorMode(Landroid/graphics/Bitmap;I)I

    move-result v2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
