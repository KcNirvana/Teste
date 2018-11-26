.class Lcom/miui/common/customview/gif/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private axA:I

.field private axB:Lcom/miui/common/customview/gif/d;

.field private axC:Z

.field private axD:[B

.field private axE:[I

.field private axF:Lcom/miui/common/customview/gif/b;

.field private axG:[B

.field private axH:[S

.field private axI:Landroid/graphics/Bitmap;

.field private axJ:Ljava/nio/ByteBuffer;

.field private axK:Z

.field private axL:[B

.field private axM:[B

.field private axN:I

.field private axO:I

.field private axv:[I

.field private axw:Lcom/miui/common/customview/gif/f;

.field private axx:[B

.field private axy:I

.field private axz:I

.field private sampleSize:I

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/common/customview/gif/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/common/customview/gif/e;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    new-instance v0, Lcom/miui/common/customview/gif/c;

    invoke-direct {v0}, Lcom/miui/common/customview/gif/c;-><init>()V

    invoke-direct {p0, v0}, Lcom/miui/common/customview/gif/e;-><init>(Lcom/miui/common/customview/gif/f;)V

    return-void
.end method

.method constructor <init>(Lcom/miui/common/customview/gif/f;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/miui/common/customview/gif/e;->axO:I

    iput v0, p0, Lcom/miui/common/customview/gif/e;->axN:I

    iput-object p1, p0, Lcom/miui/common/customview/gif/e;->axw:Lcom/miui/common/customview/gif/f;

    new-instance v0, Lcom/miui/common/customview/gif/d;

    invoke-direct {v0}, Lcom/miui/common/customview/gif/d;-><init>()V

    iput-object v0, p0, Lcom/miui/common/customview/gif/e;->axB:Lcom/miui/common/customview/gif/d;

    return-void
.end method

.method private aFk(III)I
    .locals 9

    const/4 v2, 0x0

    move v0, p1

    move v1, v2

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    :goto_0
    iget v7, p0, Lcom/miui/common/customview/gif/e;->sampleSize:I

    add-int/2addr v7, p1

    if-ge v0, v7, :cond_1

    iget-object v7, p0, Lcom/miui/common/customview/gif/e;->axD:[B

    array-length v7, v7

    if-ge v0, v7, :cond_1

    if-ge v0, p2, :cond_1

    iget-object v7, p0, Lcom/miui/common/customview/gif/e;->axD:[B

    aget-byte v7, v7, v0

    and-int/lit16 v7, v7, 0xff

    iget-object v8, p0, Lcom/miui/common/customview/gif/e;->axv:[I

    aget v7, v8, v7

    if-eqz v7, :cond_0

    shr-int/lit8 v8, v7, 0x18

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v6, v8

    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v5, v8

    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v4, v8

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v3, v7

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int v0, p1, p3

    :goto_1
    add-int v7, p1, p3

    iget v8, p0, Lcom/miui/common/customview/gif/e;->sampleSize:I

    add-int/2addr v7, v8

    if-ge v0, v7, :cond_3

    iget-object v7, p0, Lcom/miui/common/customview/gif/e;->axD:[B

    array-length v7, v7

    if-ge v0, v7, :cond_3

    if-ge v0, p2, :cond_3

    iget-object v7, p0, Lcom/miui/common/customview/gif/e;->axD:[B

    aget-byte v7, v7, v0

    and-int/lit16 v7, v7, 0xff

    iget-object v8, p0, Lcom/miui/common/customview/gif/e;->axv:[I

    aget v7, v8, v7

    if-eqz v7, :cond_2

    shr-int/lit8 v8, v7, 0x18

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v6, v8

    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v5, v8

    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v4, v8

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v3, v7

    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    return v2

    :cond_4
    div-int v0, v6, v1

    shl-int/lit8 v0, v0, 0x18

    div-int v2, v5, v1

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    div-int v2, v4, v1

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    div-int v1, v3, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private aFl(Lcom/miui/common/customview/gif/g;)V
    .locals 21

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/miui/common/customview/gif/e;->axO:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/miui/common/customview/gif/e;->axN:I

    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/common/customview/gif/e;->axJ:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/miui/common/customview/gif/g;->axZ:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    if-nez p1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/common/customview/gif/e;->axB:Lcom/miui/common/customview/gif/d;

    iget v1, v1, Lcom/miui/common/customview/gif/d;->width:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/common/customview/gif/e;->axB:Lcom/miui/common/customview/gif/d;

    iget v2, v2, Lcom/miui/common/customview/gif/d;->height:I

    :goto_0
    mul-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/common/customview/gif/e;->axD:[B

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/common/customview/gif/e;->axD:[B

    array-length v2, v2

    if-ge v2, v1, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/common/customview/gif/e;->axw:Lcom/miui/common/customview/gif/f;

    invoke-interface {v2, v1}, Lcom/miui/common/customview/gif/f;->aFc(I)[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/common/customview/gif/e;->axD:[B

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/common/customview/gif/e;->axH:[S

    if-nez v2, :cond_3

    const/16 v2, 0x1000

    new-array v2, v2, [S

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/common/customview/gif/e;->axH:[S

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/common/customview/gif/e;->axL:[B

    if-nez v2, :cond_4

    const/16 v2, 0x1000

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/common/customview/gif/e;->axL:[B

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/common/customview/gif/e;->axG:[B

    if-nez v2, :cond_5

    const/16 v2, 0x1001

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/common/customview/gif/e;->axG:[B

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/miui/common/customview/gif/e;->aFq()I

    move-result v16

    const/4 v2, 0x1

    shl-int v17, v2, v16

    add-int/lit8 v18, v17, 0x1

    add-int/lit8 v11, v17, 0x2

    const/4 v12, -0x1

    add-int/lit8 v9, v16, 0x1

    const/4 v2, 0x1

    shl-int/2addr v2, v9

    add-int/lit8 v8, v2, -0x1

    const/4 v2, 0x0

    :goto_1
    move/from16 v0, v17

    if-ge v2, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/common/customview/gif/e;->axH:[S

    const/4 v4, 0x0

    aput-short v4, v3, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/common/customview/gif/e;->axL:[B

    int-to-byte v4, v2

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    move-object/from16 v0, p1

    iget v1, v0, Lcom/miui/common/customview/gif/g;->axV:I

    move-object/from16 v0, p1

    iget v2, v0, Lcom/miui/common/customview/gif/g;->axW:I

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v1, :cond_8

    if-nez v2, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/miui/common/customview/gif/e;->aFp()I

    move-result v2

    if-gtz v2, :cond_9

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/miui/common/customview/gif/e;->status:I

    :cond_8
    move v2, v4

    :goto_3
    if-ge v2, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/common/customview/gif/e;->axD:[B

    const/4 v4, 0x0

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/common/customview/gif/e;->axx:[B

    aget-byte v14, v14, v3

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v6

    add-int/2addr v5, v14

    add-int/lit8 v6, v6, 0x8

    add-int/lit8 v15, v3, 0x1

    add-int/lit8 v14, v2, -0x1

    move v2, v8

    move v3, v9

    move v9, v4

    move v4, v11

    move v11, v13

    :goto_4
    if-lt v6, v3, :cond_c

    and-int v13, v5, v2

    shr-int/2addr v5, v3

    sub-int/2addr v6, v3

    move/from16 v0, v17

    if-ne v13, v0, :cond_b

    add-int/lit8 v3, v16, 0x1

    const/4 v2, 0x1

    shl-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v4, v17, 0x2

    const/4 v13, -0x1

    move v12, v13

    goto :goto_4

    :cond_b
    if-le v13, v4, :cond_d

    const/4 v8, 0x3

    move-object/from16 v0, p0

    iput v8, v0, Lcom/miui/common/customview/gif/e;->status:I

    :cond_c
    move v13, v11

    move v8, v2

    move v2, v14

    move v11, v4

    move v4, v9

    move v9, v3

    move v3, v15

    goto :goto_2

    :cond_d
    move/from16 v0, v18

    if-eq v13, v0, :cond_c

    const/4 v8, -0x1

    if-ne v12, v8, :cond_e

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/common/customview/gif/e;->axG:[B

    add-int/lit8 v8, v10, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/common/customview/gif/e;->axL:[B

    aget-byte v12, v12, v13

    aput-byte v12, v11, v10

    move v11, v13

    move v10, v8

    move v12, v13

    goto :goto_4

    :cond_e
    if-lt v13, v4, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/common/customview/gif/e;->axG:[B

    move-object/from16 v19, v0

    add-int/lit8 v8, v10, 0x1

    int-to-byte v11, v11

    aput-byte v11, v19, v10

    move v10, v8

    move v11, v12

    :goto_5
    move/from16 v0, v17

    if-lt v11, v0, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/common/customview/gif/e;->axG:[B

    move-object/from16 v19, v0

    add-int/lit8 v8, v10, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/common/customview/gif/e;->axL:[B

    move-object/from16 v20, v0

    aget-byte v20, v20, v11

    aput-byte v20, v19, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/common/customview/gif/e;->axH:[S

    aget-short v10, v10, v11

    move v11, v10

    move v10, v8

    goto :goto_5

    :cond_f
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miui/common/customview/gif/e;->axL:[B

    aget-byte v8, v8, v11

    and-int/lit16 v11, v8, 0xff

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/common/customview/gif/e;->axG:[B

    move-object/from16 v19, v0

    add-int/lit8 v8, v10, 0x1

    int-to-byte v0, v11

    move/from16 v20, v0

    aput-byte v20, v19, v10

    const/16 v10, 0x1000

    if-ge v4, v10, :cond_10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/common/customview/gif/e;->axH:[S

    int-to-short v12, v12

    aput-short v12, v10, v4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/common/customview/gif/e;->axL:[B

    int-to-byte v12, v11

    aput-byte v12, v10, v4

    add-int/lit8 v4, v4, 0x1

    and-int v10, v4, v2

    if-nez v10, :cond_10

    const/16 v10, 0x1000

    if-ge v4, v10, :cond_10

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v4

    :cond_10
    :goto_6
    if-lez v8, :cond_11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/common/customview/gif/e;->axD:[B

    add-int/lit8 v10, v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/common/customview/gif/e;->axG:[B

    move-object/from16 v19, v0

    add-int/lit8 v8, v8, -0x1

    aget-byte v19, v19, v8

    aput-byte v19, v12, v9

    add-int/lit8 v7, v7, 0x1

    move v9, v10

    goto :goto_6

    :cond_11
    move v10, v8

    move v12, v13

    goto/16 :goto_4

    :cond_12
    return-void

    :cond_13
    move v11, v13

    goto :goto_5
.end method

.method private aFn()Lcom/miui/common/customview/gif/b;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/customview/gif/e;->axF:Lcom/miui/common/customview/gif/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/common/customview/gif/b;

    invoke-direct {v0}, Lcom/miui/common/customview/gif/b;-><init>()V

    iput-object v0, p0, Lcom/miui/common/customview/gif/e;->axF:Lcom/miui/common/customview/gif/b;

    :cond_0
    iget-object v0, p0, Lcom/miui/common/customview/gif/e;->axF:Lcom/miui/common/customview/gif/b;

    return-object v0
.end method

.method private aFo()Landroid/graphics/Bitmap;
    .locals 4

    iget-boolean v0, p0, Lcom/miui/common/customview/gif/e;->axC:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    iget-object v1, p0, Lcom/miui/common/customview/gif/e;->axw:Lcom/miui/common/customview/gif/f;

    iget v2, p0, Lcom/miui/common/customview/gif/e;->axz:I

    iget v3, p0, Lcom/miui/common/customview/gif/e;->axy:I

    invoke-interface {v1, v2, v3, v0}, Lcom/miui/common/customview/gif/f;->aFb(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/customview/gif/e;->aFs(Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private aFp()I
    .locals 7

    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/miui/common/customview/gif/e;->aFq()I

    move-result v1

    if-lez v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/miui/common/customview/gif/e;->axx:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/customview/gif/e;->axw:Lcom/miui/common/customview/gif/f;

    const/16 v2, 0xff

    invoke-interface {v0, v2}, Lcom/miui/common/customview/gif/f;->aFc(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/customview/gif/e;->axx:[B

    :cond_0
    iget v0, p0, Lcom/miui/common/customview/gif/e;->axO:I

    iget v2, p0, Lcom/miui/common/customview/gif/e;->axN:I

    sub-int/2addr v0, v2

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/common/customview/gif/e;->axM:[B

    iget v2, p0, Lcom/miui/common/customview/gif/e;->axN:I

    iget-object v3, p0, Lcom/miui/common/customview/gif/e;->axx:[B

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget v0, p0, Lcom/miui/common/customview/gif/e;->axN:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/common/customview/gif/e;->axN:I

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v2, p0, Lcom/miui/common/customview/gif/e;->axJ:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    iget-object v2, p0, Lcom/miui/common/customview/gif/e;->axM:[B

    iget v3, p0, Lcom/miui/common/customview/gif/e;->axN:I

    iget-object v4, p0, Lcom/miui/common/customview/gif/e;->axx:[B

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget v2, p0, Lcom/miui/common/customview/gif/e;->axO:I

    iput v2, p0, Lcom/miui/common/customview/gif/e;->axN:I

    invoke-direct {p0}, Lcom/miui/common/customview/gif/e;->aFr()V

    sub-int v2, v1, v0

    iget-object v3, p0, Lcom/miui/common/customview/gif/e;->axM:[B

    iget-object v4, p0, Lcom/miui/common/customview/gif/e;->axx:[B

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v0, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget v0, p0, Lcom/miui/common/customview/gif/e;->axN:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/miui/common/customview/gif/e;->axN:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/miui/common/customview/gif/e;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error Reading Block"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput v6, p0, Lcom/miui/common/customview/gif/e;->status:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/miui/common/customview/gif/e;->status:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private aFq()I
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/miui/common/customview/gif/e;->aFr()V

    iget-object v0, p0, Lcom/miui/common/customview/gif/e;->axM:[B

    iget v1, p0, Lcom/miui/common/customview/gif/e;->axN:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/miui/common/customview/gif/e;->axN:I

    aget-byte v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/common/customview/gif/e;->status:I

    const/4 v0, 0x0

    return v0
.end method

.method private aFr()V
    .locals 4

    const/16 v2, 0x4000

    const/4 v3, 0x0

    iget v0, p0, Lcom/miui/common/customview/gif/e;->axO:I

    iget v1, p0, Lcom/miui/common/customview/gif/e;->axN:I

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/common/customview/gif/e;->axM:[B

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/common/customview/gif/e;->axw:Lcom/miui/common/customview/gif/f;

    invoke-interface {v0, v2}, Lcom/miui/common/customview/gif/f;->aFc(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/customview/gif/e;->axM:[B

    :cond_1
    iput v3, p0, Lcom/miui/common/customview/gif/e;->axN:I

    iget-object v0, p0, Lcom/miui/common/customview/gif/e;->axJ:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/miui/common/customview/gif/e;->axO:I

    iget-object v0, p0, Lcom/miui/common/customview/gif/e;->axJ:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/miui/common/customview/gif/e;->axM:[B

    iget v2, p0, Lcom/miui/common/customview/gif/e;->axO:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private static aFs(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    :cond_0
    return-void
.end method

.method private aFw(Lcom/miui/common/customview/gif/g;Lcom/miui/common/customview/gif/g;)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/common/customview/gif/e;->axE:[I

    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    iget v1, v0, Lcom/miui/common/customview/gif/g;->axP:I

    if-lez v1, :cond_1

    move-object/from16 v0, p2

    iget v1, v0, Lcom/miui/common/customview/gif/g;->axP:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    const/4 v1, 0x0

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/miui/common/customview/gif/g;->axQ:Z

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/common/customview/gif/e;->axB:Lcom/miui/common/customview/gif/d;

    iget v1, v1, Lcom/miui/common/customview/gif/d;->axs:I

    :cond_0
    :goto_0
    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_1
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/miui/common/customview/gif/e;->aFl(Lcom/miui/common/customview/gif/g;)V

    move-object/from16 v0, p1

    iget v1, v0, Lcom/miui/common/customview/gif/g;->axW:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/common/customview/gif/e;->sampleSize:I

    div-int v10, v1, v3

    move-object/from16 v0, p1

    iget v1, v0, Lcom/miui/common/customview/gif/g;->axU:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/common/customview/gif/e;->sampleSize:I

    div-int v11, v1, v3

    move-object/from16 v0, p1

    iget v1, v0, Lcom/miui/common/customview/gif/g;->axV:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/common/customview/gif/e;->sampleSize:I

    div-int v12, v1, v3

    move-object/from16 v0, p1

    iget v1, v0, Lcom/miui/common/customview/gif/g;->axT:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/common/customview/gif/e;->sampleSize:I

    div-int v13, v1, v3

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/common/customview/gif/e;->axA:I

    if-nez v1, :cond_7

    const/4 v1, 0x1

    :goto_2
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v10, :cond_a

    move-object/from16 v0, p1

    iget-boolean v7, v0, Lcom/miui/common/customview/gif/g;->axX:Z

    if-eqz v7, :cond_e

    if-lt v3, v10, :cond_2

    add-int/lit8 v5, v5, 0x1

    packed-switch v5, :pswitch_data_0

    :cond_2
    :goto_4
    add-int v7, v3, v4

    move/from16 v16, v7

    move v7, v5

    move v5, v4

    move/from16 v4, v16

    :goto_5
    add-int/2addr v3, v11

    move-object/from16 v0, p0

    iget v8, v0, Lcom/miui/common/customview/gif/e;->axy:I

    if-ge v3, v8, :cond_9

    move-object/from16 v0, p0

    iget v8, v0, Lcom/miui/common/customview/gif/e;->axz:I

    mul-int/2addr v8, v3

    add-int v9, v8, v13

    add-int v3, v9, v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/miui/common/customview/gif/e;->axz:I

    add-int/2addr v14, v8

    if-ge v14, v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/common/customview/gif/e;->axz:I

    add-int/2addr v3, v8

    :cond_3
    move-object/from16 v0, p0

    iget v8, v0, Lcom/miui/common/customview/gif/e;->sampleSize:I

    mul-int/2addr v8, v6

    move-object/from16 v0, p1

    iget v14, v0, Lcom/miui/common/customview/gif/g;->axV:I

    mul-int/2addr v8, v14

    sub-int v14, v3, v9

    move-object/from16 v0, p0

    iget v15, v0, Lcom/miui/common/customview/gif/e;->sampleSize:I

    mul-int/2addr v14, v15

    add-int/2addr v14, v8

    :goto_6
    if-ge v9, v3, :cond_9

    move-object/from16 v0, p1

    iget v15, v0, Lcom/miui/common/customview/gif/g;->axV:I

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14, v15}, Lcom/miui/common/customview/gif/e;->aFk(III)I

    move-result v15

    if-eqz v15, :cond_8

    aput v15, v2, v9

    :cond_4
    :goto_7
    move-object/from16 v0, p0

    iget v15, v0, Lcom/miui/common/customview/gif/e;->sampleSize:I

    add-int/2addr v8, v15

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/common/customview/gif/e;->axA:I

    if-nez v3, :cond_0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/miui/common/customview/gif/e;->axC:Z

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p2

    iget v1, v0, Lcom/miui/common/customview/gif/g;->axP:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/common/customview/gif/e;->axI:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/common/customview/gif/e;->axI:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/miui/common/customview/gif/e;->axz:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/miui/common/customview/gif/e;->axz:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/miui/common/customview/gif/e;->axy:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    goto/16 :goto_1

    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_2

    :pswitch_0
    const/4 v3, 0x4

    goto/16 :goto_4

    :pswitch_1
    const/4 v3, 0x2

    const/4 v4, 0x4

    goto/16 :goto_4

    :pswitch_2
    const/4 v3, 0x1

    const/4 v4, 0x2

    goto/16 :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/miui/common/customview/gif/e;->axC:Z

    if-nez v15, :cond_4

    if-eqz v1, :cond_4

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/miui/common/customview/gif/e;->axC:Z

    goto :goto_7

    :cond_9
    add-int/lit8 v6, v6, 0x1

    move v3, v4

    move v4, v5

    move v5, v7

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/miui/common/customview/gif/e;->axK:Z

    if-eqz v1, :cond_d

    move-object/from16 v0, p1

    iget v1, v0, Lcom/miui/common/customview/gif/g;->axP:I

    if-eqz v1, :cond_b

    move-object/from16 v0, p1

    iget v1, v0, Lcom/miui/common/customview/gif/g;->axP:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_d

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/common/customview/gif/e;->axI:Landroid/graphics/Bitmap;

    if-nez v1, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/miui/common/customview/gif/e;->aFo()Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/miui/common/customview/gif/e;->axI:Landroid/graphics/Bitmap;

    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/common/customview/gif/e;->axI:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/miui/common/customview/gif/e;->axz:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/miui/common/customview/gif/e;->axz:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/miui/common/customview/gif/e;->axy:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/miui/common/customview/gif/e;->aFo()Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/miui/common/customview/gif/e;->axz:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/miui/common/customview/gif/e;->axz:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/miui/common/customview/gif/e;->axy:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v1

    :cond_e
    move v7, v5

    move v5, v4

    move v4, v3

    move v3, v6

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method aFe()V
    .locals 2

    iget v0, p0, Lcom/miui/common/customview/gif/e;->axA:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/miui/common/customview/gif/e;->axB:Lcom/miui/common/customview/gif/d;

    iget v1, v1, Lcom/miui/common/customview/gif/d;->axm:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/miui/common/customview/gif/e;->axA:I

    return-void
.end method

.method declared-synchronized aFf()Landroid/graphics/Bitmap;
    .locals 8

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/common/customview/gif/e;->axB:Lcom/miui/common/customview/gif/d;

    iget v0, v0, Lcom/miui/common/customview/gif/d;->axm:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/common/customview/gif/e;->axA:I

    if-gez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/miui/common/customview/gif/e;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/common/customview/gif/e;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to decode frame, frameCount="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/common/customview/gif/e;->axB:Lcom/miui/common/customview/gif/d;

    iget v3, v3, Lcom/miui/common/customview/gif/d;->axm:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " framePointer="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/miui/common/customview/gif/e;->axA:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/common/customview/gif/e;->status:I

    :cond_2
    iget v0, p0, Lcom/miui/common/customview/gif/e;->status:I

    if-eq v0, v4, :cond_3

    iget v0, p0, Lcom/miui/common/customview/gif/e;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    :cond_3
    sget-object v0, Lcom/miui/common/customview/gif/e;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/miui/common/customview/gif/e;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to decode frame, status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/common/customview/gif/e;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-object v7

    :cond_5
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/miui/common/customview/gif/e;->status:I

    iget-object v0, p0, Lcom/miui/common/customview/gif/e;->axB:Lcom/miui/common/customview/gif/d;

    iget-object v0, v0, Lcom/miui/common/customview/gif/d;->axo:Ljava/util/List;

    iget v1, p0, Lcom/miui/common/customview/gif/e;->axA:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/customview/gif/g;

    iget v1, p0, Lcom/miui/common/customview/gif/e;->axA:I

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_8

    iget-object v3, p0, Lcom/miui/common/customview/gif/e;->axB:Lcom/miui/common/customview/gif/d;

    iget-object v3, v3, Lcom/miui/common/customview/gif/d;->axo:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/common/customview/gif/g;

    move-object v3, v1

    :goto_0
    iget-object v1, p0, Lcom/miui/common/customview/gif/e;->axB:Lcom/miui/common/customview/gif/d;

    iget v4, v1, Lcom/miui/common/customview/gif/d;->axs:I

    iget-object v1, v0, Lcom/miui/common/customview/gif/g;->axY:[I

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/miui/common/customview/gif/e;->axB:Lcom/miui/common/customview/gif/d;

    iget-object v1, v1, Lcom/miui/common/customview/gif/d;->axq:[I

    iput-object v1, p0, Lcom/miui/common/customview/gif/e;->axv:[I

    :cond_6
    :goto_1
    iget-boolean v1, v0, Lcom/miui/common/customview/gif/g;->axQ:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/miui/common/customview/gif/e;->axv:[I

    iget v2, v0, Lcom/miui/common/customview/gif/g;->axS:I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/miui/common/customview/gif/e;->axv:[I

    iget v5, v0, Lcom/miui/common/customview/gif/g;->axS:I

    const/4 v6, 0x0

    aput v6, v2, v5

    :goto_2
    iget-object v2, p0, Lcom/miui/common/customview/gif/e;->axv:[I

    if-nez v2, :cond_a

    sget-object v0, Lcom/miui/common/customview/gif/e;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/miui/common/customview/gif/e;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "No Valid Color Table"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/common/customview/gif/e;->status:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v7

    :cond_8
    :try_start_2
    iget-object v1, p0, Lcom/miui/common/customview/gif/e;->axB:Lcom/miui/common/customview/gif/d;

    iget-object v1, v1, Lcom/miui/common/customview/gif/d;->axo:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/common/customview/gif/e;->aFi()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/common/customview/gif/g;

    move-object v3, v1

    goto :goto_0

    :cond_9
    iget-object v1, v0, Lcom/miui/common/customview/gif/g;->axY:[I

    iput-object v1, p0, Lcom/miui/common/customview/gif/e;->axv:[I

    iget-object v1, p0, Lcom/miui/common/customview/gif/e;->axB:Lcom/miui/common/customview/gif/d;

    iget v1, v1, Lcom/miui/common/customview/gif/d;->axt:I

    iget v5, v0, Lcom/miui/common/customview/gif/g;->axS:I

    if-ne v1, v5, :cond_6

    iget-object v1, p0, Lcom/miui/common/customview/gif/e;->axB:Lcom/miui/common/customview/gif/d;

    const/4 v5, 0x0

    iput v5, v1, Lcom/miui/common/customview/gif/d;->axs:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_a
    :try_start_3
    invoke-direct {p0, v0, v3}, Lcom/miui/common/customview/gif/e;->aFw(Lcom/miui/common/customview/gif/g;Lcom/miui/common/customview/gif/g;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-boolean v3, v0, Lcom/miui/common/customview/gif/g;->axQ:Z

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/miui/common/customview/gif/e;->axv:[I

    iget v0, v0, Lcom/miui/common/customview/gif/g;->axS:I

    aput v1, v3, v0

    :cond_b
    iget-object v0, p0, Lcom/miui/common/customview/gif/e;->axB:Lcom/miui/common/customview/gif/d;

    iput v4, v0, Lcom/miui/common/customview/gif/d;->axs:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_c
    move v1, v2

    goto :goto_2
.end method

.method aFg()I
    .locals 1

    iget-object v0, p0, Lcom/miui/common/customview/gif/e;->axB:Lcom/miui/common/customview/gif/d;

    iget v0, v0, Lcom/miui/common/customview/gif/d;->width:I

    return v0
.end method

.method aFh()I
    .locals 1

    iget-object v0, p0, Lcom/miui/common/customview/gif/e;->axB:Lcom/miui/common/customview/gif/d;

    iget v0, v0, Lcom/miui/common/customview/gif/d;->height:I

    return v0
.end method

.method aFi()I
    .locals 1

    iget-object v0, p0, Lcom/miui/common/customview/gif/e;->axB:Lcom/miui/common/customview/gif/d;

    iget v0, v0, Lcom/miui/common/customview/gif/d;->axm:I

    return v0
.end method

.method aFj()I
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/common/customview/gif/e;->axB:Lcom/miui/common/customview/gif/d;

    iget v0, v0, Lcom/miui/common/customview/gif/d;->axm:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/common/customview/gif/e;->axA:I

    if-gez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lcom/miui/common/customview/gif/e;->axA:I

    invoke-virtual {p0, v0}, Lcom/miui/common/customview/gif/e;->aFm(I)I

    move-result v0

    return v0
.end method

.method aFm(I)I
    .locals 2

    const/4 v0, -0x1

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/miui/common/customview/gif/e;->axB:Lcom/miui/common/customview/gif/d;

    iget v1, v1, Lcom/miui/common/customview/gif/d;->axm:I

    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lcom/miui/common/customview/gif/e;->axB:Lcom/miui/common/customview/gif/d;

    iget-object v0, v0, Lcom/miui/common/customview/gif/d;->axo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/customview/gif/g;

    iget v0, v0, Lcom/miui/common/customview/gif/g;->axR:I

    :cond_0
    return v0
.end method

.method declared-synchronized aFt(Lcom/miui/common/customview/gif/d;[B)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/common/customview/gif/e;->aFu(Lcom/miui/common/customview/gif/d;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized aFu(Lcom/miui/common/customview/gif/d;Ljava/nio/ByteBuffer;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/common/customview/gif/e;->aFv(Lcom/miui/common/customview/gif/d;Ljava/nio/ByteBuffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized aFv(Lcom/miui/common/customview/gif/d;Ljava/nio/ByteBuffer;I)V
    .locals 4

    monitor-enter p0

    if-gtz p3, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sample size must be >=0, not: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-static {p3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/common/customview/gif/e;->status:I

    iput-object p1, p0, Lcom/miui/common/customview/gif/e;->axB:Lcom/miui/common/customview/gif/d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/common/customview/gif/e;->axC:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/common/customview/gif/e;->axA:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/customview/gif/e;->axJ:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/miui/common/customview/gif/e;->axJ:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/miui/common/customview/gif/e;->axJ:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/common/customview/gif/e;->axK:Z

    iget-object v0, p1, Lcom/miui/common/customview/gif/d;->axo:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/customview/gif/g;

    iget v0, v0, Lcom/miui/common/customview/gif/g;->axP:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/common/customview/gif/e;->axK:Z

    :cond_2
    iput v1, p0, Lcom/miui/common/customview/gif/e;->sampleSize:I

    iget-object v0, p0, Lcom/miui/common/customview/gif/e;->axw:Lcom/miui/common/customview/gif/f;

    iget v2, p1, Lcom/miui/common/customview/gif/d;->width:I

    iget v3, p1, Lcom/miui/common/customview/gif/d;->height:I

    mul-int/2addr v2, v3

    invoke-interface {v0, v2}, Lcom/miui/common/customview/gif/f;->aFc(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/customview/gif/e;->axD:[B

    iget-object v0, p0, Lcom/miui/common/customview/gif/e;->axw:Lcom/miui/common/customview/gif/f;

    iget v2, p1, Lcom/miui/common/customview/gif/d;->width:I

    div-int/2addr v2, v1

    iget v3, p1, Lcom/miui/common/customview/gif/d;->height:I

    div-int/2addr v3, v1

    mul-int/2addr v2, v3

    invoke-interface {v0, v2}, Lcom/miui/common/customview/gif/f;->aFd(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/customview/gif/e;->axE:[I

    iget v0, p1, Lcom/miui/common/customview/gif/d;->width:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/miui/common/customview/gif/e;->axz:I

    iget v0, p1, Lcom/miui/common/customview/gif/d;->height:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/miui/common/customview/gif/e;->axy:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method declared-synchronized read([B)I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/miui/common/customview/gif/e;->aFn()Lcom/miui/common/customview/gif/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/common/customview/gif/b;->aEY([B)Lcom/miui/common/customview/gif/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/common/customview/gif/b;->parseHeader()Lcom/miui/common/customview/gif/d;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/customview/gif/e;->axB:Lcom/miui/common/customview/gif/d;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/common/customview/gif/e;->axB:Lcom/miui/common/customview/gif/d;

    invoke-virtual {p0, v0, p1}, Lcom/miui/common/customview/gif/e;->aFt(Lcom/miui/common/customview/gif/d;[B)V

    :cond_0
    iget v0, p0, Lcom/miui/common/customview/gif/e;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
