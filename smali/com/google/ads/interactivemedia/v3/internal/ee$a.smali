.class Lcom/google/ads/interactivemedia/v3/internal/ee$a;
.super Lcom/google/ads/interactivemedia/v3/internal/ee$d;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/internal/ee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/ee;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/fp;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/fo;

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ee;)V
    .locals 1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ee$a;->a:Lcom/google/ads/interactivemedia/v3/internal/ee;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ee$d;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ee$1;)V

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ee$a;->b:Lcom/google/ads/interactivemedia/v3/internal/fp;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/fo;

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;-><init>([B)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ee$a;->c:Lcom/google/ads/interactivemedia/v3/internal/fo;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/fp;ZLcom/google/ads/interactivemedia/v3/internal/ce;)V
    .locals 5

    const/4 p3, 0x3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ee$a;->c:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/fp;->a(Lcom/google/ads/interactivemedia/v3/internal/fo;I)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ee$a;->c:Lcom/google/ads/interactivemedia/v3/internal/fo;

    const/16 v1, 0xc

    invoke-virtual {p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ee$a;->c:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c(I)I

    move-result p2

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ee$a;->d:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ee$a;->e:I

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ee$a;->c:Lcom/google/ads/interactivemedia/v3/internal/fo;

    iget-object p2, p2, Lcom/google/ads/interactivemedia/v3/internal/fo;->a:[B

    const/4 v1, -0x1

    invoke-static {p2, v0, p3, v1}, Lcom/google/ads/interactivemedia/v3/internal/ft;->a([BIII)I

    move-result p2

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ee$a;->f:I

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ee$a;->b:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ee$a;->d:I

    invoke-virtual {p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->a(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->b()I

    move-result p2

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ee$a;->d:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ee$a;->e:I

    sub-int/2addr v1, v2

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ee$a;->b:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ee$a;->e:I

    invoke-virtual {p1, v1, v2, p2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->a([BII)V

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ee$a;->e:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ee$a;->e:I

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ee$a;->e:I

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ee$a;->d:I

    if-ge p1, p2, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ee$a;->b:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ee$a;->d:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ee$a;->f:I

    invoke-static {p1, v0, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/ft;->a([BIII)I

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ee$a;->b:Lcom/google/ads/interactivemedia/v3/internal/fp;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ee$a;->d:I

    add-int/lit8 p1, p1, -0x9

    const/4 p2, 0x4

    div-int/2addr p1, p2

    :goto_0
    if-ge v0, p1, :cond_4

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ee$a;->b:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ee$a;->c:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v1, v2, p2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->a(Lcom/google/ads/interactivemedia/v3/internal/fo;I)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ee$a;->c:Lcom/google/ads/interactivemedia/v3/internal/fo;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ee$a;->c:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v2, p3}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    const/16 v2, 0xd

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ee$a;->c:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ee$a;->c:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ee$a;->a:Lcom/google/ads/interactivemedia/v3/internal/ee;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/ee;->a:Landroid/util/SparseArray;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/ee$c;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ee$a;->a:Lcom/google/ads/interactivemedia/v3/internal/ee;

    invoke-direct {v3, v4, v1}, Lcom/google/ads/interactivemedia/v3/internal/ee$c;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ee;I)V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
