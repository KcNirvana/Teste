.class public Lcom/xiaomi/ad/mediationconfig/internal/utils/HashUtils;
.super Ljava/lang/Object;
.source "HashUtils.java"


# static fields
.field public static final GAID_BUCKET_SEED:I = 0x83


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static murmurHash([BII)I
    .locals 7

    and-int/lit8 v0, p1, -0x4

    const/4 v1, 0x0

    move v2, p2

    const/4 p2, 0x0

    :goto_0
    const v3, 0x1b873593

    const v4, -0x3361d2af    # -8.2930312E7f

    if-ge p2, v0, :cond_0

    aget-byte v5, p0, p2

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, p2, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x3

    aget-byte v6, p0, v6

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    mul-int v5, v5, v4

    shl-int/lit8 v4, v5, 0xf

    ushr-int/lit8 v5, v5, 0x11

    or-int/2addr v4, v5

    mul-int v4, v4, v3

    xor-int/2addr v2, v4

    shl-int/lit8 v3, v2, 0xd

    ushr-int/lit8 v2, v2, 0x13

    or-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x5

    const v3, -0x19ab949c

    add-int/2addr v2, v3

    add-int/lit8 p2, p2, 0x4

    goto :goto_0

    :cond_0
    and-int/lit8 p2, p1, 0x3

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    add-int/lit8 p2, v0, 0x2

    aget-byte p2, p0, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 v1, p2, 0x10

    :pswitch_1
    add-int/lit8 p2, v0, 0x1

    aget-byte p2, p0, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr v1, p2

    :pswitch_2
    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v1

    mul-int p0, p0, v4

    shl-int/lit8 p2, p0, 0xf

    ushr-int/lit8 p0, p0, 0x11

    or-int/2addr p0, p2

    mul-int p0, p0, v3

    xor-int/2addr v2, p0

    :goto_1
    xor-int p0, v2, p1

    ushr-int/lit8 p1, p0, 0x10

    xor-int/2addr p0, p1

    const p1, -0x7a143595

    mul-int p0, p0, p1

    ushr-int/lit8 p1, p0, 0xd

    xor-int/2addr p0, p1

    const p1, -0x3d4d51cb

    mul-int p0, p0, p1

    ushr-int/lit8 p1, p0, 0x10

    xor-int/2addr p0, p1

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
