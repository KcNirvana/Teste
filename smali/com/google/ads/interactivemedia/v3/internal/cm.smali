.class public final Lcom/google/ads/interactivemedia/v3/internal/cm;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/cc;
.implements Lcom/google/ads/interactivemedia/v3/internal/cj;


# static fields
.field private static final d:I


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field private final e:Lcom/google/ads/interactivemedia/v3/internal/fp;

.field private final g:Lcom/google/ads/interactivemedia/v3/internal/fp;

.field private final h:Lcom/google/ads/interactivemedia/v3/internal/fp;

.field private final i:Lcom/google/ads/interactivemedia/v3/internal/fp;

.field private j:Lcom/google/ads/interactivemedia/v3/internal/ce;

.field private k:I

.field private l:I

.field private m:Lcom/google/ads/interactivemedia/v3/internal/cl;

.field private n:Lcom/google/ads/interactivemedia/v3/internal/cp;

.field private o:Lcom/google/ads/interactivemedia/v3/internal/cn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "FLV"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ft;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/ads/interactivemedia/v3/internal/cm;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/fp;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->e:Lcom/google/ads/interactivemedia/v3/internal/fp;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/fp;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->g:Lcom/google/ads/interactivemedia/v3/internal/fp;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/fp;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->h:Lcom/google/ads/interactivemedia/v3/internal/fp;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->i:Lcom/google/ads/interactivemedia/v3/internal/fp;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->k:I

    return-void
.end method

