.class public Lcom/miui/hybrid/accessory/a/f/b/j;
.super Lcom/miui/hybrid/accessory/a/f/b/a;


# static fields
.field private static bhL:I

.field private static bhM:I

.field private static f:I

.field private static g:I

.field private static i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2710

    sput v0, Lcom/miui/hybrid/accessory/a/f/b/j;->f:I

    sput v0, Lcom/miui/hybrid/accessory/a/f/b/j;->g:I

    sput v0, Lcom/miui/hybrid/accessory/a/f/b/j;->bhL:I

    const/high16 v0, 0xa00000

    sput v0, Lcom/miui/hybrid/accessory/a/f/b/j;->i:I

    const/high16 v0, 0x6400000

    sput v0, Lcom/miui/hybrid/accessory/a/f/b/j;->bhM:I

    return-void
.end method

.method public constructor <init>(Lcom/miui/hybrid/accessory/a/f/c/b;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/hybrid/accessory/a/f/b/a;-><init>(Lcom/miui/hybrid/accessory/a/f/c/b;ZZ)V

    return-void
.end method


# virtual methods
.method public e()Lcom/miui/hybrid/accessory/a/f/b/b;
    .locals 4

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/j;->l()B

    move-result v0

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/j;->l()B

    move-result v1

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/j;->n()I

    move-result v2

    sget v3, Lcom/miui/hybrid/accessory/a/f/b/j;->f:I

    if-gt v2, v3, :cond_0

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/b/b;

    invoke-direct {v3, v0, v1, v2}, Lcom/miui/hybrid/accessory/a/f/b/b;-><init>(BBI)V

    return-object v3

    :cond_0
    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Thrift map size "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " out of range!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lcom/miui/hybrid/accessory/a/f/b/f;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public g()Lcom/miui/hybrid/accessory/a/f/b/e;
    .locals 4

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/j;->l()B

    move-result v0

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/j;->n()I

    move-result v1

    sget v2, Lcom/miui/hybrid/accessory/a/f/b/j;->g:I

    if-gt v1, v2, :cond_0

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/b/e;

    invoke-direct {v2, v0, v1}, Lcom/miui/hybrid/accessory/a/f/b/e;-><init>(BI)V

    return-object v2

    :cond_0
    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Thrift list size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " out of range!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lcom/miui/hybrid/accessory/a/f/b/f;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public i()Lcom/miui/hybrid/accessory/a/f/b/d;
    .locals 4

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/j;->l()B

    move-result v0

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/j;->n()I

    move-result v1

    sget v2, Lcom/miui/hybrid/accessory/a/f/b/j;->bhL:I

    if-gt v1, v2, :cond_0

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/b/d;

    invoke-direct {v2, v0, v1}, Lcom/miui/hybrid/accessory/a/f/b/d;-><init>(BI)V

    return-object v2

    :cond_0
    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Thrift set size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " out of range!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lcom/miui/hybrid/accessory/a/f/b/f;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public q()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/j;->n()I

    move-result v0

    sget v1, Lcom/miui/hybrid/accessory/a/f/b/j;->i:I

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/hybrid/accessory/a/f/b/j;->bhI:Lcom/miui/hybrid/accessory/a/f/c/b;

    invoke-virtual {v1}, Lcom/miui/hybrid/accessory/a/f/c/b;->c()I

    move-result v1

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/miui/hybrid/accessory/a/f/b/j;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Lcom/miui/hybrid/accessory/a/f/b/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Thrift string size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " out of range!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Lcom/miui/hybrid/accessory/a/f/b/f;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/hybrid/accessory/a/f/b/j;->bhI:Lcom/miui/hybrid/accessory/a/f/c/b;

    invoke-virtual {v2}, Lcom/miui/hybrid/accessory/a/f/c/b;->a()[B

    move-result-object v2

    iget-object v3, p0, Lcom/miui/hybrid/accessory/a/f/b/j;->bhI:Lcom/miui/hybrid/accessory/a/f/c/b;

    invoke-virtual {v3}, Lcom/miui/hybrid/accessory/a/f/c/b;->b()I

    move-result v3

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget-object v2, p0, Lcom/miui/hybrid/accessory/a/f/b/j;->bhI:Lcom/miui/hybrid/accessory/a/f/c/b;

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

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/j;->n()I

    move-result v0

    sget v1, Lcom/miui/hybrid/accessory/a/f/b/j;->bhM:I

    if-gt v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/hybrid/accessory/a/f/b/j;->bDu(I)V

    iget-object v1, p0, Lcom/miui/hybrid/accessory/a/f/b/j;->bhI:Lcom/miui/hybrid/accessory/a/f/c/b;

    invoke-virtual {v1}, Lcom/miui/hybrid/accessory/a/f/c/b;->c()I

    move-result v1

    if-ge v1, v0, :cond_1

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/miui/hybrid/accessory/a/f/b/j;->bhI:Lcom/miui/hybrid/accessory/a/f/c/b;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Lcom/miui/hybrid/accessory/a/f/c/b;->bDz([BII)I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Lcom/miui/hybrid/accessory/a/f/b/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Thrift binary size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " out of range!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Lcom/miui/hybrid/accessory/a/f/b/f;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/miui/hybrid/accessory/a/f/b/j;->bhI:Lcom/miui/hybrid/accessory/a/f/c/b;

    invoke-virtual {v1}, Lcom/miui/hybrid/accessory/a/f/c/b;->a()[B

    move-result-object v1

    iget-object v2, p0, Lcom/miui/hybrid/accessory/a/f/b/j;->bhI:Lcom/miui/hybrid/accessory/a/f/c/b;

    invoke-virtual {v2}, Lcom/miui/hybrid/accessory/a/f/c/b;->b()I

    move-result v2

    invoke-static {v1, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/hybrid/accessory/a/f/b/j;->bhI:Lcom/miui/hybrid/accessory/a/f/c/b;

    invoke-virtual {v2, v0}, Lcom/miui/hybrid/accessory/a/f/c/b;->a(I)V

    return-object v1
.end method
