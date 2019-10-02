.class public final Lcom/google/ads/interactivemedia/v3/internal/ef;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/cc;
.implements Lcom/google/ads/interactivemedia/v3/internal/cj;


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/internal/ce;

.field private b:Lcom/google/ads/interactivemedia/v3/internal/ck;

.field private c:Lcom/google/ads/interactivemedia/v3/internal/eg;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/internal/cd;Lcom/google/ads/interactivemedia/v3/internal/ch;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ef;->c:Lcom/google/ads/interactivemedia/v3/internal/eg;

    if-nez p2, :cond_1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/eh;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;)Lcom/google/ads/interactivemedia/v3/internal/eg;

    move-result-object p2

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ef;->c:Lcom/google/ads/interactivemedia/v3/internal/eg;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ef;->c:Lcom/google/ads/interactivemedia/v3/internal/eg;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ef;->c:Lcom/google/ads/interactivemedia/v3/internal/eg;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/eg;->b()I

    move-result p2

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ef;->d:I

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/bl;

    const-string p2, "Error initializing WavHeader. Did you sniff first?"

    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ef;->c:Lcom/google/ads/interactivemedia/v3/internal/eg;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/eg;->f()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ef;->c:Lcom/google/ads/interactivemedia/v3/internal/eg;

    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/eh;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;Lcom/google/ads/interactivemedia/v3/internal/eg;)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ef;->b:Lcom/google/ads/interactivemedia/v3/internal/ck;

    const/4 v0, 0x0

    const-string v1, "audio/raw"

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ef;->c:Lcom/google/ads/interactivemedia/v3/internal/eg;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/eg;->c()I

    move-result v2

    const v3, 0x8000

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ef;->c:Lcom/google/ads/interactivemedia/v3/internal/eg;

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/eg;->a()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/ef;->c:Lcom/google/ads/interactivemedia/v3/internal/eg;

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/eg;->e()I

    move-result v6

    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/internal/ef;->c:Lcom/google/ads/interactivemedia/v3/internal/eg;

    invoke-virtual {v7}, Lcom/google/ads/interactivemedia/v3/internal/eg;->d()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/ads/interactivemedia/v3/internal/ef;->c:Lcom/google/ads/interactivemedia/v3/internal/eg;

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/eg;->g()I

    move-result v10

    invoke-static/range {v0 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;I)Lcom/google/ads/interactivemedia/v3/internal/bj;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/bj;)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ef;->a:Lcom/google/ads/interactivemedia/v3/internal/ce;

    invoke-interface {p2, p0}, Lcom/google/ads/interactivemedia/v3/internal/ce;->a(Lcom/google/ads/interactivemedia/v3/internal/cj;)V

    :cond_2
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ef;->b:Lcom/google/ads/interactivemedia/v3/internal/ck;

    const v0, 0x8000

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ef;->e:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-interface {p2, p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;IZ)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ef;->e:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ef;->e:I

    :cond_3
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ef;->e:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ef;->d:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ef;->d:I

    mul-int v7, v1, v2

    if-lez v7, :cond_4

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c()J

    move-result-wide v1

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ef;->e:I

    int-to-long v3, p1

    sub-long/2addr v1, v3

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ef;->e:I

    sub-int/2addr p1, v7

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ef;->e:I

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ef;->b:Lcom/google/ads/interactivemedia/v3/internal/ck;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ef;->c:Lcom/google/ads/interactivemedia/v3/internal/eg;

    invoke-virtual {p1, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/eg;->b(J)J

    move-result-wide v4

    const/4 v6, 0x1

    iget v8, p0, Lcom/google/ads/interactivemedia/v3/internal/ef;->e:I

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(JIII[B)V

    :cond_4
    if-ne p2, v0, :cond_5

    return v0

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/ce;)V
    .locals 1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ef;->a:Lcom/google/ads/interactivemedia/v3/internal/ce;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ce;->d(I)Lcom/google/ads/interactivemedia/v3/internal/ck;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ef;->b:Lcom/google/ads/interactivemedia/v3/internal/ck;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ef;->c:Lcom/google/ads/interactivemedia/v3/internal/eg;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/ce;->f()V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/cd;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/eh;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;)Lcom/google/ads/interactivemedia/v3/internal/eg;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(J)J
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ef;->c:Lcom/google/ads/interactivemedia/v3/internal/eg;

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/eg;->a(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ef;->e:I

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
