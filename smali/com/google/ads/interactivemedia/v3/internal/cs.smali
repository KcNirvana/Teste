.class public final Lcom/google/ads/interactivemedia/v3/internal/cs;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/cc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/internal/cs$a;
    }
.end annotation


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I


# instance fields
.field private final d:J

.field private final e:Lcom/google/ads/interactivemedia/v3/internal/fp;

.field private final f:Lcom/google/ads/interactivemedia/v3/internal/fm;

.field private g:Lcom/google/ads/interactivemedia/v3/internal/ce;

.field private h:Lcom/google/ads/interactivemedia/v3/internal/ck;

.field private i:I

.field private j:Lcom/google/ads/interactivemedia/v3/internal/cg;

.field private k:Lcom/google/ads/interactivemedia/v3/internal/cs$a;

.field private l:J

.field private m:J

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Xing"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ft;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/ads/interactivemedia/v3/internal/cs;->a:I

    const-string v0, "Info"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ft;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/ads/interactivemedia/v3/internal/cs;->b:I

    const-string v0, "VBRI"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ft;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/ads/interactivemedia/v3/internal/cs;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/cs;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->d:J

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/fp;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/fp;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->e:Lcom/google/ads/interactivemedia/v3/internal/fp;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/fm;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/fm;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->f:Lcom/google/ads/interactivemedia/v3/internal/fm;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->l:J

    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/internal/cd;Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->a()V

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/cr;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;)Lcom/google/ads/interactivemedia/v3/internal/cg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->j:Lcom/google/ads/interactivemedia/v3/internal/cg;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b()J

    move-result-wide v2

    long-to-int v0, v2

    if-nez p2, :cond_0

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b(I)V

    :cond_0
    move v4, v0

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-eqz p2, :cond_2

    const/16 v5, 0x1000

    if-ne v0, v5, :cond_2

    return v1

    :cond_2
    if-nez p2, :cond_4

    const/high16 v5, 0x20000

    if-eq v0, v5, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/bl;

    const-string p2, "Searched too many bytes."

    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->e:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v5, v5, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    const/4 v6, 0x4

    const/4 v7, 0x1

    invoke-interface {p1, v5, v1, v6, v7}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b([BIIZ)Z

    move-result v5

    if-nez v5, :cond_5

    return v1

    :cond_5
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->e:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v5, v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->e:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v5

    if-eqz v2, :cond_6

    const v8, -0x1f400

    and-int v9, v5, v8

    and-int/2addr v8, v2

    if-ne v9, v8, :cond_7

    :cond_6
    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/internal/fm;->a(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_9

    :cond_7
    add-int/lit8 v0, v0, 0x1

    if-eqz p2, :cond_8

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->a()V

    add-int v2, v4, v0

    invoke-interface {p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c(I)V

    goto :goto_0

    :cond_8
    invoke-interface {p1, v7}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b(I)V

    goto :goto_0

    :cond_9
    add-int/2addr v3, v7

    if-ne v3, v7, :cond_a

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->f:Lcom/google/ads/interactivemedia/v3/internal/fm;

    invoke-static {v5, v2}, Lcom/google/ads/interactivemedia/v3/internal/fm;->a(ILcom/google/ads/interactivemedia/v3/internal/fm;)Z

    move v2, v5

    goto :goto_4

    :cond_a
    if-ne v3, v6, :cond_c

    if-eqz p2, :cond_b

    add-int/2addr v4, v0

    invoke-interface {p1, v4}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b(I)V

    goto :goto_3

    :cond_b
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->a()V

    :goto_3
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->i:I

    return v7

    :cond_c
    :goto_4
    add-int/lit8 v8, v8, -0x4

    invoke-interface {p1, v8}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c(I)V

    goto :goto_1
.end method

.method private b(Lcom/google/ads/interactivemedia/v3/internal/cd;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->n:I

    const/4 v1, -0x1

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/cs;->c(Lcom/google/ads/interactivemedia/v3/internal/cd;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->l:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->k:Lcom/google/ads/interactivemedia/v3/internal/cs$a;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/cs$a;->a(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->l:J

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->d:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->k:Lcom/google/ads/interactivemedia/v3/internal/cs$a;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/cs$a;->a(J)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->l:J

    iget-wide v6, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->d:J

    sub-long/2addr v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->l:J

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->f:Lcom/google/ads/interactivemedia/v3/internal/fm;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/fm;->c:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->n:I

    :cond_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->h:Lcom/google/ads/interactivemedia/v3/internal/ck;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->n:I

    const/4 v3, 0x1

    invoke-interface {v0, p1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;IZ)I

    move-result p1

    if-ne p1, v1, :cond_3

    return v1

    :cond_3
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->n:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->n:I

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->n:I

    const/4 v0, 0x0

    if-lez p1, :cond_4

    return v0

    :cond_4
    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->l:J

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->m:J

    const-wide/32 v5, 0xf4240

    mul-long v3, v3, v5

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->f:Lcom/google/ads/interactivemedia/v3/internal/fm;

    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/fm;->d:I

    int-to-long v5, p1

    div-long/2addr v3, v5

    add-long v6, v1, v3

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->h:Lcom/google/ads/interactivemedia/v3/internal/ck;

    const/4 v8, 0x1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->f:Lcom/google/ads/interactivemedia/v3/internal/fm;

    iget v9, p1, Lcom/google/ads/interactivemedia/v3/internal/fm;->c:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(JIII[B)V

    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->m:J

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->f:Lcom/google/ads/interactivemedia/v3/internal/fm;

    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/fm;->g:I

    int-to-long v3, p1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->m:J

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->n:I

    return v0
.end method

.method private c(Lcom/google/ads/interactivemedia/v3/internal/cd;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->a()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->e:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {p1, v0, v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->e:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->e:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v0

    const v3, -0x1f400

    and-int v4, v0, v3

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->i:I

    and-int/2addr v3, v5

    if-ne v4, v3, :cond_1

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/fm;->a(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->f:Lcom/google/ads/interactivemedia/v3/internal/fm;

    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/fm;->a(ILcom/google/ads/interactivemedia/v3/internal/fm;)Z

    return v1

    :cond_1
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->i:I

    invoke-interface {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b(I)V

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/cs;->d(Lcom/google/ads/interactivemedia/v3/internal/cd;)Z

    move-result p1

    return p1
.end method

.method private d(Lcom/google/ads/interactivemedia/v3/internal/cd;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/cs;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;Z)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method private e(Lcom/google/ads/interactivemedia/v3/internal/cd;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->f:Lcom/google/ads/interactivemedia/v3/internal/fm;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/fm;->c:I

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;-><init>(I)V

    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->f:Lcom/google/ads/interactivemedia/v3/internal/fm;

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/fm;->c:I

    const/4 v6, 0x0

    invoke-interface {p1, v0, v6, v2}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c([BII)V

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->d()J

    move-result-wide v11

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->f:Lcom/google/ads/interactivemedia/v3/internal/fm;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/fm;->a:I

    const/4 v4, 0x1

    and-int/2addr v0, v4

    const/16 v5, 0x15

    const/16 v7, 0x24

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->f:Lcom/google/ads/interactivemedia/v3/internal/fm;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/fm;->e:I

    if-eq v0, v4, :cond_0

    const/16 v8, 0x24

    goto :goto_1

    :cond_0
    :goto_0
    const/16 v8, 0x15

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->f:Lcom/google/ads/interactivemedia/v3/internal/fm;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/fm;->e:I

    if-eq v0, v4, :cond_2

    goto :goto_0

    :cond_2
    const/16 v5, 0xd

    const/16 v8, 0xd

    :goto_1
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c()I

    move-result v0

    add-int/lit8 v4, v8, 0x4

    if-lt v0, v4, :cond_3

    invoke-virtual {v1, v8}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    sget v4, Lcom/google/ads/interactivemedia/v3/internal/cs;->a:I

    if-eq v0, v4, :cond_5

    sget v4, Lcom/google/ads/interactivemedia/v3/internal/cs;->b:I

    if-ne v0, v4, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c()I

    move-result v0

    const/16 v4, 0x28

    if-lt v0, v4, :cond_7

    invoke-virtual {v1, v7}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v0

    sget v4, Lcom/google/ads/interactivemedia/v3/internal/cs;->c:I

    if-ne v0, v4, :cond_7

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->f:Lcom/google/ads/interactivemedia/v3/internal/fm;

    move-wide v4, v11

    invoke-static/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/ct;->a(Lcom/google/ads/interactivemedia/v3/internal/fm;Lcom/google/ads/interactivemedia/v3/internal/fp;JJ)Lcom/google/ads/interactivemedia/v3/internal/ct;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->k:Lcom/google/ads/interactivemedia/v3/internal/cs$a;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->f:Lcom/google/ads/interactivemedia/v3/internal/fm;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/fm;->c:I

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b(I)V

    goto :goto_4

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->f:Lcom/google/ads/interactivemedia/v3/internal/fm;

    move-wide v4, v11

    invoke-static/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/cu;->a(Lcom/google/ads/interactivemedia/v3/internal/fm;Lcom/google/ads/interactivemedia/v3/internal/fp;JJ)Lcom/google/ads/interactivemedia/v3/internal/cu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->k:Lcom/google/ads/interactivemedia/v3/internal/cs$a;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->k:Lcom/google/ads/interactivemedia/v3/internal/cs$a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->j:Lcom/google/ads/interactivemedia/v3/internal/cg;

    if-nez v0, :cond_6

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->a()V

    add-int/lit16 v8, v8, 0x8d

    invoke-interface {p1, v8}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->e:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    const/4 v1, 0x3

    invoke-interface {p1, v0, v6, v1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c([BII)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->e:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v0, v6}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->e:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->j()I

    move-result v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/cg;->a(I)Lcom/google/ads/interactivemedia/v3/internal/cg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->j:Lcom/google/ads/interactivemedia/v3/internal/cg;

    :cond_6
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->f:Lcom/google/ads/interactivemedia/v3/internal/fm;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/fm;->c:I

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b(I)V

    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->k:Lcom/google/ads/interactivemedia/v3/internal/cs$a;

    if-nez v0, :cond_8

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->a()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->e:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    const/4 v1, 0x4

    invoke-interface {p1, v0, v6, v1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c([BII)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->e:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v0, v6}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->e:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->f:Lcom/google/ads/interactivemedia/v3/internal/fm;

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fm;->a(ILcom/google/ads/interactivemedia/v3/internal/fm;)Z

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/cq;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c()J

    move-result-wide v8

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->f:Lcom/google/ads/interactivemedia/v3/internal/fm;

    iget v10, p1, Lcom/google/ads/interactivemedia/v3/internal/fm;->f:I

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/google/ads/interactivemedia/v3/internal/cq;-><init>(JIJ)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->k:Lcom/google/ads/interactivemedia/v3/internal/cs$a;

    :cond_8
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

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->i:I

    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/cs;->d(Lcom/google/ads/interactivemedia/v3/internal/cd;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->k:Lcom/google/ads/interactivemedia/v3/internal/cs$a;

    if-nez p2, :cond_2

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/cs;->e(Lcom/google/ads/interactivemedia/v3/internal/cd;)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->g:Lcom/google/ads/interactivemedia/v3/internal/ce;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->k:Lcom/google/ads/interactivemedia/v3/internal/cs$a;

    invoke-interface {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/ce;->a(Lcom/google/ads/interactivemedia/v3/internal/cj;)V

    const/4 v1, 0x0

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->f:Lcom/google/ads/interactivemedia/v3/internal/fm;

    iget-object v2, p2, Lcom/google/ads/interactivemedia/v3/internal/fm;->b:Ljava/lang/String;

    const/4 v3, -0x1

    const/16 v4, 0x1000

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->k:Lcom/google/ads/interactivemedia/v3/internal/cs$a;

    invoke-interface {p2}, Lcom/google/ads/interactivemedia/v3/internal/cs$a;->b()J

    move-result-wide v5

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->f:Lcom/google/ads/interactivemedia/v3/internal/fm;

    iget v7, p2, Lcom/google/ads/interactivemedia/v3/internal/fm;->e:I

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->f:Lcom/google/ads/interactivemedia/v3/internal/fm;

    iget v8, p2, Lcom/google/ads/interactivemedia/v3/internal/fm;->d:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v1 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/bj;

    move-result-object p2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->j:Lcom/google/ads/interactivemedia/v3/internal/cg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->j:Lcom/google/ads/interactivemedia/v3/internal/cg;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/cg;->a:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->j:Lcom/google/ads/interactivemedia/v3/internal/cg;

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/internal/cg;->b:I

    invoke-virtual {p2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(II)Lcom/google/ads/interactivemedia/v3/internal/bj;

    move-result-object p2

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->h:Lcom/google/ads/interactivemedia/v3/internal/ck;

    invoke-interface {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/bj;)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/cs;->b(Lcom/google/ads/interactivemedia/v3/internal/cd;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/ce;)V
    .locals 1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->g:Lcom/google/ads/interactivemedia/v3/internal/ce;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ce;->d(I)Lcom/google/ads/interactivemedia/v3/internal/ck;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->h:Lcom/google/ads/interactivemedia/v3/internal/ck;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/ce;->f()V

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/cd;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/cs;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;Z)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->i:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->m:J

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->l:J

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cs;->n:I

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
