.class final Lcom/google/ads/interactivemedia/v3/internal/cf$c;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/internal/cf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:[Lcom/google/ads/interactivemedia/v3/internal/cc;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/ce;

.field private c:Lcom/google/ads/interactivemedia/v3/internal/cc;


# direct methods
.method public constructor <init>([Lcom/google/ads/interactivemedia/v3/internal/cc;Lcom/google/ads/interactivemedia/v3/internal/ce;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf$c;->a:[Lcom/google/ads/interactivemedia/v3/internal/cc;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/cf$c;->b:Lcom/google/ads/interactivemedia/v3/internal/ce;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/internal/cd;)Lcom/google/ads/interactivemedia/v3/internal/cc;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/cf$e;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf$c;->c:Lcom/google/ads/interactivemedia/v3/internal/cc;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf$c;->c:Lcom/google/ads/interactivemedia/v3/internal/cc;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf$c;->a:[Lcom/google/ads/interactivemedia/v3/internal/cc;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    :try_start_0
    invoke-interface {v3, p1}, Lcom/google/ads/interactivemedia/v3/internal/cc;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/cf$c;->c:Lcom/google/ads/interactivemedia/v3/internal/cc;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->a()V

    goto :goto_2

    :cond_1
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->a()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->a()V

    throw v0

    :catch_0
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->a()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf$c;->c:Lcom/google/ads/interactivemedia/v3/internal/cc;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf$c;->c:Lcom/google/ads/interactivemedia/v3/internal/cc;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf$c;->b:Lcom/google/ads/interactivemedia/v3/internal/ce;

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/cc;->a(Lcom/google/ads/interactivemedia/v3/internal/ce;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cf$c;->c:Lcom/google/ads/interactivemedia/v3/internal/cc;

    return-object p1

    :cond_3
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/cf$e;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf$c;->a:[Lcom/google/ads/interactivemedia/v3/internal/cc;

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/cf$e;-><init>([Lcom/google/ads/interactivemedia/v3/internal/cc;)V

    throw p1
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf$c;->c:Lcom/google/ads/interactivemedia/v3/internal/cc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf$c;->c:Lcom/google/ads/interactivemedia/v3/internal/cc;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/cc;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cf$c;->c:Lcom/google/ads/interactivemedia/v3/internal/cc;

    :cond_0
    return-void
.end method
