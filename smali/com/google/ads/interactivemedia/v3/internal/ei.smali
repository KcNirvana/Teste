.class final Lcom/google/ads/interactivemedia/v3/internal/ei;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/ej;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/internal/ei$a;
    }
.end annotation


# instance fields
.field private final a:[B

.field private final b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/ads/interactivemedia/v3/internal/ei$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/em;

.field private d:Lcom/google/ads/interactivemedia/v3/internal/ek;

.field private e:I

.field private f:I

.field private g:J


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:[B

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->b:Ljava/util/Stack;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/em;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/em;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->c:Lcom/google/ads/interactivemedia/v3/internal/em;

    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/internal/cd;I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b([BII)V

    const-wide/16 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    const/16 p1, 0x8

    shl-long/2addr v2, p1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:[B

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private b(Lcom/google/ads/interactivemedia/v3/internal/cd;I)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ei;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;I)J

    move-result-wide v0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    long-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    float-to-double p1, p1

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method private b(Lcom/google/ads/interactivemedia/v3/internal/cd;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->a()V

    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:[B

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c([BII)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:[B

    aget-byte v0, v0, v2

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/em;->a(I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:[B

    invoke-static {v1, v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/em;->a([BIZ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->d:Lcom/google/ads/interactivemedia/v3/internal/ek;

    invoke-interface {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/ek;->b(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b(I)V

    int-to-long v0, v1

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b(I)V

    goto :goto_0
.end method

.method private c(Lcom/google/ads/interactivemedia/v3/internal/cd;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-nez p2, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b([BII)V

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->e:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->c:Lcom/google/ads/interactivemedia/v3/internal/em;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/em;->a()V

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/ek;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->d:Lcom/google/ads/interactivemedia/v3/internal/ek;

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

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->d:Lcom/google/ads/interactivemedia/v3/internal/ek;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/fe;->b(Z)V

    :goto_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c()J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/ei$a;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ei$a;->a(Lcom/google/ads/interactivemedia/v3/internal/ei$a;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->d:Lcom/google/ads/interactivemedia/v3/internal/ek;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/ei$a;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ei$a;->b(Lcom/google/ads/interactivemedia/v3/internal/ei$a;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ek;->c(I)V

    return v2

    :cond_1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->e:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->c:Lcom/google/ads/interactivemedia/v3/internal/em;

    const/4 v3, 0x4

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/em;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;ZZI)J

    move-result-wide v3

    const-wide/16 v5, -0x2

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ei;->b(Lcom/google/ads/interactivemedia/v3/internal/cd;)J

    move-result-wide v3

    :cond_2
    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    return v1

    :cond_3
    long-to-int v0, v3

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->f:I

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->e:I

    :cond_4
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->e:I

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->c:Lcom/google/ads/interactivemedia/v3/internal/em;

    const/16 v3, 0x8

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/em;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;ZZI)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->g:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->e:I

    :cond_5
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->d:Lcom/google/ads/interactivemedia/v3/internal/ek;

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->f:I

    invoke-interface {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/ek;->a(I)I

    move-result v0

    const-wide/16 v3, 0x8

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/bl;

    const/16 v1, 0x20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid element type "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-wide v5, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->g:J

    const-wide/16 v7, 0x4

    cmp-long v0, v5, v7

    if-eqz v0, :cond_7

    iget-wide v5, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->g:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/bl;

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->g:J

    const/16 v2, 0x28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid float size: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->d:Lcom/google/ads/interactivemedia/v3/internal/ek;

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->f:I

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->g:J

    long-to-int v4, v4

    invoke-direct {p0, p1, v4}, Lcom/google/ads/interactivemedia/v3/internal/ei;->b(Lcom/google/ads/interactivemedia/v3/internal/cd;I)D

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/ek;->a(ID)V

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->e:I

    return v2

    :pswitch_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->d:Lcom/google/ads/interactivemedia/v3/internal/ek;

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->f:I

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->g:J

    long-to-int v4, v4

    invoke-interface {v0, v3, v4, p1}, Lcom/google/ads/interactivemedia/v3/internal/ek;->a(IILcom/google/ads/interactivemedia/v3/internal/cd;)V

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->e:I

    return v2

    :pswitch_2
    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->g:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v0, v3, v5

    if-gtz v0, :cond_8

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->d:Lcom/google/ads/interactivemedia/v3/internal/ek;

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->f:I

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->g:J

    long-to-int v4, v4

    invoke-direct {p0, p1, v4}, Lcom/google/ads/interactivemedia/v3/internal/ei;->c(Lcom/google/ads/interactivemedia/v3/internal/cd;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Lcom/google/ads/interactivemedia/v3/internal/ek;->a(ILjava/lang/String;)V

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->e:I

    return v2

    :cond_8
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/bl;

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->g:J

    const/16 v2, 0x29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "String element size: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    iget-wide v5, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->g:J

    cmp-long v0, v5, v3

    if-gtz v0, :cond_9

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->d:Lcom/google/ads/interactivemedia/v3/internal/ek;

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->f:I

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->g:J

    long-to-int v4, v4

    invoke-direct {p0, p1, v4}, Lcom/google/ads/interactivemedia/v3/internal/ei;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;I)J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/ek;->a(IJ)V

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->e:I

    return v2

    :cond_9
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/bl;

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->g:J

    const/16 v2, 0x2a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid integer size: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c()J

    move-result-wide v5

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->g:J

    add-long/2addr v3, v5

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->b:Ljava/util/Stack;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ei$a;

    iget v7, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->f:I

    const/4 v8, 0x0

    invoke-direct {v0, v7, v3, v4, v8}, Lcom/google/ads/interactivemedia/v3/internal/ei$a;-><init>(IJLcom/google/ads/interactivemedia/v3/internal/ei$1;)V

    invoke-virtual {p1, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->d:Lcom/google/ads/interactivemedia/v3/internal/ek;

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->f:I

    iget-wide v7, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->g:J

    invoke-interface/range {v3 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/ek;->a(IJJ)V

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->e:I

    return v2

    :pswitch_5
    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->g:J

    long-to-int v0, v3

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b(I)V

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->e:I

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
