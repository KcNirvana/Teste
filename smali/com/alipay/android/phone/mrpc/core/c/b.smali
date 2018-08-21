.class public final Lcom/alipay/android/phone/mrpc/core/c/b;
.super Ljava/lang/Object;
.source "HexaDecimalConvUtil.java"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/android/phone/mrpc/core/c/b;->a:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x2bs
        0x2fs
    .end array-data
.end method

.method public static final a(J)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x6

    invoke-static {p0, p1, v0}, Lcom/alipay/android/phone/mrpc/core/c/b;->a(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final a(JI)Ljava/lang/String;
    .locals 8

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    int-to-double v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v1, v0

    new-array v2, v1, [C

    const/4 v0, 0x1

    shl-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    int-to-long v4, v0

    move v0, v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    sget-object v3, Lcom/alipay/android/phone/mrpc/core/c/b;->a:[C

    and-long v6, p0, v4

    long-to-int v6, v6

    aget-char v3, v3, v6

    aput-char v3, v2, v0

    ushr-long/2addr p0, p2

    const-wide/16 v6, 0x0

    cmp-long v3, p0, v6

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/String;

    sub-int/2addr v1, v0

    invoke-direct {v3, v2, v0, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v3
.end method
