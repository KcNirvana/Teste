.class public final Lcom/google/ads/interactivemedia/v3/internal/fj;
.super Ljava/lang/Object;
.source "IMASDK"


# direct methods
.method public static a(Lcom/google/ads/interactivemedia/v3/internal/fi;Lcom/google/ads/interactivemedia/v3/internal/fp;)J
    .locals 4

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->w()J

    move-result-wide v0

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/fi;->a:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/fi;->b:I

    if-ne p1, v2, :cond_0

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/fi;->a:I

    int-to-long v2, p1

    mul-long v0, v0, v2

    :cond_0
    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    iget p0, p0, Lcom/google/ads/interactivemedia/v3/internal/fi;->e:I

    int-to-long p0, p0

    div-long/2addr v0, p0

    return-wide v0
.end method
