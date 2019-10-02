.class final Lcom/google/ads/interactivemedia/v3/internal/ed;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/ck;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ck;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ed;->a:Lcom/google/ads/interactivemedia/v3/internal/ck;

    const-string v1, "application/eia-608"

    const/4 v0, 0x0

    const/4 v2, -0x1

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/bj;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/bj;)V

    return-void
.end method


# virtual methods
.method public a(JLcom/google/ads/interactivemedia/v3/internal/fp;)V
    .locals 11

    :goto_0
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/fp;->b()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v3, 0xff

    if-eq v2, v3, :cond_0

    :goto_1
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result v2

    add-int v8, v0, v2

    if-eq v2, v3, :cond_2

    invoke-static {v1, v8, p3}, Lcom/google/ads/interactivemedia/v3/internal/eo;->a(IILcom/google/ads/interactivemedia/v3/internal/fp;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ed;->a:Lcom/google/ads/interactivemedia/v3/internal/ck;

    invoke-interface {v0, p3, v8}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;I)V

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ed;->a:Lcom/google/ads/interactivemedia/v3/internal/ck;

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide v5, p1

    invoke-interface/range {v4 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(JIII[B)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3, v8}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    goto :goto_0

    :cond_2
    move v0, v8

    goto :goto_1

    :cond_3
    return-void
.end method
