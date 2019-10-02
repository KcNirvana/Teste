.class abstract Lcom/google/ads/interactivemedia/v3/internal/co;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/internal/co$a;
    }
.end annotation


# instance fields
.field protected final a:Lcom/google/ads/interactivemedia/v3/internal/ck;

.field private b:J


# direct methods
.method protected constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ck;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/co;->a:Lcom/google/ads/interactivemedia/v3/internal/ck;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/co;->b:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/co;->b:J

    return-wide v0
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/co;->b:J

    return-void
.end method

.method protected abstract a(Lcom/google/ads/interactivemedia/v3/internal/fp;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bl;
        }
    .end annotation
.end method

.method protected abstract a(Lcom/google/ads/interactivemedia/v3/internal/fp;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bl;
        }
    .end annotation
.end method

.method public final b(Lcom/google/ads/interactivemedia/v3/internal/fp;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bl;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/co;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/co;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;J)V

    :cond_0
    return-void
.end method
