.class final Lcom/google/ads/interactivemedia/v3/internal/do;
.super Lcom/google/ads/interactivemedia/v3/internal/dm;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/cj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/internal/do$a;
    }
.end annotation


# instance fields
.field private e:Lcom/google/ads/interactivemedia/v3/internal/do$a;

.field private g:I

.field private h:J

.field private i:Z

.field private final j:Lcom/google/ads/interactivemedia/v3/internal/dk;

.field private k:J

.field private l:Lcom/google/ads/interactivemedia/v3/internal/dp$d;

.field private m:Lcom/google/ads/interactivemedia/v3/internal/dp$b;

.field private n:J

.field private o:J

.field private p:J

.field private q:J


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/dm;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/dk;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/dk;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->j:Lcom/google/ads/interactivemedia/v3/internal/dk;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->k:J

    return-void
.end method

.method private static a(BLcom/google/ads/interactivemedia/v3/internal/do$a;)I
    .locals 2

    iget v0, p1, Lcom/google/ads/interactivemedia/v3/internal/do$a;->e:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(BII)I

    move-result p0

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/do$a;->d:[Lcom/google/ads/interactivemedia/v3/internal/dp$c;

    aget-object p0, v0, p0

    iget-boolean p0, p0, Lcom/google/ads/interactivemedia/v3/internal/dp$c;->a:Z

    if-nez p0, :cond_0

    iget-object p0, p1, Lcom/google/ads/interactivemedia/v3/internal/do$a;->a:Lcom/google/ads/interactivemedia/v3/internal/dp$d;

    iget p0, p0, Lcom/google/ads/interactivemedia/v3/internal/dp$d;->g:I

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/google/ads/interactivemedia/v3/internal/do$a;->a:Lcom/google/ads/interactivemedia/v3/internal/dp$d;

    iget p0, p0, Lcom/google/ads/interactivemedia/v3/internal/dp$d;->h:I

    :goto_0
    return p0
.end method

.method static a(Lcom/google/ads/interactivemedia/v3/internal/fp;J)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->b(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    const-wide/16 v2, 0xff

    and-long v4, p1, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    const/16 v4, 0x8

    ushr-long v4, p1, v4

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/16 v4, 0x10

    ushr-long v4, p1, v4

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/16 v1, 0x18

    ushr-long/2addr p1, v1

    and-long/2addr p1, v2

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, p0

    return-void
.end method

.method static a(Lcom/google/ads/interactivemedia/v3/internal/fp;)Z
    .locals 1

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0, p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/dp;->a(ILcom/google/ads/interactivemedia/v3/internal/fp;Z)Z

    move-result p0
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/bl; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/internal/cd;Lcom/google/ads/interactivemedia/v3/internal/ch;)I
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-wide v3, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->p:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const-wide/32 v7, 0xf4240

    const/4 v4, 0x1

    const-wide/16 v9, -0x1

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->e:Lcom/google/ads/interactivemedia/v3/internal/do$a;

    if-nez v3, :cond_0

    invoke-interface/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->d()J

    move-result-wide v11

    iput-wide v11, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->n:J

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->a:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v0, v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/do;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;Lcom/google/ads/interactivemedia/v3/internal/fp;)Lcom/google/ads/interactivemedia/v3/internal/do$a;

    move-result-object v3

    iput-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->e:Lcom/google/ads/interactivemedia/v3/internal/do$a;

    invoke-interface/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c()J

    move-result-wide v11

    iput-wide v11, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->o:J

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->d:Lcom/google/ads/interactivemedia/v3/internal/ce;

    invoke-interface {v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/ce;->a(Lcom/google/ads/interactivemedia/v3/internal/cj;)V

    iget-wide v11, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->n:J

    cmp-long v3, v11, v9

    if-eqz v3, :cond_0

    invoke-interface/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->d()J

    move-result-wide v7

    const-wide/16 v9, 0x1f40

    sub-long/2addr v7, v9

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v2, Lcom/google/ads/interactivemedia/v3/internal/ch;->a:J

    return v4

    :cond_0
    iget-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->n:J

    cmp-long v3, v5, v9

    if-nez v3, :cond_1

    move-wide v5, v9

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->b:Lcom/google/ads/interactivemedia/v3/internal/dj;

    invoke-virtual {v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/dj;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;)J

    move-result-wide v5

    :goto_0
    iput-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->p:J

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->e:Lcom/google/ads/interactivemedia/v3/internal/do$a;

    iget-object v5, v5, Lcom/google/ads/interactivemedia/v3/internal/do$a;->a:Lcom/google/ads/interactivemedia/v3/internal/dp$d;

    iget-object v5, v5, Lcom/google/ads/interactivemedia/v3/internal/dp$d;->j:[B

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->e:Lcom/google/ads/interactivemedia/v3/internal/do$a;

    iget-object v5, v5, Lcom/google/ads/interactivemedia/v3/internal/do$a;->c:[B

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->n:J

    cmp-long v5, v5, v9

    if-nez v5, :cond_2

    move-wide v5, v9

    goto :goto_1

    :cond_2
    iget-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->p:J

    mul-long v5, v5, v7

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->e:Lcom/google/ads/interactivemedia/v3/internal/do$a;

    iget-object v11, v11, Lcom/google/ads/interactivemedia/v3/internal/do$a;->a:Lcom/google/ads/interactivemedia/v3/internal/dp$d;

    iget-wide v11, v11, Lcom/google/ads/interactivemedia/v3/internal/dp$d;->c:J

    div-long/2addr v5, v11

    :goto_1
    iput-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->q:J

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->c:Lcom/google/ads/interactivemedia/v3/internal/ck;

    const/4 v11, 0x0

    const-string v12, "audio/vorbis"

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->e:Lcom/google/ads/interactivemedia/v3/internal/do$a;

    iget-object v6, v6, Lcom/google/ads/interactivemedia/v3/internal/do$a;->a:Lcom/google/ads/interactivemedia/v3/internal/dp$d;

    iget v13, v6, Lcom/google/ads/interactivemedia/v3/internal/dp$d;->e:I

    const v14, 0xfe01

    iget-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->q:J

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->e:Lcom/google/ads/interactivemedia/v3/internal/do$a;

    iget-object v6, v6, Lcom/google/ads/interactivemedia/v3/internal/do$a;->a:Lcom/google/ads/interactivemedia/v3/internal/dp$d;

    iget v6, v6, Lcom/google/ads/interactivemedia/v3/internal/dp$d;->b:I

    iget-object v15, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->e:Lcom/google/ads/interactivemedia/v3/internal/do$a;

    iget-object v15, v15, Lcom/google/ads/interactivemedia/v3/internal/do$a;->a:Lcom/google/ads/interactivemedia/v3/internal/dp$d;

    iget-wide v9, v15, Lcom/google/ads/interactivemedia/v3/internal/dp$d;->c:J

    long-to-int v9, v9

    const/16 v20, 0x0

    move-wide v15, v7

    move/from16 v17, v6

    move/from16 v18, v9

    move-object/from16 v19, v3

    invoke-static/range {v11 .. v20}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/bj;

    move-result-object v3

    invoke-interface {v5, v3}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/bj;)V

    iget-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->n:J

    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-eqz v3, :cond_3

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->j:Lcom/google/ads/interactivemedia/v3/internal/dk;

    iget-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->n:J

    iget-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->o:J

    sub-long/2addr v5, v7

    iget-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->p:J

    invoke-virtual {v1, v5, v6, v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/dk;->a(JJ)V

    iget-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->o:J

    iput-wide v5, v2, Lcom/google/ads/interactivemedia/v3/internal/ch;->a:J

    return v4

    :cond_3
    iget-boolean v3, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->i:Z

    if-nez v3, :cond_5

    iget-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->k:J

    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-lez v3, :cond_5

    invoke-static/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;)V

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->j:Lcom/google/ads/interactivemedia/v3/internal/dk;

    iget-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->k:J

    invoke-virtual {v3, v5, v6, v1}, Lcom/google/ads/interactivemedia/v3/internal/dk;->a(JLcom/google/ads/interactivemedia/v3/internal/cd;)J

    move-result-wide v5

    cmp-long v3, v5, v7

    if-eqz v3, :cond_4

    iput-wide v5, v2, Lcom/google/ads/interactivemedia/v3/internal/ch;->a:J

    return v4

    :cond_4
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->b:Lcom/google/ads/interactivemedia/v3/internal/dj;

    iget-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->k:J

    invoke-virtual {v2, v1, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/dj;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->h:J

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->l:Lcom/google/ads/interactivemedia/v3/internal/dp$d;

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/dp$d;->g:I

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->g:I

    iput-boolean v4, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->i:Z

    :cond_5
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->b:Lcom/google/ads/interactivemedia/v3/internal/dj;

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->a:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v2, v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/dj;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;Lcom/google/ads/interactivemedia/v3/internal/fp;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->a:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/2addr v1, v4

    if-eq v1, v4, :cond_8

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->a:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    aget-byte v1, v1, v2

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->e:Lcom/google/ads/interactivemedia/v3/internal/do$a;

    invoke-static {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/do;->a(BLcom/google/ads/interactivemedia/v3/internal/do$a;)I

    move-result v1

    iget-boolean v3, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->i:Z

    if-eqz v3, :cond_6

    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->g:I

    add-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x4

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    iget-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->h:J

    int-to-long v7, v3

    add-long/2addr v5, v7

    iget-wide v9, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->k:J

    cmp-long v3, v5, v9

    if-ltz v3, :cond_7

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->a:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-static {v3, v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/do;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;J)V

    iget-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->h:J

    const-wide/32 v9, 0xf4240

    mul-long v5, v5, v9

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->e:Lcom/google/ads/interactivemedia/v3/internal/do$a;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/do$a;->a:Lcom/google/ads/interactivemedia/v3/internal/dp$d;

    iget-wide v9, v3, Lcom/google/ads/interactivemedia/v3/internal/dp$d;->c:J

    div-long v12, v5, v9

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->c:Lcom/google/ads/interactivemedia/v3/internal/ck;

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->a:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->a:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c()I

    move-result v6

    invoke-interface {v3, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;I)V

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->c:Lcom/google/ads/interactivemedia/v3/internal/ck;

    const/4 v14, 0x1

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->a:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c()I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-interface/range {v11 .. v17}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(JIII[B)V

    const-wide/16 v5, -0x1

    iput-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->k:J

    :cond_7
    iput-boolean v4, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->i:Z

    iget-wide v3, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->h:J

    add-long/2addr v3, v7

    iput-wide v3, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->h:J

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->g:I

    :cond_8
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/do;->a:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->a()V

    return v2

    :cond_9
    const/4 v1, -0x1

    return v1
.end method

.method a(Lcom/google/ads/interactivemedia/v3/internal/cd;Lcom/google/ads/interactivemedia/v3/internal/fp;)Lcom/google/ads/interactivemedia/v3/internal/do$a;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->l:Lcom/google/ads/interactivemedia/v3/internal/dp$d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->b:Lcom/google/ads/interactivemedia/v3/internal/dj;

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/dj;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;Lcom/google/ads/interactivemedia/v3/internal/fp;)Z

    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/dp;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;)Lcom/google/ads/interactivemedia/v3/internal/dp$d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->l:Lcom/google/ads/interactivemedia/v3/internal/dp$d;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->a()V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->m:Lcom/google/ads/interactivemedia/v3/internal/dp$b;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->b:Lcom/google/ads/interactivemedia/v3/internal/dj;

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/dj;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;Lcom/google/ads/interactivemedia/v3/internal/fp;)Z

    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/dp;->b(Lcom/google/ads/interactivemedia/v3/internal/fp;)Lcom/google/ads/interactivemedia/v3/internal/dp$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->m:Lcom/google/ads/interactivemedia/v3/internal/dp$b;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->a()V

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->b:Lcom/google/ads/interactivemedia/v3/internal/dj;

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/dj;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;Lcom/google/ads/interactivemedia/v3/internal/fp;)Z

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c()I

    move-result p1

    new-array v3, p1, [B

    iget-object p1, p2, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->l:Lcom/google/ads/interactivemedia/v3/internal/dp$d;

    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/dp$d;->b:I

    invoke-static {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/dp;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;I)[Lcom/google/ads/interactivemedia/v3/internal/dp$c;

    move-result-object v4

    array-length p1, v4

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/dp;->a(I)I

    move-result v5

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->a()V

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/do$a;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->l:Lcom/google/ads/interactivemedia/v3/internal/dp$d;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->m:Lcom/google/ads/interactivemedia/v3/internal/dp$b;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/do$a;-><init>(Lcom/google/ads/interactivemedia/v3/internal/dp$d;Lcom/google/ads/interactivemedia/v3/internal/dp$b;[B[Lcom/google/ads/interactivemedia/v3/internal/dp$c;I)V

    return-object p1
.end method

.method public a()Z
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->e:Lcom/google/ads/interactivemedia/v3/internal/do$a;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->n:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(J)J
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->k:J

    iget-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->o:J

    return-wide p1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->e:Lcom/google/ads/interactivemedia/v3/internal/do$a;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/do$a;->a:Lcom/google/ads/interactivemedia/v3/internal/dp$d;

    iget-wide v0, v0, Lcom/google/ads/interactivemedia/v3/internal/dp$d;->c:J

    mul-long v0, v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->k:J

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->o:J

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->n:J

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->o:J

    sub-long/2addr v2, v4

    mul-long v2, v2, p1

    iget-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->q:J

    div-long/2addr v2, p1

    const-wide/16 p1, 0xfa0

    sub-long/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public b()V
    .locals 3

    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/internal/dm;->b()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->g:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->h:J

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->i:Z

    return-void
.end method
