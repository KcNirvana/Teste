.class public final Lcom/google/ads/interactivemedia/v3/internal/da;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/cc;
.implements Lcom/google/ads/interactivemedia/v3/internal/cj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/internal/da$a;
    }
.end annotation


# static fields
.field private static final a:I


# instance fields
.field private final b:Lcom/google/ads/interactivemedia/v3/internal/fp;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/fp;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/fp;

.field private final e:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/ads/interactivemedia/v3/internal/cv$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:J

.field private j:I

.field private k:Lcom/google/ads/interactivemedia/v3/internal/fp;

.field private l:I

.field private m:I

.field private n:I

.field private o:Lcom/google/ads/interactivemedia/v3/internal/ce;

.field private p:[Lcom/google/ads/interactivemedia/v3/internal/da$a;

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "qt  "

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ft;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/ads/interactivemedia/v3/internal/da;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/fp;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->d:Lcom/google/ads/interactivemedia/v3/internal/fp;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->e:Ljava/util/Stack;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/fp;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/fn;->a:[B

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;-><init>([B)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->b:Lcom/google/ads/interactivemedia/v3/internal/fp;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/fp;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/da;->d()V

    return-void
.end method

.method private a(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bl;
        }
    .end annotation

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/cv$a;

    iget-wide v2, v0, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->aP:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/cv$a;

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->aO:I

    sget v3, Lcom/google/ads/interactivemedia/v3/internal/cv;->B:I

    if-ne v2, v3, :cond_1

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/da;->a(Lcom/google/ads/interactivemedia/v3/internal/cv$a;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->g:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->e:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->e:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/cv$a;

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->a(Lcom/google/ads/interactivemedia/v3/internal/cv$a;)V

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->g:I

    if-eq p1, v1, :cond_3

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/da;->d()V

    :cond_3
    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/internal/cv$a;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bl;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/cv;->az:I

    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->d(I)Lcom/google/ads/interactivemedia/v3/internal/cv$b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->q:Z

    invoke-static {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/cw;->a(Lcom/google/ads/interactivemedia/v3/internal/cv$b;Z)Lcom/google/ads/interactivemedia/v3/internal/cg;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    const-wide v3, 0x7fffffffffffffffL

    move-wide v4, v3

    const/4 v3, 0x0

    :goto_1
    iget-object v6, p1, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->aR:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_6

    iget-object v6, p1, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->aR:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/ads/interactivemedia/v3/internal/cv$a;

    iget v7, v6, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->aO:I

    sget v8, Lcom/google/ads/interactivemedia/v3/internal/cv;->D:I

    if-eq v7, v8, :cond_1

    goto :goto_2

    :cond_1
    sget v7, Lcom/google/ads/interactivemedia/v3/internal/cv;->C:I

    invoke-virtual {p1, v7}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->d(I)Lcom/google/ads/interactivemedia/v3/internal/cv$b;

    move-result-object v7

    const-wide/16 v8, -0x1

    iget-boolean v10, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->q:Z

    invoke-static {v6, v7, v8, v9, v10}, Lcom/google/ads/interactivemedia/v3/internal/cw;->a(Lcom/google/ads/interactivemedia/v3/internal/cv$a;Lcom/google/ads/interactivemedia/v3/internal/cv$b;JZ)Lcom/google/ads/interactivemedia/v3/internal/dd;

    move-result-object v7

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    sget v8, Lcom/google/ads/interactivemedia/v3/internal/cv;->E:I

    invoke-virtual {v6, v8}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->e(I)Lcom/google/ads/interactivemedia/v3/internal/cv$a;

    move-result-object v6

    sget v8, Lcom/google/ads/interactivemedia/v3/internal/cv;->F:I

    invoke-virtual {v6, v8}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->e(I)Lcom/google/ads/interactivemedia/v3/internal/cv$a;

    move-result-object v6

    sget v8, Lcom/google/ads/interactivemedia/v3/internal/cv;->G:I

    invoke-virtual {v6, v8}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->e(I)Lcom/google/ads/interactivemedia/v3/internal/cv$a;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/google/ads/interactivemedia/v3/internal/cw;->a(Lcom/google/ads/interactivemedia/v3/internal/dd;Lcom/google/ads/interactivemedia/v3/internal/cv$a;)Lcom/google/ads/interactivemedia/v3/internal/dg;

    move-result-object v6

    iget v8, v6, Lcom/google/ads/interactivemedia/v3/internal/dg;->a:I

    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    new-instance v8, Lcom/google/ads/interactivemedia/v3/internal/da$a;

    iget-object v9, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->o:Lcom/google/ads/interactivemedia/v3/internal/ce;

    invoke-interface {v9, v3}, Lcom/google/ads/interactivemedia/v3/internal/ce;->d(I)Lcom/google/ads/interactivemedia/v3/internal/ck;

    move-result-object v9

    invoke-direct {v8, v7, v6, v9}, Lcom/google/ads/interactivemedia/v3/internal/da$a;-><init>(Lcom/google/ads/interactivemedia/v3/internal/dd;Lcom/google/ads/interactivemedia/v3/internal/dg;Lcom/google/ads/interactivemedia/v3/internal/ck;)V

    iget v9, v6, Lcom/google/ads/interactivemedia/v3/internal/dg;->d:I

    add-int/lit8 v9, v9, 0x1e

    iget-object v7, v7, Lcom/google/ads/interactivemedia/v3/internal/dd;->l:Lcom/google/ads/interactivemedia/v3/internal/bj;

    invoke-virtual {v7, v9}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(I)Lcom/google/ads/interactivemedia/v3/internal/bj;

    move-result-object v7

    if-eqz v1, :cond_4

    iget v9, v1, Lcom/google/ads/interactivemedia/v3/internal/cg;->a:I

    iget v10, v1, Lcom/google/ads/interactivemedia/v3/internal/cg;->b:I

    invoke-virtual {v7, v9, v10}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(II)Lcom/google/ads/interactivemedia/v3/internal/bj;

    move-result-object v7

    :cond_4
    iget-object v9, v8, Lcom/google/ads/interactivemedia/v3/internal/da$a;->c:Lcom/google/ads/interactivemedia/v3/internal/ck;

    invoke-interface {v9, v7}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/bj;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v6, Lcom/google/ads/interactivemedia/v3/internal/dg;->b:[J

    aget-wide v7, v6, v2

    cmp-long v6, v7, v4

    if-gez v6, :cond_5

    move-wide v4, v7

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    new-array p1, v2, [Lcom/google/ads/interactivemedia/v3/internal/da$a;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/ads/interactivemedia/v3/internal/da$a;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->p:[Lcom/google/ads/interactivemedia/v3/internal/da$a;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->o:Lcom/google/ads/interactivemedia/v3/internal/ce;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/ce;->f()V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->o:Lcom/google/ads/interactivemedia/v3/internal/ce;

    invoke-interface {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/ce;->a(Lcom/google/ads/interactivemedia/v3/internal/cj;)V

    return-void
.end method

.method private static a(I)Z
    .locals 1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->R:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->C:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->S:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->T:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->am:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->an:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->ao:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->Q:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->ap:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->aq:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->ar:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->as:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->at:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->O:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->a:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->az:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/fp;)Z
    .locals 3

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v0

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/da;->a:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->b()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v0

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/da;->a:I

    if-ne v0, v1, :cond_1

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static b(I)Z
    .locals 1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->B:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->D:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->E:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->F:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->G:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->P:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private b(Lcom/google/ads/interactivemedia/v3/internal/cd;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->j:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->d:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    invoke-interface {p1, v0, v3, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->j:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->d:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->d:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->k()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->i:J

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->d:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->h:I

    :cond_1
    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->i:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->d:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    invoke-interface {p1, v0, v2, v2}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b([BII)V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->j:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->j:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->d:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->u()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->i:J

    :cond_2
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->h:I

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/da;->b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->i:J

    add-long/2addr v2, v4

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->j:I

    int-to-long v4, p1

    sub-long/2addr v2, v4

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->e:Ljava/util/Stack;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/cv$a;

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->h:I

    invoke-direct {v0, v4, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;-><init>(IJ)V

    invoke-virtual {p1, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->i:J

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->j:I

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-nez p1, :cond_3

    invoke-direct {p0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/da;->a(J)V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/da;->d()V

    goto :goto_2

    :cond_4
    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->h:I

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/da;->a(I)Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->j:I

    if-ne p1, v2, :cond_5

    const/4 p1, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/fe;->b(Z)V

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->i:J

    const-wide/32 v6, 0x7fffffff

    cmp-long p1, v4, v6

    if-gtz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/fe;->b(Z)V

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->i:J

    long-to-int v4, v4

    invoke-direct {p1, v4}, Lcom/google/ads/interactivemedia/v3/internal/fp;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->k:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->d:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->k:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    invoke-static {p1, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->g:I

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->k:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->g:I

    :goto_2
    return v1
.end method

.method private b(Lcom/google/ads/interactivemedia/v3/internal/cd;Lcom/google/ads/interactivemedia/v3/internal/ch;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->i:J

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->j:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c()J

    move-result-wide v2

    add-long/2addr v2, v0

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->k:Lcom/google/ads/interactivemedia/v3/internal/fp;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->k:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object p2, p2, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->j:I

    long-to-int v0, v0

    invoke-interface {p1, p2, v4, v0}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b([BII)V

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->h:I

    sget p2, Lcom/google/ads/interactivemedia/v3/internal/cv;->a:I

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->k:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/da;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->q:Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->e:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->e:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/cv$a;

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/cv$b;

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->h:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->k:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-direct {p2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/cv$b;-><init>(ILcom/google/ads/interactivemedia/v3/internal/fp;)V

    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->a(Lcom/google/ads/interactivemedia/v3/internal/cv$b;)V

    goto :goto_0

    :cond_1
    const-wide/32 v7, 0x40000

    cmp-long v4, v0, v7

    if-gez v4, :cond_3

    long-to-int p2, v0

    invoke-interface {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b(I)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c()J

    move-result-wide v7

    add-long/2addr v7, v0

    iput-wide v7, p2, Lcom/google/ads/interactivemedia/v3/internal/ch;->a:J

    const/4 p1, 0x1

    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/da;->a(J)V

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->g:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    return v5
.end method

.method private c(Lcom/google/ads/interactivemedia/v3/internal/cd;Lcom/google/ads/interactivemedia/v3/internal/ch;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/da;->e()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->p:[Lcom/google/ads/interactivemedia/v3/internal/da$a;

    aget-object v0, v2, v0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/da$a;->c:Lcom/google/ads/interactivemedia/v3/internal/ck;

    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/da$a;->d:I

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/da$a;->b:Lcom/google/ads/interactivemedia/v3/internal/dg;

    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/internal/dg;->b:[J

    aget-wide v5, v4, v3

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c()J

    move-result-wide v7

    sub-long v7, v5, v7

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->m:I

    int-to-long v9, v4

    add-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    const/4 v9, 0x1

    if-ltz v4, :cond_5

    const-wide/32 v10, 0x40000

    cmp-long v4, v7, v10

    if-ltz v4, :cond_1

    goto/16 :goto_2

    :cond_1
    long-to-int p2, v7

    invoke-interface {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b(I)V

    iget-object p2, v0, Lcom/google/ads/interactivemedia/v3/internal/da$a;->b:Lcom/google/ads/interactivemedia/v3/internal/dg;

    iget-object p2, p2, Lcom/google/ads/interactivemedia/v3/internal/dg;->c:[I

    aget p2, p2, v3

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->l:I

    iget-object p2, v0, Lcom/google/ads/interactivemedia/v3/internal/da$a;->a:Lcom/google/ads/interactivemedia/v3/internal/dd;

    iget p2, p2, Lcom/google/ads/interactivemedia/v3/internal/dd;->p:I

    const/4 v10, 0x0

    if-eq p2, v1, :cond_3

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object p2, p2, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    aput-byte v10, p2, v10

    aput-byte v10, p2, v9

    const/4 v1, 0x2

    aput-byte v10, p2, v1

    iget-object p2, v0, Lcom/google/ads/interactivemedia/v3/internal/da$a;->a:Lcom/google/ads/interactivemedia/v3/internal/dd;

    iget p2, p2, Lcom/google/ads/interactivemedia/v3/internal/dd;->p:I

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/da$a;->a:Lcom/google/ads/interactivemedia/v3/internal/dd;

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/internal/dd;->p:I

    const/4 v4, 0x4

    rsub-int/lit8 v1, v1, 0x4

    :goto_0
    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->m:I

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->l:I

    if-ge v5, v6, :cond_4

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->n:I

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v5, v5, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    invoke-interface {p1, v5, v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b([BII)V

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v5, v10}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result v5

    iput v5, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->n:I

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->b:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v5, v10}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->b:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-interface {v2, v5, v4}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;I)V

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->m:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->m:I

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->l:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->l:I

    goto :goto_0

    :cond_2
    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->n:I

    invoke-interface {v2, p1, v5, v10}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;IZ)I

    move-result v5

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->m:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->m:I

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->n:I

    sub-int/2addr v6, v5

    iput v6, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->n:I

    goto :goto_0

    :cond_3
    :goto_1
    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->m:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->l:I

    if-ge p2, v1, :cond_4

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->l:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->m:I

    sub-int/2addr p2, v1

    invoke-interface {v2, p1, p2, v10}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;IZ)I

    move-result p2

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->m:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->m:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->n:I

    sub-int/2addr v1, p2

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->n:I

    goto :goto_1

    :cond_4
    iget-object p1, v0, Lcom/google/ads/interactivemedia/v3/internal/da$a;->b:Lcom/google/ads/interactivemedia/v3/internal/dg;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/dg;->e:[J

    aget-wide v4, p1, v3

    iget-object p1, v0, Lcom/google/ads/interactivemedia/v3/internal/da$a;->b:Lcom/google/ads/interactivemedia/v3/internal/dg;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/dg;->f:[I

    aget p1, p1, v3

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->l:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v3, v4

    move v5, p1

    invoke-interface/range {v2 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(JIII[B)V

    iget p1, v0, Lcom/google/ads/interactivemedia/v3/internal/da$a;->d:I

    add-int/2addr p1, v9

    iput p1, v0, Lcom/google/ads/interactivemedia/v3/internal/da$a;->d:I

    iput v10, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->m:I

    iput v10, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->n:I

    return v10

    :cond_5
    :goto_2
    iput-wide v5, p2, Lcom/google/ads/interactivemedia/v3/internal/ch;->a:J

    return v9
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->j:I

    return-void
.end method

.method private e()I
    .locals 7

    const/4 v0, -0x1

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->p:[Lcom/google/ads/interactivemedia/v3/internal/da$a;

    array-length v4, v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->p:[Lcom/google/ads/interactivemedia/v3/internal/da$a;

    aget-object v4, v4, v3

    iget v5, v4, Lcom/google/ads/interactivemedia/v3/internal/da$a;->d:I

    iget-object v6, v4, Lcom/google/ads/interactivemedia/v3/internal/da$a;->b:Lcom/google/ads/interactivemedia/v3/internal/dg;

    iget v6, v6, Lcom/google/ads/interactivemedia/v3/internal/dg;->a:I

    if-ne v5, v6, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/internal/da$a;->b:Lcom/google/ads/interactivemedia/v3/internal/dg;

    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/internal/dg;->b:[J

    aget-wide v5, v4, v5

    cmp-long v4, v5, v1

    if-gez v4, :cond_1

    move v0, v3

    move-wide v1, v5

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/internal/cd;Lcom/google/ads/interactivemedia/v3/internal/ch;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    :cond_0
    :goto_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->g:I

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/da;->c(Lcom/google/ads/interactivemedia/v3/internal/cd;Lcom/google/ads/interactivemedia/v3/internal/ch;)I

    move-result p1

    return p1

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/da;->b(Lcom/google/ads/interactivemedia/v3/internal/cd;Lcom/google/ads/interactivemedia/v3/internal/ch;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/da;->b(Lcom/google/ads/interactivemedia/v3/internal/cd;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :pswitch_2
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/da;->d()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->g:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/ce;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->o:Lcom/google/ads/interactivemedia/v3/internal/ce;

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

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/dc;->b(Lcom/google/ads/interactivemedia/v3/internal/cd;)Z

    move-result p1

    return p1
.end method

.method public b(J)J
    .locals 6

    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->p:[Lcom/google/ads/interactivemedia/v3/internal/da$a;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->p:[Lcom/google/ads/interactivemedia/v3/internal/da$a;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/da$a;->b:Lcom/google/ads/interactivemedia/v3/internal/dg;

    invoke-virtual {v3, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/dg;->a(J)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/dg;->b(J)I

    move-result v4

    :cond_0
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->p:[Lcom/google/ads/interactivemedia/v3/internal/da$a;

    aget-object v5, v5, v2

    iput v4, v5, Lcom/google/ads/interactivemedia/v3/internal/da$a;->d:I

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/dg;->b:[J

    aget-wide v4, v3, v4

    cmp-long v3, v4, v0

    if-gez v3, :cond_1

    move-wide v0, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->j:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->m:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->n:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/da;->g:I

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
