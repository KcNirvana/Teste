.class public final Lcom/google/ads/interactivemedia/v3/internal/eb;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/cc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/internal/eb$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/ec;

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/ads/interactivemedia/v3/internal/eb$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/fp;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/google/ads/interactivemedia/v3/internal/ce;


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ec;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ec;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/eb;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ec;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ec;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->a:Lcom/google/ads/interactivemedia/v3/internal/ec;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/fp;

    const/16 v0, 0x1000

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->b:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/internal/cd;Lcom/google/ads/interactivemedia/v3/internal/ch;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object p2, p2, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b([BIIZ)Z

    move-result p2

    const/4 v2, -0x1

    if-nez p2, :cond_0

    return v2

    :cond_0
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result p2

    const/16 v3, 0x1b9

    if-ne p2, v3, :cond_1

    return v2

    :cond_1
    const/16 v2, 0x1ba

    if-ne p2, v2, :cond_2

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object p2, p2, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    const/16 v0, 0xa

    invoke-interface {p1, p2, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c([BII)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result p2

    and-int/lit8 p2, p2, 0x7

    add-int/lit8 p2, p2, 0xe

    invoke-interface {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b(I)V

    return v1

    :cond_2
    const/16 v2, 0x1bb

    const/4 v3, 0x2

    const/4 v4, 0x6

    if-ne p2, v2, :cond_3

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object p2, p2, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    invoke-interface {p1, p2, v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c([BII)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->g()I

    move-result p2

    add-int/2addr p2, v4

    invoke-interface {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b(I)V

    return v1

    :cond_3
    and-int/lit16 v2, p2, -0x100

    shr-int/lit8 v2, v2, 0x8

    if-eq v2, v0, :cond_4

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b(I)V

    return v1

    :cond_4
    and-int/lit16 p2, p2, 0xff

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/eb$a;

    iget-boolean v5, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->d:Z

    if-nez v5, :cond_b

    if-nez v2, :cond_8

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->e:Z

    if-nez v6, :cond_5

    const/16 v6, 0xbd

    if-ne p2, v6, :cond_5

    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/dq;

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->g:Lcom/google/ads/interactivemedia/v3/internal/ce;

    invoke-interface {v6, p2}, Lcom/google/ads/interactivemedia/v3/internal/ce;->d(I)Lcom/google/ads/interactivemedia/v3/internal/ck;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lcom/google/ads/interactivemedia/v3/internal/dq;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ck;Z)V

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->e:Z

    goto :goto_0

    :cond_5
    iget-boolean v6, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->e:Z

    if-nez v6, :cond_6

    and-int/lit16 v6, p2, 0xe0

    const/16 v7, 0xc0

    if-ne v6, v7, :cond_6

    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/dz;

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->g:Lcom/google/ads/interactivemedia/v3/internal/ce;

    invoke-interface {v6, p2}, Lcom/google/ads/interactivemedia/v3/internal/ce;->d(I)Lcom/google/ads/interactivemedia/v3/internal/ck;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/dz;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ck;)V

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->e:Z

    goto :goto_0

    :cond_6
    iget-boolean v6, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->f:Z

    if-nez v6, :cond_7

    and-int/lit16 v6, p2, 0xf0

    const/16 v7, 0xe0

    if-ne v6, v7, :cond_7

    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/dv;

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->g:Lcom/google/ads/interactivemedia/v3/internal/ce;

    invoke-interface {v6, p2}, Lcom/google/ads/interactivemedia/v3/internal/ce;->d(I)Lcom/google/ads/interactivemedia/v3/internal/ck;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/dv;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ck;)V

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->f:Z

    :cond_7
    :goto_0
    if-eqz v5, :cond_8

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/eb$a;

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->a:Lcom/google/ads/interactivemedia/v3/internal/ec;

    invoke-direct {v2, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/eb$a;-><init>(Lcom/google/ads/interactivemedia/v3/internal/du;Lcom/google/ads/interactivemedia/v3/internal/ec;)V

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->b:Landroid/util/SparseArray;

    invoke-virtual {v5, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_8
    iget-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->e:Z

    if-eqz p2, :cond_9

    iget-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->f:Z

    if-nez p2, :cond_a

    :cond_9
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c()J

    move-result-wide v5

    const-wide/32 v7, 0x100000

    cmp-long p2, v5, v7

    if-lez p2, :cond_b

    :cond_a
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->d:Z

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->g:Lcom/google/ads/interactivemedia/v3/internal/ce;

    invoke-interface {p2}, Lcom/google/ads/interactivemedia/v3/internal/ce;->f()V

    :cond_b
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object p2, p2, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    invoke-interface {p1, p2, v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c([BII)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->g()I

    move-result p2

    add-int/2addr p2, v4

    if-nez v2, :cond_c

    invoke-interface {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b(I)V

    goto :goto_1

    :cond_c
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->e()I

    move-result v0

    if-ge v0, p2, :cond_d

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    new-array v3, p2, [B

    invoke-virtual {v0, v3, p2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->a([BI)V

    :cond_d
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    invoke-interface {p1, v0, v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b([BII)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {p1, v4}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->b(I)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->g:Lcom/google/ads/interactivemedia/v3/internal/ce;

    invoke-virtual {v2, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;Lcom/google/ads/interactivemedia/v3/internal/ce;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->e()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->b(I)V

    :goto_1
    return v1
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/ce;)V
    .locals 1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->g:Lcom/google/ads/interactivemedia/v3/internal/ce;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/cj;->f:Lcom/google/ads/interactivemedia/v3/internal/cj;

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ce;->a(Lcom/google/ads/interactivemedia/v3/internal/cj;)V

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/cd;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/16 v0, 0xe

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c([BII)V

    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v3, 0x1

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    const/4 v4, 0x2

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    const/4 v5, 0x3

    aget-byte v7, v1, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v0, v7

    const/16 v7, 0x1ba

    if-eq v7, v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x4

    aget-byte v7, v1, v0

    and-int/lit16 v7, v7, 0xc4

    const/16 v8, 0x44

    if-eq v7, v8, :cond_1

    return v2

    :cond_1
    const/4 v7, 0x6

    aget-byte v7, v1, v7

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_2

    return v2

    :cond_2
    aget-byte v7, v1, v6

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_3

    return v2

    :cond_3
    const/16 v0, 0x9

    aget-byte v0, v1, v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_4

    return v2

    :cond_4
    const/16 v0, 0xc

    aget-byte v0, v1, v0

    and-int/2addr v0, v5

    if-eq v0, v5, :cond_5

    return v2

    :cond_5
    const/16 v0, 0xd

    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0x7

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c(I)V

    invoke-interface {p1, v1, v2, v5}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c([BII)V

    aget-byte p1, v1, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v6

    or-int/2addr p1, v0

    aget-byte v0, v1, v4

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    if-ne v3, p1, :cond_6

    const/4 v2, 0x1

    :cond_6
    return v2
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->a:Lcom/google/ads/interactivemedia/v3/internal/ec;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ec;->a()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/eb;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/eb$a;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
