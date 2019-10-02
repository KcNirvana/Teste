.class public final Lcom/google/ads/interactivemedia/v3/internal/gi;
.super Lcom/google/ads/interactivemedia/v3/internal/gf;
.source "IMASDK"


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/hc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/hc<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/internal/gf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/gf;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/hc;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/hc;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gi;->a:Lcom/google/ads/interactivemedia/v3/internal/hc;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/gf;)V
    .locals 1

    if-nez p2, :cond_0

    sget-object p2, Lcom/google/ads/interactivemedia/v3/internal/gh;->a:Lcom/google/ads/interactivemedia/v3/internal/gh;

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gi;->a:Lcom/google/ads/interactivemedia/v3/internal/hc;

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/hc;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    instance-of v0, p1, Lcom/google/ads/interactivemedia/v3/internal/gi;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/gi;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/gi;->a:Lcom/google/ads/interactivemedia/v3/internal/hc;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gi;->a:Lcom/google/ads/interactivemedia/v3/internal/hc;

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/hc;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gi;->a:Lcom/google/ads/interactivemedia/v3/internal/hc;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/hc;->hashCode()I

    move-result v0

    return v0
.end method

.method public o()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/internal/gf;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gi;->a:Lcom/google/ads/interactivemedia/v3/internal/hc;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/hc;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
