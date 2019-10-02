.class Lcom/google/ads/interactivemedia/v3/internal/fh$1;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/cj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/internal/fh;->a(JJ)Lcom/google/ads/interactivemedia/v3/internal/cj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/google/ads/interactivemedia/v3/internal/fh;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/fh;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/fh$1;->c:Lcom/google/ads/interactivemedia/v3/internal/fh;

    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/fh$1;->a:J

    iput-wide p4, p0, Lcom/google/ads/interactivemedia/v3/internal/fh$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(J)J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fh$1;->a:J

    mul-long p1, p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fh$1;->c:Lcom/google/ads/interactivemedia/v3/internal/fh;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/fh;->a(Lcom/google/ads/interactivemedia/v3/internal/fh;)[J

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/ads/interactivemedia/v3/internal/ft;->a([JJZZ)I

    move-result p1

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fh$1;->b:J

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/fh$1;->c:Lcom/google/ads/interactivemedia/v3/internal/fh;

    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/fh;->b(Lcom/google/ads/interactivemedia/v3/internal/fh;)[J

    move-result-object p2

    aget-wide p1, p2, p1

    add-long/2addr v0, p1

    return-wide v0
.end method