.method private b(Lcom/google/ads/interactivemedia/v3/internal/cd;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->g:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    const/16 v1, 0x9

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p1, v0, v3, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/cd;->a([BIIZ)Z

    move-result p1

    if-nez p1, :cond_0

    return v3

    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->g:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {p1, v3}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->g:Lcom/google/ads/interactivemedia/v3/internal/fp;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->g:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result p1

    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    and-int/2addr p1, v2

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    :cond_2
    if-eqz v4, :cond_3

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->m:Lcom/google/ads/interactivemedia/v3/internal/cl;

    if-nez p1, :cond_3

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/cl;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->j:Lcom/google/ads/interactivemedia/v3/internal/ce;

    const/16 v5, 0x8

    invoke-interface {v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/ce;->d(I)Lcom/google/ads/interactivemedia/v3/internal/ck;

    move-result-object v4

    invoke-direct {p1, v4}, Lcom/google/ads/interactivemedia/v3/internal/cl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ck;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->m:Lcom/google/ads/interactivemedia/v3/internal/cl;

    :cond_3
    if-eqz v3, :cond_4

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->n:Lcom/google/ads/interactivemedia/v3/internal/cp;

    if-nez p1, :cond_4

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/cp;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->j:Lcom/google/ads/interactivemedia/v3/internal/ce;

    invoke-interface {v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/ce;->d(I)Lcom/google/ads/interactivemedia/v3/internal/ck;

    move-result-object v3

    invoke-direct {p1, v3}, Lcom/google/ads/interactivemedia/v3/internal/cp;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ck;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->n:Lcom/google/ads/interactivemedia/v3/internal/cp;

    :cond_4
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->o:Lcom/google/ads/interactivemedia/v3/internal/cn;

    if-nez p1, :cond_5

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/cn;

    const/4 v3, 0x0

    invoke-direct {p1, v3}, Lcom/google/ads/interactivemedia/v3/internal/cn;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ck;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->o:Lcom/google/ads/interactivemedia/v3/internal/cn;

    :cond_5
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->j:Lcom/google/ads/interactivemedia/v3/internal/ce;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/ce;->f()V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->j:Lcom/google/ads/interactivemedia/v3/internal/ce;

    invoke-interface {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/ce;->a(Lcom/google/ads/interactivemedia/v3/internal/cj;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->g:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result p1

    sub-int/2addr p1, v1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->l:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->k:I

    return v2
.end method

.method private c(Lcom/google/ads/interactivemedia/v3/internal/cd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->l:I

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b(I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->l:I

    const/4 p1, 0x3

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->k:I

    return-void
.end method

.method private d(Lcom/google/ads/interactivemedia/v3/internal/cd;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->h:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xb

    invoke-interface {p1, v0, v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->a([BIIZ)Z

    move-result p1

    if-nez p1, :cond_0

    return v2

    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->h:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->h:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result p1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->a:I

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->h:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->j()I

    move-result p1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->b:I

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->h:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->j()I

    move-result p1

    int-to-long v2, p1

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->c:J

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->h:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result p1

    shl-int/lit8 p1, p1, 0x18

    int-to-long v2, p1

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->c:J

    or-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->c:J

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->h:Lcom/google/ads/interactivemedia/v3/internal/fp;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->k:I

    return v1
.end method

.method private e(Lcom/google/ads/interactivemedia/v3/internal/cd;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->a:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->m:Lcom/google/ads/interactivemedia/v3/internal/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->m:Lcom/google/ads/interactivemedia/v3/internal/cl;

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/cm;->f(Lcom/google/ads/interactivemedia/v3/internal/cd;)Lcom/google/ads/interactivemedia/v3/internal/fp;

    move-result-object p1

    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->c:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/cl;->b(Lcom/google/ads/interactivemedia/v3/internal/fp;J)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->a:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->n:Lcom/google/ads/interactivemedia/v3/internal/cp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->n:Lcom/google/ads/interactivemedia/v3/internal/cp;

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/cm;->f(Lcom/google/ads/interactivemedia/v3/internal/cd;)Lcom/google/ads/interactivemedia/v3/internal/fp;

    move-result-object p1

    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->c:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/cp;->b(Lcom/google/ads/interactivemedia/v3/internal/fp;J)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->a:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->o:Lcom/google/ads/interactivemedia/v3/internal/cn;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->o:Lcom/google/ads/interactivemedia/v3/internal/cn;

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/cm;->f(Lcom/google/ads/interactivemedia/v3/internal/cd;)Lcom/google/ads/interactivemedia/v3/internal/fp;

    move-result-object p1

    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->c:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/cn;->b(Lcom/google/ads/interactivemedia/v3/internal/fp;J)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->o:Lcom/google/ads/interactivemedia/v3/internal/cn;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/cn;->a()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->m:Lcom/google/ads/interactivemedia/v3/internal/cl;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->m:Lcom/google/ads/interactivemedia/v3/internal/cl;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->o:Lcom/google/ads/interactivemedia/v3/internal/cn;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/cn;->a()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/cl;->a(J)V

    :cond_2
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->n:Lcom/google/ads/interactivemedia/v3/internal/cp;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->n:Lcom/google/ads/interactivemedia/v3/internal/cp;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->o:Lcom/google/ads/interactivemedia/v3/internal/cn;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/cn;->a()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/cp;->a(J)V

    :cond_3
    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->b:I

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b(I)V

    const/4 p1, 0x0

    :goto_1
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->l:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->k:I

    return p1
.end method

.method private f(Lcom/google/ads/interactivemedia/v3/internal/cd;)Lcom/google/ads/interactivemedia/v3/internal/fp;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->b:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->i:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->e()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->i:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->i:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->e()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->b:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->a([BI)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->i:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->i:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->b:I

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->b(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->i:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->b:I

    invoke-interface {p1, v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b([BII)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->i:Lcom/google/ads/interactivemedia/v3/internal/fp;

    return-object p1
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

    :cond_0
    :goto_0
    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->k:I

    const/4 v0, -0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/cm;->e(Lcom/google/ads/interactivemedia/v3/internal/cd;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/cm;->d(Lcom/google/ads/interactivemedia/v3/internal/cd;)Z

    move-result p2

    if-nez p2, :cond_0

    return v0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/cm;->c(Lcom/google/ads/interactivemedia/v3/internal/cd;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/cm;->b(Lcom/google/ads/interactivemedia/v3/internal/cd;)Z

    move-result p2

    if-nez p2, :cond_0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/ce;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->j:Lcom/google/ads/interactivemedia/v3/internal/ce;

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/cd;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->e:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {p1, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c([BII)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->e:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->e:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->j()I

    move-result v0

    sget v2, Lcom/google/ads/interactivemedia/v3/internal/cm;->d:I

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->e:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    const/4 v2, 0x2

    invoke-interface {p1, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c([BII)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->e:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->e:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->g()I

    move-result v0

    and-int/lit16 v0, v0, 0xfa

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->e:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c([BII)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->e:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->e:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v0

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->a()V

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->e:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    invoke-interface {p1, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c([BII)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->e:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->e:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result p1

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public b(J)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->k:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->l:I

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
