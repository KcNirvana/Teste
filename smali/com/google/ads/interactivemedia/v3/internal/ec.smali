.class public final Lcom/google/ads/interactivemedia/v3/internal/ec;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:J

.field private b:J

.field private volatile c:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ec;->a:J

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ec;->c:J

    return-void
.end method

.method public static b(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p0, p0, v0

    const-wide/32 v0, 0x15f90

    div-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public a(J)J
    .locals 8

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ec;->c:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ec;->c:J

    const-wide v4, 0x100000000L

    add-long/2addr v0, v4

    const-wide v4, 0x200000000L

    div-long/2addr v0, v4

    const-wide/16 v6, 0x1

    sub-long v6, v0, v6

    mul-long v6, v6, v4

    add-long/2addr v6, p1

    mul-long v0, v0, v4

    add-long/2addr p1, v0

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ec;->c:J

    sub-long v0, v6, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ec;->c:J

    sub-long v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    move-wide p1, v6

    :cond_0
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ec;->b(J)J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ec;->a:J

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ec;->c:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ec;->a:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ec;->b:J

    :cond_1
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ec;->c:J

    iget-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ec;->b:J

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public a()V
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ec;->c:J

    return-void
.end method
