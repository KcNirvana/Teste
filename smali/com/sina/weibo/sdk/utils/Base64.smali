.class public final Lcom/sina/weibo/sdk/utils/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static alphabet:[C

.field private static codes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x100

    const-string/jumbo v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/sina/weibo/sdk/utils/Base64;->alphabet:[C

    new-array v1, v3, [B

    sput-object v1, Lcom/sina/weibo/sdk/utils/Base64;->codes:[B

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-le v0, v1, :cond_1

    const/16 v0, 0x61

    :goto_2
    const/16 v1, 0x7a

    if-le v0, v1, :cond_2

    const/16 v0, 0x30

    :goto_3
    const/16 v1, 0x39

    if-le v0, v1, :cond_3

    sget-object v1, Lcom/sina/weibo/sdk/utils/Base64;->codes:[B

    const/16 v2, 0x2b

    const/16 v3, 0x3e

    aput-byte v3, v1, v2

    sget-object v1, Lcom/sina/weibo/sdk/utils/Base64;->codes:[B

    const/16 v2, 0x2f

    const/16 v3, 0x3f

    aput-byte v3, v1, v2

    return-void

    :cond_0
    sget-object v1, Lcom/sina/weibo/sdk/utils/Base64;->codes:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sina/weibo/sdk/utils/Base64;->codes:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/sina/weibo/sdk/utils/Base64;->codes:[B

    add-int/lit8 v2, v0, 0x1a

    add-int/lit8 v2, v2, -0x61

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/sina/weibo/sdk/utils/Base64;->codes:[B

    add-int/lit8 v2, v0, 0x34

    add-int/lit8 v2, v2, -0x30

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([B)[B
    .locals 11

    const/16 v10, 0x3d

    array-length v8, p0

    add-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x4

    mul-int/lit8 v4, v8, 0x3

    array-length v8, p0

    if-lez v8, :cond_0

    array-length v8, p0

    add-int/lit8 v8, v8, -0x1

    aget-byte v8, p0, v8

    if-ne v8, v10, :cond_0

    add-int/lit8 v4, v4, -0x1

    :cond_0
    array-length v8, p0

    const/4 v9, 0x1

    if-le v8, v9, :cond_1

    array-length v8, p0

    add-int/lit8 v8, v8, -0x2

    aget-byte v8, p0, v8

    if-ne v8, v10, :cond_1

    add-int/lit8 v4, v4, -0x1

    :cond_1
    new-array v5, v4, [B

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v8, p0

    if-lt v3, v8, :cond_2

    array-length v8, v5

    if-eq v1, v8, :cond_4

    new-instance v8, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "miscalculated data length!"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    sget-object v8, Lcom/sina/weibo/sdk/utils/Base64;->codes:[B

    aget-byte v9, p0, v3

    and-int/lit16 v9, v9, 0xff

    aget-byte v7, v8, v9

    if-ltz v7, :cond_3

    shl-int/lit8 v0, v0, 0x6

    add-int/lit8 v6, v6, 0x6

    or-int/2addr v0, v7

    const/16 v8, 0x8

    if-lt v6, v8, :cond_3

    add-int/lit8 v6, v6, -0x8

    add-int/lit8 v2, v1, 0x1

    shr-int v8, v0, v6

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v1

    move v1, v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v5
.end method

.method public static encode([B)[C
    .locals 10

    const/16 v7, 0x40

    array-length v6, p0

    add-int/lit8 v6, v6, 0x2

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x4

    new-array v2, v6, [C

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v6, p0

    if-lt v0, v6, :cond_0

    return-object v2

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-byte v6, p0, v0

    and-int/lit16 v5, v6, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v0, 0x1

    array-length v8, p0

    if-ge v6, v8, :cond_1

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    const/4 v4, 0x1

    :cond_1
    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v0, 0x2

    array-length v8, p0

    if-ge v6, v8, :cond_2

    add-int/lit8 v6, v0, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    const/4 v3, 0x1

    :cond_2
    add-int/lit8 v8, v1, 0x3

    sget-object v9, Lcom/sina/weibo/sdk/utils/Base64;->alphabet:[C

    if-eqz v3, :cond_3

    and-int/lit8 v6, v5, 0x3f

    :goto_1
    aget-char v6, v9, v6

    aput-char v6, v2, v8

    shr-int/lit8 v5, v5, 0x6

    add-int/lit8 v8, v1, 0x2

    sget-object v9, Lcom/sina/weibo/sdk/utils/Base64;->alphabet:[C

    if-eqz v4, :cond_4

    and-int/lit8 v6, v5, 0x3f

    :goto_2
    aget-char v6, v9, v6

    aput-char v6, v2, v8

    shr-int/lit8 v5, v5, 0x6

    add-int/lit8 v6, v1, 0x1

    sget-object v8, Lcom/sina/weibo/sdk/utils/Base64;->alphabet:[C

    and-int/lit8 v9, v5, 0x3f

    aget-char v8, v8, v9

    aput-char v8, v2, v6

    shr-int/lit8 v5, v5, 0x6

    add-int/lit8 v6, v1, 0x0

    sget-object v8, Lcom/sina/weibo/sdk/utils/Base64;->alphabet:[C

    and-int/lit8 v9, v5, 0x3f

    aget-char v8, v8, v9

    aput-char v8, v2, v6

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_3
    move v6, v7

    goto :goto_1

    :cond_4
    move v6, v7

    goto :goto_2
.end method

.method public static encodebyte([B)[B
    .locals 10

    const/16 v7, 0x40

    array-length v6, p0

    add-int/lit8 v6, v6, 0x2

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x4

    new-array v2, v6, [B

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v6, p0

    if-lt v0, v6, :cond_0

    return-object v2

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-byte v6, p0, v0

    and-int/lit16 v5, v6, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v0, 0x1

    array-length v8, p0

    if-ge v6, v8, :cond_1

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    const/4 v4, 0x1

    :cond_1
    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v0, 0x2

    array-length v8, p0

    if-ge v6, v8, :cond_2

    add-int/lit8 v6, v0, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    const/4 v3, 0x1

    :cond_2
    add-int/lit8 v8, v1, 0x3

    sget-object v9, Lcom/sina/weibo/sdk/utils/Base64;->alphabet:[C

    if-eqz v3, :cond_3

    and-int/lit8 v6, v5, 0x3f

    :goto_1
    aget-char v6, v9, v6

    int-to-byte v6, v6

    aput-byte v6, v2, v8

    shr-int/lit8 v5, v5, 0x6

    add-int/lit8 v8, v1, 0x2

    sget-object v9, Lcom/sina/weibo/sdk/utils/Base64;->alphabet:[C

    if-eqz v4, :cond_4

    and-int/lit8 v6, v5, 0x3f

    :goto_2
    aget-char v6, v9, v6

    int-to-byte v6, v6

    aput-byte v6, v2, v8

    shr-int/lit8 v5, v5, 0x6

    add-int/lit8 v6, v1, 0x1

    sget-object v8, Lcom/sina/weibo/sdk/utils/Base64;->alphabet:[C

    and-int/lit8 v9, v5, 0x3f

    aget-char v8, v8, v9

    int-to-byte v8, v8

    aput-byte v8, v2, v6

    shr-int/lit8 v5, v5, 0x6

    add-int/lit8 v6, v1, 0x0

    sget-object v8, Lcom/sina/weibo/sdk/utils/Base64;->alphabet:[C

    and-int/lit8 v9, v5, 0x3f

    aget-char v8, v8, v9

    int-to-byte v8, v8

    aput-byte v8, v2, v6

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_3
    move v6, v7

    goto :goto_1

    :cond_4
    move v6, v7

    goto :goto_2
.end method
