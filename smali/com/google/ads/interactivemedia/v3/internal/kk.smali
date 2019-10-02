.class Lcom/google/ads/interactivemedia/v3/internal/kk;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/ki;


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/internal/lv;

.field private b:[B

.field private final c:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/kk;->c:I

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/kk;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kk;->c:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kk;->b:[B

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kk;->b:[B

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/lv;->a([B)Lcom/google/ads/interactivemedia/v3/internal/lv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kk;->a:Lcom/google/ads/interactivemedia/v3/internal/lv;

    return-void
.end method

.method public a(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kk;->a:Lcom/google/ads/interactivemedia/v3/internal/lv;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/lv;->a(IJ)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kk;->a:Lcom/google/ads/interactivemedia/v3/internal/lv;

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/lv;->a(ILjava/lang/String;)V

    return-void
.end method

.method public b()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kk;->a:Lcom/google/ads/interactivemedia/v3/internal/lv;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/lv;->a()I

    move-result v0

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kk;->b:[B

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/kk;->b:[B

    array-length v1, v1

    sub-int/2addr v1, v0

    new-array v0, v1, [B

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/kk;->b:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method
