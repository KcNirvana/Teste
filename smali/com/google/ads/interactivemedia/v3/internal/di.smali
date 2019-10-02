.class public Lcom/google/ads/interactivemedia/v3/internal/di;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/cc;


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/internal/dm;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/internal/cd;Lcom/google/ads/interactivemedia/v3/internal/ch;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->a:Lcom/google/ads/interactivemedia/v3/internal/dm;

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/dm;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;Lcom/google/ads/interactivemedia/v3/internal/ch;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/ce;)V
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ce;->d(I)Lcom/google/ads/interactivemedia/v3/internal/ck;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/ce;->f()V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->a:Lcom/google/ads/interactivemedia/v3/internal/dm;

    invoke-virtual {v1, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/dm;->a(Lcom/google/ads/interactivemedia/v3/internal/ce;Lcom/google/ads/interactivemedia/v3/internal/ck;)V

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/cd;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/fp;

    const/16 v2, 0x1b

    new-array v2, v2, [B

    invoke-direct {v1, v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;-><init>([BI)V

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/dl$b;

    invoke-direct {v2}, Lcom/google/ads/interactivemedia/v3/internal/dl$b;-><init>()V

    const/4 v3, 0x1

    invoke-static {p1, v2, v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;Lcom/google/ads/interactivemedia/v3/internal/dl$b;Lcom/google/ads/interactivemedia/v3/internal/fp;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, v2, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->b:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_3

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->i:I

    const/4 v4, 0x7

    if-ge v2, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->a()V

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    invoke-interface {p1, v2, v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c([BII)V

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/dh;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/dh;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/dh;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->a:Lcom/google/ads/interactivemedia/v3/internal/dm;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->a()V

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/do;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/do;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/do;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->a:Lcom/google/ads/interactivemedia/v3/internal/dm;
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/bl; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v3

    :cond_2
    return v0

    :cond_3
    :goto_1
    return v0

    :catchall_0
    move-exception p1

    throw p1

    :catch_0
    return v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->a:Lcom/google/ads/interactivemedia/v3/internal/dm;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/dm;->b()V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
