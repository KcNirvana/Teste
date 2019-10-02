.class public final Lcom/google/ads/interactivemedia/v3/internal/dr;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/cc;


# static fields
.field private static final a:I


# instance fields
.field private final b:J

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/fp;

.field private d:Lcom/google/ads/interactivemedia/v3/internal/ds;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ID3"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ft;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/ads/interactivemedia/v3/internal/dr;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/dr;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dr;->b:J

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/fp;

    const/16 p2, 0xc8

    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/fp;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dr;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/internal/cd;Lcom/google/ads/interactivemedia/v3/internal/ch;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/dr;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object p2, p2, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    const/4 v0, 0x0

    const/16 v1, 0xc8

    invoke-interface {p1, p2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->a([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/dr;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/dr;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->b(I)V

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dr;->e:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dr;->d:Lcom/google/ads/interactivemedia/v3/internal/ds;

    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dr;->b:J

    const/4 p2, 0x1

    invoke-virtual {p1, v1, v2, p2}, Lcom/google/ads/interactivemedia/v3/internal/ds;->a(JZ)V

    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/dr;->e:Z

    :cond_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dr;->d:Lcom/google/ads/interactivemedia/v3/internal/ds;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/dr;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ds;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;)V

    return v0
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/ce;)V
    .locals 3

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ds;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/ce;->d(I)Lcom/google/ads/interactivemedia/v3/internal/ck;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ce;->d(I)Lcom/google/ads/interactivemedia/v3/internal/ck;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ds;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ck;Lcom/google/ads/interactivemedia/v3/internal/ck;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dr;->d:Lcom/google/ads/interactivemedia/v3/internal/ds;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/ce;->f()V

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/cj;->f:Lcom/google/ads/interactivemedia/v3/internal/cj;

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ce;->a(Lcom/google/ads/interactivemedia/v3/internal/cj;)V

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/cd;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/fp;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;-><init>(I)V

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/fo;

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/fo;-><init>([B)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    invoke-interface {p1, v5, v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c([BII)V

    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->j()I

    move-result v5

    sget v6, Lcom/google/ads/interactivemedia/v3/internal/dr;->a:I

    const/16 v7, 0xe

    const/4 v8, 0x6

    if-eq v5, v6, :cond_4

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->a()V

    invoke-interface {p1, v4}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c(I)V

    move v1, v4

    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    const/4 v10, 0x2

    invoke-interface {p1, v9, v3, v10}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c([BII)V

    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->g()I

    move-result v9

    const v10, 0xfff6

    and-int/2addr v9, v10

    const v10, 0xfff0

    if-eq v9, v10, :cond_1

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->a()V

    add-int/lit8 v1, v1, 0x1

    sub-int v5, v1, v4

    const/16 v6, 0x2000

    if-lt v5, v6, :cond_0

    return v3

    :cond_0
    invoke-interface {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c(I)V

    goto :goto_1

    :cond_1
    const/4 v9, 0x1

    add-int/2addr v5, v9

    const/4 v10, 0x4

    if-lt v5, v10, :cond_2

    const/16 v11, 0xbc

    if-le v6, v11, :cond_2

    return v9

    :cond_2
    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    invoke-interface {p1, v9, v3, v10}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c([BII)V

    invoke-virtual {v2, v7}, Lcom/google/ads/interactivemedia/v3/internal/fo;->a(I)V

    const/16 v9, 0xd

    invoke-virtual {v2, v9}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c(I)I

    move-result v9

    if-gt v9, v8, :cond_3

    return v3

    :cond_3
    add-int/lit8 v10, v9, -0x6

    invoke-interface {p1, v10}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c(I)V

    add-int/2addr v6, v9

    goto :goto_2

    :cond_4
    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    aget-byte v5, v5, v8

    and-int/lit8 v5, v5, 0x7f

    shl-int/lit8 v5, v5, 0x15

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    const/4 v8, 0x7

    aget-byte v6, v6, v8

    and-int/lit8 v6, v6, 0x7f

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    const/16 v7, 0x8

    aget-byte v6, v6, v7

    and-int/lit8 v6, v6, 0x7f

    shl-int/2addr v6, v8

    or-int/2addr v5, v6

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    const/16 v7, 0x9

    aget-byte v6, v6, v7

    and-int/lit8 v6, v6, 0x7f

    or-int/2addr v5, v6

    add-int/lit8 v6, v5, 0xa

    add-int/2addr v4, v6

    invoke-interface {p1, v5}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c(I)V

    goto/16 :goto_0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dr;->e:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dr;->d:Lcom/google/ads/interactivemedia/v3/internal/ds;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ds;->a()V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
