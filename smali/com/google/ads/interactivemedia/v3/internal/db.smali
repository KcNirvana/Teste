.class public final Lcom/google/ads/interactivemedia/v3/internal/db;
.super Ljava/lang/Object;
.source "IMASDK"


# direct methods
.method public static a([B)Ljava/util/UUID;
    .locals 0

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/db;->b([B)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/util/UUID;

    return-object p0
.end method

.method private static b([B)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;-><init>([B)V

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c()I

    move-result p0

    const/4 v1, 0x0

    const/16 v2, 0x20

    if-ge p0, v2, :cond_0

    return-object v1

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->b()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    if-eq v2, v3, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v2

    sget v3, Lcom/google/ads/interactivemedia/v3/internal/cv;->U:I

    if-eq v2, v3, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v2

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/cv;->a(I)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    const-string p0, "PsshAtomUtil"

    const/16 v0, 0x25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unsupported pssh version: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    new-instance v4, Ljava/util/UUID;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->o()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->o()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/util/UUID;-><init>(JJ)V

    if-ne v2, v3, :cond_4

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    :cond_4
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->b()I

    move-result v3

    if-eq v2, v3, :cond_5

    return-object v1

    :cond_5
    new-array v1, v2, [B

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->a([BII)V

    invoke-static {v4, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
