.class public Lcom/android/camera/Exif;
.super Ljava/lang/Object;
.source "Exif.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrientation([B)I
    .locals 15

    const/16 v14, 0x8

    const/4 v3, 0x1

    const/4 v13, 0x4

    const/4 v12, 0x2

    const/4 v9, 0x0

    if-nez p0, :cond_0

    return v9

    :cond_0
    const/4 v5, 0x0

    const/4 v2, 0x0

    :cond_1
    :goto_0
    add-int/lit8 v10, v5, 0x3

    array-length v11, p0

    if-ge v10, v11, :cond_3

    add-int/lit8 v6, v5, 0x1

    aget-byte v10, p0, v5

    and-int/lit16 v10, v10, 0xff

    const/16 v11, 0xff

    if-ne v10, v11, :cond_2

    aget-byte v10, p0, v6

    and-int/lit16 v4, v10, 0xff

    const/16 v10, 0xff

    if-ne v4, v10, :cond_4

    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v6

    :cond_3
    :goto_1
    if-le v2, v14, :cond_d

    invoke-static {p0, v5, v13, v9}, Lcom/android/camera/Exif;->pack([BIIZ)I

    move-result v8

    const v10, 0x49492a00    # 823968.0f

    if-eq v8, v10, :cond_8

    const v10, 0x4d4d002a    # 2.14958752E8f

    if-eq v8, v10, :cond_8

    const-string/jumbo v10, "CameraExif"

    const-string/jumbo v11, "Invalid byte order"

    invoke-static {v10, v11}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_4
    add-int/lit8 v5, v6, 0x1

    const/16 v10, 0xd8

    if-eq v4, v10, :cond_1

    if-eq v4, v3, :cond_1

    const/16 v10, 0xd9

    if-eq v4, v10, :cond_3

    const/16 v10, 0xda

    if-eq v4, v10, :cond_3

    invoke-static {p0, v5, v12, v9}, Lcom/android/camera/Exif;->pack([BIIZ)I

    move-result v2

    if-lt v2, v12, :cond_5

    add-int v10, v5, v2

    array-length v11, p0

    if-le v10, v11, :cond_6

    :cond_5
    const-string/jumbo v10, "CameraExif"

    const-string/jumbo v11, "Invalid length"

    invoke-static {v10, v11}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_6
    const/16 v10, 0xe1

    if-ne v4, v10, :cond_7

    if-lt v2, v14, :cond_7

    add-int/lit8 v10, v5, 0x2

    invoke-static {p0, v10, v13, v9}, Lcom/android/camera/Exif;->pack([BIIZ)I

    move-result v10

    const v11, 0x45786966

    if-ne v10, v11, :cond_7

    add-int/lit8 v10, v5, 0x6

    invoke-static {p0, v10, v12, v9}, Lcom/android/camera/Exif;->pack([BIIZ)I

    move-result v10

    if-nez v10, :cond_7

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v2, v2, -0x8

    goto :goto_1

    :cond_7
    add-int/2addr v5, v2

    const/4 v2, 0x0

    goto :goto_0

    :cond_8
    const v10, 0x49492a00    # 823968.0f

    if-ne v8, v10, :cond_a

    :goto_2
    add-int/lit8 v10, v5, 0x4

    invoke-static {p0, v10, v13, v3}, Lcom/android/camera/Exif;->pack([BIIZ)I

    move-result v10

    add-int/lit8 v0, v10, 0x2

    const/16 v10, 0xa

    if-lt v0, v10, :cond_9

    if-le v0, v2, :cond_b

    :cond_9
    const-string/jumbo v10, "CameraExif"

    const-string/jumbo v11, "Invalid offset"

    invoke-static {v10, v11}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_a
    move v3, v9

    goto :goto_2

    :cond_b
    add-int/2addr v5, v0

    sub-int/2addr v2, v0

    add-int/lit8 v10, v5, -0x2

    invoke-static {p0, v10, v12, v3}, Lcom/android/camera/Exif;->pack([BIIZ)I

    move-result v0

    move v1, v0

    :goto_3
    add-int/lit8 v0, v1, -0x1

    if-lez v1, :cond_d

    const/16 v10, 0xc

    if-lt v2, v10, :cond_d

    invoke-static {p0, v5, v12, v3}, Lcom/android/camera/Exif;->pack([BIIZ)I

    move-result v8

    const/16 v10, 0x112

    if-ne v8, v10, :cond_c

    add-int/lit8 v10, v5, 0x8

    invoke-static {p0, v10, v12, v3}, Lcom/android/camera/Exif;->pack([BIIZ)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v10, "CameraExif"

    const-string/jumbo v11, "Unsupported orientation"

    invoke-static {v10, v11}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :pswitch_1
    return v9

    :pswitch_2
    const/16 v9, 0xb4

    return v9

    :pswitch_3
    const/16 v9, 0x5a

    return v9

    :pswitch_4
    const/16 v9, 0x10e

    return v9

    :cond_c
    add-int/lit8 v5, v5, 0xc

    add-int/lit8 v2, v2, -0xc

    move v1, v0

    goto :goto_3

    :cond_d
    const-string/jumbo v10, "CameraExif"

    const-string/jumbo v11, "Orientation not found"

    invoke-static {v10, v11}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static pack([BIIZ)I
    .locals 5

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    add-int/lit8 v3, p2, -0x1

    add-int/2addr p1, v3

    const/4 v1, -0x1

    :cond_0
    const/4 v2, 0x0

    move v0, p2

    :goto_0
    add-int/lit8 p2, v0, -0x1

    if-lez v0, :cond_1

    shl-int/lit8 v3, v2, 0x8

    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    or-int v2, v3, v4

    add-int/2addr p1, v1

    move v0, p2

    goto :goto_0

    :cond_1
    return v2
.end method
