.class final Lcom/google/ads/interactivemedia/v3/internal/dh;
.super Lcom/google/ads/interactivemedia/v3/internal/dm;
.source "IMASDK"


# instance fields
.field private e:Lcom/google/ads/interactivemedia/v3/internal/fi;

.field private f:Lcom/google/ads/interactivemedia/v3/internal/fh;

.field private g:Z


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/dm;-><init>()V

    return-void
.end method

.method static a(Lcom/google/ads/interactivemedia/v3/internal/fp;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->k()J

    move-result-wide v0

    const-wide/32 v2, 0x464c4143

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/internal/cd;Lcom/google/ads/interactivemedia/v3/internal/ch;)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c()J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/dh;->b:Lcom/google/ads/interactivemedia/v3/internal/dj;

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/dh;->a:Lcom/google/ads/interactivemedia/v3/internal/fp;

    move-object/from16 v5, p1

    invoke-virtual {v3, v5, v4}, Lcom/google/ads/interactivemedia/v3/internal/dj;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;Lcom/google/ads/interactivemedia/v3/internal/fp;)Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_0

    return v4

    :cond_0
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/dh;->a:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/dh;->e:Lcom/google/ads/interactivemedia/v3/internal/fi;

    const/4 v6, 0x0

    if-nez v5, :cond_1

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/fi;

    const/16 v2, 0x11

    invoke-direct {v1, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/fi;-><init>([BI)V

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dh;->e:Lcom/google/ads/interactivemedia/v3/internal/fi;

    const/16 v1, 0x9

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/dh;->a:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c()I

    move-result v2

    invoke-static {v3, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    const/4 v2, 0x4

    const/16 v3, -0x80

    aput-byte v3, v1, v2

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/4 v7, 0x0

    const-string v8, "audio/x-flac"

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dh;->e:Lcom/google/ads/interactivemedia/v3/internal/fi;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/fi;->a()I

    move-result v9

    const/4 v10, -0x1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dh;->e:Lcom/google/ads/interactivemedia/v3/internal/fi;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/fi;->b()J

    move-result-wide v11

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dh;->e:Lcom/google/ads/interactivemedia/v3/internal/fi;

    iget v13, v1, Lcom/google/ads/interactivemedia/v3/internal/fi;->f:I

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dh;->e:Lcom/google/ads/interactivemedia/v3/internal/fi;

    iget v14, v1, Lcom/google/ads/interactivemedia/v3/internal/fi;->e:I

    const/16 v16, 0x0

    invoke-static/range {v7 .. v16}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/bj;

    move-result-object v1

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/dh;->c:Lcom/google/ads/interactivemedia/v3/internal/ck;

    invoke-interface {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/bj;)V

    goto :goto_1

    :cond_1
    aget-byte v5, v3, v6

    if-ne v5, v4, :cond_4

    iget-boolean v3, v0, Lcom/google/ads/interactivemedia/v3/internal/dh;->g:Z

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/dh;->f:Lcom/google/ads/interactivemedia/v3/internal/fh;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/dh;->d:Lcom/google/ads/interactivemedia/v3/internal/ce;

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/dh;->f:Lcom/google/ads/interactivemedia/v3/internal/fh;

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/dh;->e:Lcom/google/ads/interactivemedia/v3/internal/fi;

    iget v5, v5, Lcom/google/ads/interactivemedia/v3/internal/fi;->e:I

    int-to-long v7, v5

    invoke-virtual {v4, v1, v2, v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/fh;->a(JJ)Lcom/google/ads/interactivemedia/v3/internal/cj;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/ce;->a(Lcom/google/ads/interactivemedia/v3/internal/cj;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dh;->f:Lcom/google/ads/interactivemedia/v3/internal/fh;

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dh;->d:Lcom/google/ads/interactivemedia/v3/internal/ce;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/cj;->f:Lcom/google/ads/interactivemedia/v3/internal/cj;

    invoke-interface {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ce;->a(Lcom/google/ads/interactivemedia/v3/internal/cj;)V

    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dh;->g:Z

    :cond_3
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dh;->c:Lcom/google/ads/interactivemedia/v3/internal/ck;

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/dh;->a:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/dh;->a:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;I)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dh;->a:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v1, v6}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dh;->e:Lcom/google/ads/interactivemedia/v3/internal/fi;

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/dh;->a:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-static {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/fj;->a(Lcom/google/ads/interactivemedia/v3/internal/fi;Lcom/google/ads/interactivemedia/v3/internal/fp;)J

    move-result-wide v8

    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/dh;->c:Lcom/google/ads/interactivemedia/v3/internal/ck;

    const/4 v10, 0x1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dh;->a:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface/range {v7 .. v13}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(JIII[B)V

    goto :goto_1

    :cond_4
    aget-byte v1, v3, v6

    and-int/lit8 v1, v1, 0x7f

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dh;->f:Lcom/google/ads/interactivemedia/v3/internal/fh;

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dh;->a:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/fh;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;)Lcom/google/ads/interactivemedia/v3/internal/fh;

    move-result-object v1

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dh;->f:Lcom/google/ads/interactivemedia/v3/internal/fh;

    :cond_5
    :goto_1
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dh;->a:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->a()V

    return v6
.end method
