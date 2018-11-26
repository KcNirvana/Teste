.class public Lcom/miui/hybrid/accessory/a/f/b/a;
.super Lcom/miui/hybrid/accessory/a/f/b/c;


# static fields
.field private static final bhG:Lcom/miui/hybrid/accessory/a/f/b/i;


# instance fields
.field protected a:Z

.field protected b:Z

.field private bhA:[B

.field private bhB:[B

.field private bhC:[B

.field private bhD:[B

.field private bhE:[B

.field private bhF:[B

.field private bhy:[B

.field private bhz:[B

.field protected c:I

.field protected d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/i;

    invoke-direct {v0}, Lcom/miui/hybrid/accessory/a/f/b/i;-><init>()V

    sput-object v0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhG:Lcom/miui/hybrid/accessory/a/f/b/i;

    return-void
.end method

.method public constructor <init>(Lcom/miui/hybrid/accessory/a/f/c/b;ZZ)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/hybrid/accessory/a/f/b/c;-><init>(Lcom/miui/hybrid/accessory/a/f/c/b;)V

    iput-boolean v0, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->a:Z

    iput-boolean v1, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->b:Z

    iput-boolean v0, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->d:Z

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhy:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhz:[B

    new-array v0, v3, [B

    iput-object v0, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhF:[B

    new-array v0, v4, [B

    iput-object v0, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhE:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhC:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhD:[B

    new-array v0, v3, [B

    iput-object v0, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhB:[B

    new-array v0, v4, [B

    iput-object v0, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhA:[B

    iput-boolean p2, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->a:Z

    iput-boolean p3, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->b:Z

    return-void
.end method

.method private bDt([BII)I
    .locals 1

    invoke-virtual {p0, p3}, Lcom/miui/hybrid/accessory/a/f/b/a;->bDu(I)V

    iget-object v0, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhI:Lcom/miui/hybrid/accessory/a/f/c/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/hybrid/accessory/a/f/c/b;->bDz([BII)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Lcom/miui/hybrid/accessory/a/f/b/i;
    .locals 1

    sget-object v0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhG:Lcom/miui/hybrid/accessory/a/f/b/i;

    return-object v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/miui/hybrid/accessory/a/f/b/a;->bDu(I)V

    new-array v0, p1, [B

    iget-object v1, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhI:Lcom/miui/hybrid/accessory/a/f/c/b;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Lcom/miui/hybrid/accessory/a/f/c/b;->bDz([BII)I

    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/d;

    const-string/jumbo v1, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {v0, v1}, Lcom/miui/hybrid/accessory/a/f/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public bDs(I)V
    .locals 1

    iput p1, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->d:Z

    return-void
.end method

.method protected bDu(I)V
    .locals 3

    if-ltz p1, :cond_1

    iget-boolean v0, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->d:Z

    if-nez v0, :cond_2

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/miui/hybrid/accessory/a/f/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Negative length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/hybrid/accessory/a/f/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->c:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->c:I

    iget v0, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->c:I

    if-gez v0, :cond_0

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Message length exceeded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/hybrid/accessory/a/f/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Lcom/miui/hybrid/accessory/a/f/b/k;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/a;->l()B

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/a;->m()S

    move-result v0

    :cond_0
    new-instance v2, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v3, ""

    invoke-direct {v2, v3, v1, v0}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    return-object v2
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()Lcom/miui/hybrid/accessory/a/f/b/b;
    .locals 4

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/b;

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/a;->l()B

    move-result v1

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/a;->l()B

    move-result v2

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/a;->n()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/hybrid/accessory/a/f/b/b;-><init>(BBI)V

    return-object v0
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()Lcom/miui/hybrid/accessory/a/f/b/e;
    .locals 3

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/e;

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/a;->l()B

    move-result v1

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/a;->n()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/miui/hybrid/accessory/a/f/b/e;-><init>(BI)V

    return-object v0
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i()Lcom/miui/hybrid/accessory/a/f/b/d;
    .locals 3

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/d;

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/a;->l()B

    move-result v1

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/a;->n()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/miui/hybrid/accessory/a/f/b/d;-><init>(BI)V

    return-object v0
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/a;->l()B

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public l()B
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhI:Lcom/miui/hybrid/accessory/a/f/c/b;

    invoke-virtual {v0}, Lcom/miui/hybrid/accessory/a/f/c/b;->c()I

    move-result v0

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhC:[B

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/hybrid/accessory/a/f/b/a;->bDt([BII)I

    iget-object v0, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhC:[B

    aget-byte v0, v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhI:Lcom/miui/hybrid/accessory/a/f/c/b;

    invoke-virtual {v0}, Lcom/miui/hybrid/accessory/a/f/c/b;->a()[B

    move-result-object v0

    iget-object v1, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhI:Lcom/miui/hybrid/accessory/a/f/c/b;

    invoke-virtual {v1}, Lcom/miui/hybrid/accessory/a/f/c/b;->b()I

    move-result v1

    aget-byte v0, v0, v1

    iget-object v1, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhI:Lcom/miui/hybrid/accessory/a/f/c/b;

    invoke-virtual {v1, v2}, Lcom/miui/hybrid/accessory/a/f/c/b;->a(I)V

    return v0
.end method

.method public m()S
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhD:[B

    iget-object v2, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhI:Lcom/miui/hybrid/accessory/a/f/c/b;

    invoke-virtual {v2}, Lcom/miui/hybrid/accessory/a/f/c/b;->c()I

    move-result v2

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhD:[B

    invoke-direct {p0, v2, v0, v3}, Lcom/miui/hybrid/accessory/a/f/b/a;->bDt([BII)I

    :goto_0
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    int-to-short v0, v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhI:Lcom/miui/hybrid/accessory/a/f/c/b;

    invoke-virtual {v0}, Lcom/miui/hybrid/accessory/a/f/c/b;->a()[B

    move-result-object v1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhI:Lcom/miui/hybrid/accessory/a/f/c/b;

    invoke-virtual {v0}, Lcom/miui/hybrid/accessory/a/f/c/b;->b()I

    move-result v0

    iget-object v2, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhI:Lcom/miui/hybrid/accessory/a/f/c/b;

    invoke-virtual {v2, v3}, Lcom/miui/hybrid/accessory/a/f/c/b;->a(I)V

    goto :goto_0
.end method

.method public n()I
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x4

    iget-object v1, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhB:[B

    iget-object v2, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhI:Lcom/miui/hybrid/accessory/a/f/c/b;

    invoke-virtual {v2}, Lcom/miui/hybrid/accessory/a/f/c/b;->c()I

    move-result v2

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhB:[B

    invoke-direct {p0, v2, v0, v3}, Lcom/miui/hybrid/accessory/a/f/b/a;->bDt([BII)I

    :goto_0
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhI:Lcom/miui/hybrid/accessory/a/f/c/b;

    invoke-virtual {v0}, Lcom/miui/hybrid/accessory/a/f/c/b;->a()[B

    move-result-object v1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhI:Lcom/miui/hybrid/accessory/a/f/c/b;

    invoke-virtual {v0}, Lcom/miui/hybrid/accessory/a/f/c/b;->b()I

    move-result v0

    iget-object v2, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhI:Lcom/miui/hybrid/accessory/a/f/c/b;

    invoke-virtual {v2, v3}, Lcom/miui/hybrid/accessory/a/f/c/b;->a(I)V

    goto :goto_0
.end method

.method public o()J
    .locals 8

    const/4 v0, 0x0

    const/16 v7, 0x8

    iget-object v1, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhA:[B

    iget-object v2, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhI:Lcom/miui/hybrid/accessory/a/f/c/b;

    invoke-virtual {v2}, Lcom/miui/hybrid/accessory/a/f/c/b;->c()I

    move-result v2

    if-ge v2, v7, :cond_0

    iget-object v2, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhA:[B

    invoke-direct {p0, v2, v0, v7}, Lcom/miui/hybrid/accessory/a/f/b/a;->bDt([BII)I

    :goto_0
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v7

    or-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    or-long/2addr v0, v2

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhI:Lcom/miui/hybrid/accessory/a/f/c/b;

    invoke-virtual {v0}, Lcom/miui/hybrid/accessory/a/f/c/b;->a()[B

    move-result-object v1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhI:Lcom/miui/hybrid/accessory/a/f/c/b;

    invoke-virtual {v0}, Lcom/miui/hybrid/accessory/a/f/c/b;->b()I

    move-result v0

    iget-object v2, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhI:Lcom/miui/hybrid/accessory/a/f/c/b;

    invoke-virtual {v2, v7}, Lcom/miui/hybrid/accessory/a/f/c/b;->a(I)V

    goto :goto_0
.end method

.method public p()D
    .locals 2

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/a;->o()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public q()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/a;->n()I

    move-result v0

    iget-object v1, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhI:Lcom/miui/hybrid/accessory/a/f/c/b;

    invoke-virtual {v1}, Lcom/miui/hybrid/accessory/a/f/c/b;->c()I

    move-result v1

    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/hybrid/accessory/a/f/b/a;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhI:Lcom/miui/hybrid/accessory/a/f/c/b;

    invoke-virtual {v2}, Lcom/miui/hybrid/accessory/a/f/c/b;->a()[B

    move-result-object v2

    iget-object v3, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhI:Lcom/miui/hybrid/accessory/a/f/c/b;

    invoke-virtual {v3}, Lcom/miui/hybrid/accessory/a/f/c/b;->b()I

    move-result v3

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget-object v2, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhI:Lcom/miui/hybrid/accessory/a/f/c/b;

    invoke-virtual {v2, v0}, Lcom/miui/hybrid/accessory/a/f/c/b;->a(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/d;

    const-string/jumbo v1, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {v0, v1}, Lcom/miui/hybrid/accessory/a/f/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public r()Ljava/nio/ByteBuffer;
    .locals 4

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/a;->n()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/hybrid/accessory/a/f/b/a;->bDu(I)V

    iget-object v1, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhI:Lcom/miui/hybrid/accessory/a/f/c/b;

    invoke-virtual {v1}, Lcom/miui/hybrid/accessory/a/f/c/b;->c()I

    move-result v1

    if-ge v1, v0, :cond_0

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhI:Lcom/miui/hybrid/accessory/a/f/c/b;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Lcom/miui/hybrid/accessory/a/f/c/b;->bDz([BII)I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhI:Lcom/miui/hybrid/accessory/a/f/c/b;

    invoke-virtual {v1}, Lcom/miui/hybrid/accessory/a/f/c/b;->a()[B

    move-result-object v1

    iget-object v2, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhI:Lcom/miui/hybrid/accessory/a/f/c/b;

    invoke-virtual {v2}, Lcom/miui/hybrid/accessory/a/f/c/b;->b()I

    move-result v2

    invoke-static {v1, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/hybrid/accessory/a/f/b/a;->bhI:Lcom/miui/hybrid/accessory/a/f/c/b;

    invoke-virtual {v2, v0}, Lcom/miui/hybrid/accessory/a/f/c/b;->a(I)V

    return-object v1
.end method
