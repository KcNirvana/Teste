.class final Lcom/google/ads/interactivemedia/v3/internal/eg;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private g:J

.field private h:J


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/eg;->a:I

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/eg;->b:I

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/eg;->c:I

    iput p4, p0, Lcom/google/ads/interactivemedia/v3/internal/eg;->d:I

    iput p5, p0, Lcom/google/ads/interactivemedia/v3/internal/eg;->e:I

    iput p6, p0, Lcom/google/ads/interactivemedia/v3/internal/eg;->f:I

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eg;->h:J

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/eg;->d:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/eg;->b:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public a(J)J
    .locals 2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eg;->c:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eg;->d:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eg;->d:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eg;->g:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public a(JJ)V
    .locals 0

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/eg;->g:J

    iput-wide p3, p0, Lcom/google/ads/interactivemedia/v3/internal/eg;->h:J

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eg;->d:I

    return v0
.end method

.method public b(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eg;->c:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public c()I
    .locals 2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eg;->b:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/eg;->e:I

    mul-int v0, v0, v1

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/eg;->a:I

    mul-int v0, v0, v1

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eg;->b:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eg;->a:I

    return v0
.end method

.method public f()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eg;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eg;->h:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eg;->f:I

    return v0
.end method
