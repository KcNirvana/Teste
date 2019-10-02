.class public final Lcom/google/ads/interactivemedia/v3/internal/fg;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:Lcom/google/ads/interactivemedia/v3/internal/fo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/ads/interactivemedia/v3/internal/fg;->a:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/fg;->b:[I

    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/fg;->c:[I

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/fg;->d:Lcom/google/ads/interactivemedia/v3/internal/fo;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x6
        0x6
        0x6
        0x7
        0x8
        0x8
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x1f40
        0x3e80
        0x7d00
        -0x1
        -0x1
        0x2b11
        0x5622
        0xac44
        -0x1
        -0x1
        0x2ee0
        0x5dc0
        0xbb80
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x40
        0x70
        0x80
        0xc0
        0xe0
        0x100
        0x180
        0x1c0
        0x200
        0x280
        0x300
        0x380
        0x400
        0x480
        0x500
        0x600
        0x780
        0x800
        0x900
        0xa00
        0xa80
        0xb00
        0xb07
        0xb80
        0xc00
        0xf00
        0x1000
        0x1800
        0x1e00
    .end array-data
.end method

.method public static a(Ljava/nio/ByteBuffer;)I
    .locals 2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v1, v0, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit16 p0, p0, 0xfc

    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v1

    add-int/lit8 p0, p0, 0x1

    mul-int/lit8 p0, p0, 0x20

    return p0
.end method

.method public static a([B)I
    .locals 2

    const/4 v0, 0x4

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x6

    const/4 v1, 0x5

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xfc

    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    mul-int/lit8 p0, p0, 0x20

    return p0
.end method

.method public static a([BLjava/lang/String;JLjava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/bj;
    .locals 14

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/fg;->d:Lcom/google/ads/interactivemedia/v3/internal/fo;

    move-object v1, p0

    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->a([B)V

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c(I)I

    move-result v1

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/fg;->a:[I

    aget v1, v2, v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c(I)I

    move-result v2

    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/fg;->b:[I

    aget v11, v3, v2

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c(I)I

    move-result v2

    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/fg;->c:[I

    array-length v3, v3

    const/4 v4, 0x2

    if-lt v2, v3, :cond_0

    const/4 v2, -0x1

    const/4 v6, -0x1

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/fg;->c:[I

    aget v2, v3, v2

    mul-int/lit16 v2, v2, 0x3e8

    div-int/2addr v2, v4

    move v6, v2

    :goto_0
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    add-int v10, v1, v0

    const-string v5, "audio/vnd.dts"

    const/4 v7, -0x1

    const/4 v12, 0x0

    move-object v4, p1

    move-wide/from16 v8, p2

    move-object/from16 v13, p4

    invoke-static/range {v4 .. v13}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/bj;

    move-result-object v0

    return-object v0
.end method

.method public static b([B)I
    .locals 2

    const/4 v0, 0x5

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x2

    shl-int/lit8 v0, v0, 0xc

    const/4 v1, 0x6

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    const/4 v1, 0x7

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xf0

    shr-int/lit8 p0, p0, 0x4

    or-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method
