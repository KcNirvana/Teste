.class public Lcom/google/ads/interactivemedia/v3/internal/jf;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:J

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/jc$a;


# direct methods
.method constructor <init>(JLcom/google/ads/interactivemedia/v3/internal/jc$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jf;->a:J

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/jf;->b:Lcom/google/ads/interactivemedia/v3/internal/jc$a;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jf;->a:J

    return-wide v0
.end method

.method public b()Lcom/google/ads/interactivemedia/v3/internal/jc$a;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jf;->b:Lcom/google/ads/interactivemedia/v3/internal/jc$a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/jf;

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jf;->a:J

    iget-wide v4, p1, Lcom/google/ads/interactivemedia/v3/internal/jf;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jf;->b:Lcom/google/ads/interactivemedia/v3/internal/jc$a;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/jf;->b:Lcom/google/ads/interactivemedia/v3/internal/jc$a;

    if-eq v2, p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jf;->a:J

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jf;->b:Lcom/google/ads/interactivemedia/v3/internal/jc$a;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/jc$a;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jf;->a:J

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jf;->b:Lcom/google/ads/interactivemedia/v3/internal/jc$a;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x44

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "NativeBridgeConfig [adTimeUpdateMs="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", adUiStyle="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
