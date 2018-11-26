.class public final Lcom/miui/idprovider/a/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final aYk:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/miui/idprovider/a/c;->aYk:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bte([B)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    :cond_0
    return-object v2

    :cond_1
    array-length v1, p0

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    array-length v1, p0

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [C

    :goto_0
    if-ge v0, v1, :cond_2

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v0, 0x2

    sget-object v5, Lcom/miui/idprovider/a/c;->aYk:[C

    ushr-int/lit8 v6, v3, 0x4

    aget-char v5, v5, v6

    aput-char v5, v2, v4

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Lcom/miui/idprovider/a/c;->aYk:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v5, v3

    aput-char v3, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static btf(Ljava/lang/String;)[B
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-object v2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    div-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    mul-int/lit8 v3, v0, 0x2

    aget-char v3, v1, v3

    invoke-static {v3}, Lcom/miui/idprovider/a/c;->btg(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    and-int/lit16 v3, v3, 0xf0

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-char v4, v1, v4

    invoke-static {v4}, Lcom/miui/idprovider/a/c;->btg(C)I

    move-result v4

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private static btg(C)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/miui/idprovider/a/c;->aYk:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/miui/idprovider/a/c;->aYk:[C

    aget-char v1, v1, v0

    if-ne v1, p0, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method
