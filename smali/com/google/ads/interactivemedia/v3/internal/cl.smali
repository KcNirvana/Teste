.class final Lcom/google/ads/interactivemedia/v3/internal/cl;
.super Lcom/google/ads/interactivemedia/v3/internal/co;
.source "IMASDK"


# static fields
.field private static final b:[I


# instance fields
.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/cl;->b:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x157c
        0x2af8
        0x55f0
        0xabe0
    .end array-data
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ck;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/co;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ck;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/ads/interactivemedia/v3/internal/fp;J)V
    .locals 12

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/cl;->d:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->b()I

    move-result p2

    new-array p2, p2, [B

    const/4 p3, 0x0

    array-length v0, p2

    invoke-virtual {p1, p2, p3, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->a([BII)V

    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/ff;->a([B)Landroid/util/Pair;

    move-result-object p1

    const/4 v2, 0x0

    const-string v3, "audio/mp4a-latm"

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/cl;->a()J

    move-result-wide v6

    iget-object p3, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/bj;

    move-result-object p1

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/cl;->a:Lcom/google/ads/interactivemedia/v3/internal/ck;

    invoke-interface {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/bj;)V

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cl;->d:Z

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->b()I

    move-result v6

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cl;->a:Lcom/google/ads/interactivemedia/v3/internal/ck;

    invoke-interface {v0, p1, v6}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;I)V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/cl;->a:Lcom/google/ads/interactivemedia/v3/internal/ck;

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v3, p2

    invoke-interface/range {v2 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(JIII[B)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected a(Lcom/google/ads/interactivemedia/v3/internal/fp;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/co$a;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cl;->c:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result p1

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    shr-int/lit8 p1, p1, 0x2

    and-int/lit8 p1, p1, 0x3

    if-ltz p1, :cond_1

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/cl;->b:[I

    array-length v2, v2

    if-ge p1, v2, :cond_1

    const/16 p1, 0xa

    if-ne v0, p1, :cond_0

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cl;->c:Z

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/co$a;

    const/16 v1, 0x27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Audio format not supported: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/co$a;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/co$a;

    const/16 v1, 0x26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid sample rate index: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/co$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    :goto_0
    return v1
.end method
