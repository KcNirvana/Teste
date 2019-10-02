.class final Lcom/google/ads/interactivemedia/v3/internal/dp;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/internal/dp$c;,
        Lcom/google/ads/interactivemedia/v3/internal/dp$d;,
        Lcom/google/ads/interactivemedia/v3/internal/dp$b;,
        Lcom/google/ads/interactivemedia/v3/internal/dp$a;
    }
.end annotation


# direct methods
.method public static a(I)I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-lez p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static a(JJ)J
    .locals 2

    long-to-double p0, p0

    long-to-double p2, p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p2

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-long p0, p0

    return-wide p0
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/internal/fp;)Lcom/google/ads/interactivemedia/v3/internal/dp$d;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bl;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/dp;->a(ILcom/google/ads/interactivemedia/v3/internal/fp;Z)Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->l()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->l()J

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->n()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->n()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->n()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result v3

    and-int/lit8 v12, v3, 0xf

    int-to-double v12, v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-int v12, v12

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    int-to-double v1, v3

    invoke-static {v14, v15, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-int v13, v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-lez v1, :cond_0

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c()I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v15

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/dp$d;

    move-object v3, v0

    invoke-direct/range {v3 .. v15}, Lcom/google/ads/interactivemedia/v3/internal/dp$d;-><init>(JIJIIIIIZ[B)V

    return-object v0
.end method

.method private static a(ILcom/google/ads/interactivemedia/v3/internal/dn;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bl;
        }
    .end annotation

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_6

    const/16 v4, 0x10

    invoke-virtual {p1, v4}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a(I)I

    move-result v4

    if-eqz v4, :cond_0

    const-string v5, "VorbisUtil"

    const/16 v6, 0x34

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "mapping type other than 0 not supported: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a()Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v5}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a(I)I

    move-result v4

    add-int/2addr v4, v1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    :goto_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a()Z

    move-result v6

    const/16 v7, 0x8

    if-eqz v6, :cond_2

    invoke-virtual {p1, v7}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a(I)I

    move-result v6

    add-int/2addr v6, v1

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v6, :cond_2

    add-int/lit8 v9, p0, -0x1

    invoke-static {v9}, Lcom/google/ads/interactivemedia/v3/internal/dp;->a(I)I

    move-result v10

    invoke-virtual {p1, v10}, Lcom/google/ads/interactivemedia/v3/internal/dn;->b(I)V

    invoke-static {v9}, Lcom/google/ads/interactivemedia/v3/internal/dp;->a(I)I

    move-result v9

    invoke-virtual {p1, v9}, Lcom/google/ads/interactivemedia/v3/internal/dn;->b(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a(I)I

    move-result v6

    if-nez v6, :cond_5

    if-le v4, v1, :cond_3

    const/4 v6, 0x0

    :goto_3
    if-ge v6, p0, :cond_3

    invoke-virtual {p1, v5}, Lcom/google/ads/interactivemedia/v3/internal/dn;->b(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_4

    invoke-virtual {p1, v7}, Lcom/google/ads/interactivemedia/v3/internal/dn;->b(I)V

    invoke-virtual {p1, v7}, Lcom/google/ads/interactivemedia/v3/internal/dn;->b(I)V

    invoke-virtual {p1, v7}, Lcom/google/ads/interactivemedia/v3/internal/dn;->b(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/bl;

    const-string p1, "to reserved bits must be zero after mapping coupling steps"

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    return-void
.end method

.method public static a(ILcom/google/ads/interactivemedia/v3/internal/fp;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bl;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p0, :cond_2

    if-eqz p2, :cond_0

    return v1

    :cond_0
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/bl;

    const-string p2, "expected header type "

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result p0

    const/16 v0, 0x76

    if-ne p0, v0, :cond_4

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result p0

    const/16 v0, 0x6f

    if-ne p0, v0, :cond_4

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result p0

    const/16 v0, 0x72

    if-ne p0, v0, :cond_4

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result p0

    const/16 v0, 0x62

    if-ne p0, v0, :cond_4

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result p0

    const/16 v0, 0x69

    if-ne p0, v0, :cond_4

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result p0

    const/16 p1, 0x73

    if-eq p0, p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    return v1

    :cond_5
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/bl;

    const-string p1, "expected characters \'vorbis\'"

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/dn;)[Lcom/google/ads/interactivemedia/v3/internal/dp$c;
    .locals 8

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [Lcom/google/ads/interactivemedia/v3/internal/dp$c;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a()Z

    move-result v3

    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a(I)I

    move-result v5

    invoke-virtual {p0, v4}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a(I)I

    move-result v4

    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a(I)I

    move-result v6

    new-instance v7, Lcom/google/ads/interactivemedia/v3/internal/dp$c;

    invoke-direct {v7, v3, v5, v4, v6}, Lcom/google/ads/interactivemedia/v3/internal/dp$c;-><init>(ZIII)V

    aput-object v7, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/internal/fp;I)[Lcom/google/ads/interactivemedia/v3/internal/dp$c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bl;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {v1, p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/dp;->a(ILcom/google/ads/interactivemedia/v3/internal/fp;Z)Z

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/dn;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/dn;-><init>([B)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d()I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    invoke-virtual {v2, p0}, Lcom/google/ads/interactivemedia/v3/internal/dn;->b(I)V

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v1, :cond_0

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/dp;->d(Lcom/google/ads/interactivemedia/v3/internal/dn;)Lcom/google/ads/interactivemedia/v3/internal/dp$a;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x6

    invoke-virtual {v2, p0}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    :goto_1
    if-ge v0, p0, :cond_2

    const/16 v1, 0x10

    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a(I)I

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/bl;

    const-string p1, "placeholder of time domain transforms not zeroed out"

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/dp;->c(Lcom/google/ads/interactivemedia/v3/internal/dn;)V

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/dp;->b(Lcom/google/ads/interactivemedia/v3/internal/dn;)V

    invoke-static {p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/dp;->a(ILcom/google/ads/interactivemedia/v3/internal/dn;)V

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/dp;->a(Lcom/google/ads/interactivemedia/v3/internal/dn;)[Lcom/google/ads/interactivemedia/v3/internal/dp$c;

    move-result-object p0

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    return-object p0

    :cond_3
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/bl;

    const-string p1, "framing bit after modes not set as expected"

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lcom/google/ads/interactivemedia/v3/internal/fp;)Lcom/google/ads/interactivemedia/v3/internal/dp$b;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bl;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v1, p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/dp;->a(ILcom/google/ads/interactivemedia/v3/internal/fp;Z)Z

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->l()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    add-int/2addr v3, v2

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->l()J

    move-result-wide v4

    long-to-int v2, v4

    new-array v2, v2, [Ljava/lang/String;

    add-int/lit8 v3, v3, 0x4

    :goto_0
    int-to-long v6, v0

    cmp-long v6, v6, v4

    if-gez v6, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->l()J

    move-result-wide v6

    long-to-int v6, v6

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {p0, v6}, Lcom/google/ads/interactivemedia/v3/internal/fp;->e(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v0

    aget-object v6, v2, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_1

    add-int/lit8 v3, v3, 0x1

    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/dp$b;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/dp$b;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/bl;

    const-string v0, "framing bit expected to be set"

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Lcom/google/ads/interactivemedia/v3/internal/dn;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bl;
        }
    .end annotation

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_6

    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a(I)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_5

    const/16 v5, 0x18

    invoke-virtual {p0, v5}, Lcom/google/ads/interactivemedia/v3/internal/dn;->b(I)V

    invoke-virtual {p0, v5}, Lcom/google/ads/interactivemedia/v3/internal/dn;->b(I)V

    invoke-virtual {p0, v5}, Lcom/google/ads/interactivemedia/v3/internal/dn;->b(I)V

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a(I)I

    move-result v5

    add-int/2addr v5, v2

    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lcom/google/ads/interactivemedia/v3/internal/dn;->b(I)V

    new-array v7, v5, [I

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v5, :cond_1

    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a(I)I

    move-result v9

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x5

    invoke-virtual {p0, v10}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a(I)I

    move-result v10

    goto :goto_2

    :cond_0
    const/4 v10, 0x0

    :goto_2
    mul-int/lit8 v10, v10, 0x8

    add-int/2addr v10, v9

    aput v10, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v5, :cond_4

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v6, :cond_3

    aget v10, v7, v8

    shl-int v11, v2, v9

    and-int/2addr v10, v11

    if-eqz v10, :cond_2

    invoke-virtual {p0, v6}, Lcom/google/ads/interactivemedia/v3/internal/dn;->b(I)V

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/bl;

    const-string v0, "residueType greater than 2 is not decodable"

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    return-void
.end method

.method private static c(Lcom/google/ads/interactivemedia/v3/internal/dn;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bl;
        }
    .end annotation

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_7

    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a(I)I

    move-result v6

    const/4 v7, 0x4

    const/16 v8, 0x8

    packed-switch v6, :pswitch_data_0

    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/bl;

    const/16 v0, 0x34

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "floor type greater than 1 not decodable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a(I)I

    move-result v5

    const/4 v6, -0x1

    new-array v9, v5, [I

    const/4 v6, 0x0

    const/4 v10, -0x1

    :goto_1
    if-ge v6, v5, :cond_1

    invoke-virtual {p0, v7}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a(I)I

    move-result v11

    aput v11, v9, v6

    aget v11, v9, v6

    if-le v11, v10, :cond_0

    aget v10, v9, v6

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v10, v10, 0x1

    new-array v6, v10, [I

    const/4 v10, 0x0

    :goto_2
    array-length v11, v6

    const/4 v12, 0x2

    if-ge v10, v11, :cond_4

    const/4 v11, 0x3

    invoke-virtual {p0, v11}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a(I)I

    move-result v11

    add-int/2addr v11, v2

    aput v11, v6, v10

    invoke-virtual {p0, v12}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a(I)I

    move-result v11

    if-lez v11, :cond_2

    invoke-virtual {p0, v8}, Lcom/google/ads/interactivemedia/v3/internal/dn;->b(I)V

    :cond_2
    const/4 v12, 0x0

    :goto_3
    shl-int v13, v2, v11

    if-ge v12, v13, :cond_3

    invoke-virtual {p0, v8}, Lcom/google/ads/interactivemedia/v3/internal/dn;->b(I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v12}, Lcom/google/ads/interactivemedia/v3/internal/dn;->b(I)V

    invoke-virtual {p0, v7}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a(I)I

    move-result v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_4
    if-ge v8, v5, :cond_6

    aget v12, v9, v8

    aget v12, v6, v12

    add-int/2addr v10, v12

    :goto_5
    if-ge v11, v10, :cond_5

    invoke-virtual {p0, v7}, Lcom/google/ads/interactivemedia/v3/internal/dn;->b(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :pswitch_1
    invoke-virtual {p0, v8}, Lcom/google/ads/interactivemedia/v3/internal/dn;->b(I)V

    invoke-virtual {p0, v5}, Lcom/google/ads/interactivemedia/v3/internal/dn;->b(I)V

    invoke-virtual {p0, v5}, Lcom/google/ads/interactivemedia/v3/internal/dn;->b(I)V

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/dn;->b(I)V

    invoke-virtual {p0, v8}, Lcom/google/ads/interactivemedia/v3/internal/dn;->b(I)V

    invoke-virtual {p0, v7}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a(I)I

    move-result v5

    add-int/2addr v5, v2

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v5, :cond_6

    invoke-virtual {p0, v8}, Lcom/google/ads/interactivemedia/v3/internal/dn;->b(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static d(Lcom/google/ads/interactivemedia/v3/internal/dn;)Lcom/google/ads/interactivemedia/v3/internal/dp$a;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bl;
        }
    .end annotation

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a(I)I

    move-result v1

    const v2, 0x564342

    if-ne v1, v2, :cond_a

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a(I)I

    move-result v3

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a(I)I

    move-result v4

    new-array v5, v4, [J

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a()Z

    move-result v7

    const-wide/16 v0, 0x0

    const/4 v2, 0x5

    const/4 v6, 0x0

    const/4 v8, 0x1

    if-nez v7, :cond_2

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a()Z

    move-result v9

    :goto_0
    array-length v10, v5

    if-ge v6, v10, :cond_4

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a(I)I

    move-result v10

    add-int/2addr v10, v8

    int-to-long v10, v10

    aput-wide v10, v5, v6

    goto :goto_1

    :cond_0
    aput-wide v0, v5, v6

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a(I)I

    move-result v10

    add-int/2addr v10, v8

    int-to-long v10, v10

    aput-wide v10, v5, v6

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a(I)I

    move-result v2

    add-int/2addr v2, v8

    move v9, v2

    const/4 v2, 0x0

    :goto_2
    array-length v10, v5

    if-ge v2, v10, :cond_4

    sub-int v10, v4, v2

    invoke-static {v10}, Lcom/google/ads/interactivemedia/v3/internal/dp;->a(I)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a(I)I

    move-result v10

    move v11, v2

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v10, :cond_3

    array-length v12, v5

    if-ge v11, v12, :cond_3

    int-to-long v12, v9

    aput-wide v12, v5, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v9, v9, 0x1

    move v2, v11

    goto :goto_2

    :cond_4
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a(I)I

    move-result v6

    const/4 v9, 0x2

    if-gt v6, v9, :cond_9

    if-eq v6, v8, :cond_5

    if-ne v6, v9, :cond_8

    :cond_5
    const/16 v9, 0x20

    invoke-virtual {p0, v9}, Lcom/google/ads/interactivemedia/v3/internal/dn;->b(I)V

    invoke-virtual {p0, v9}, Lcom/google/ads/interactivemedia/v3/internal/dn;->b(I)V

    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/dn;->a(I)I

    move-result v2

    add-int/2addr v2, v8

    invoke-virtual {p0, v8}, Lcom/google/ads/interactivemedia/v3/internal/dn;->b(I)V

    if-ne v6, v8, :cond_6

    if-eqz v3, :cond_7

    int-to-long v0, v4

    int-to-long v8, v3

    invoke-static {v0, v1, v8, v9}, Lcom/google/ads/interactivemedia/v3/internal/dp;->a(JJ)J

    move-result-wide v0

    goto :goto_4

    :cond_6
    mul-int v0, v4, v3

    int-to-long v0, v0

    :cond_7
    :goto_4
    int-to-long v8, v2

    mul-long v0, v0, v8

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/dn;->b(I)V

    :cond_8
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/dp$a;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/dp$a;-><init>(II[JIZ)V

    return-object p0

    :cond_9
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/bl;

    const/16 v0, 0x35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "lookup type greater than 2 not decodable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/bl;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/dn;->b()I

    move-result p0

    const/16 v1, 0x42

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "expected code book to start with [0x56, 0x43, 0x42] at "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>(Ljava/lang/String;)V

    throw v0
.end method
