.class public Lcom/android/gallery3d/exif/JpegHeader;
.super Ljava/lang/Object;
.source "JpegHeader.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getByteArrayOfTag(S)[B
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [B

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public static final isSofMarker(S)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, -0x40

    if-lt p0, v1, :cond_0

    const/16 v1, -0x31

    if-gt p0, v1, :cond_0

    const/16 v1, -0x3c

    if-eq p0, v1, :cond_0

    const/16 v1, -0x38

    if-eq p0, v1, :cond_0

    const/16 v1, -0x34

    if-eq p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method