.class public final Lcom/google/ads/interactivemedia/v3/internal/ff;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field private static final a:[B

.field private static final b:[I

.field private static final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/ff;->a:[B

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/ff;->b:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/ff;->c:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 4
        0x17700
        0x15888
        0xfa00
        0xbb80
        0xac44
        0x7d00
        0x5dc0
        0x5622
        0x3e80
        0x2ee0
        0x2b11
        0x1f40
        0x1cb6
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        0x7
        0x8
        -0x1
        0x8
        -0x1
    .end array-data
.end method

.method public static a([B)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/fo;-><init>([B)V

    const/4 p0, 0x5

    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c(I)I

    move-result v3

    const/16 v4, 0xd

    const/16 v5, 0x18

    const/16 v6, 0xf

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v3, v6, :cond_0

    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c(I)I

    move-result v3

    goto :goto_1

    :cond_0
    if-ge v3, v4, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_0
    invoke-static {v9}, Lcom/google/ads/interactivemedia/v3/internal/fe;->a(Z)V

    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/ff;->b:[I

    aget v3, v9, v3

    :goto_1
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c(I)I

    move-result v9

    if-eq v1, p0, :cond_2

    const/16 v10, 0x1d

    if-ne v1, v10, :cond_5

    :cond_2
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c(I)I

    move-result v1

    if-ne v1, v6, :cond_3

    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c(I)I

    move-result v1

    :goto_2
    move v3, v1

    goto :goto_4

    :cond_3
    if-ge v1, v4, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/fe;->a(Z)V

    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/ff;->b:[I

    aget v1, v3, v1

    goto :goto_2

    :goto_4
    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c(I)I

    move-result p0

    const/16 v1, 0x16

    if-ne p0, v1, :cond_5

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c(I)I

    move-result v9

    :cond_5
    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/ff;->c:[I

    aget p0, p0, v9

    const/4 v0, -0x1

    if-eq p0, v0, :cond_6

    const/4 v7, 0x1

    :cond_6
    invoke-static {v7}, Lcom/google/ads/interactivemedia/v3/internal/fe;->a(Z)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static a(III)[B
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    shl-int/lit8 p0, p0, 0x3

    and-int/lit16 p0, p0, 0xf8

    shr-int/lit8 v1, p1, 0x1

    and-int/lit8 v1, v1, 0x7

    or-int/2addr p0, v1

    int-to-byte p0, p0

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    shl-int/lit8 p0, p1, 0x7

    and-int/lit16 p0, p0, 0x80

    shl-int/lit8 p1, p2, 0x3

    and-int/lit8 p1, p1, 0x78

    or-int/2addr p0, p1

    int-to-byte p0, p0

    const/4 p1, 0x1

    aput-byte p0, v0, p1

    return-object v0
.end method

.method public static a([BII)[B
    .locals 4

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ff;->a:[B

    array-length v0, v0

    add-int/2addr v0, p2

    new-array v0, v0, [B

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/ff;->a:[B

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/ff;->a:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/ff;->a:[B

    array-length v1, v1

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
