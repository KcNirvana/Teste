.class public Lcom/xiaomi/a/j;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private bqE:I

.field private bqF:Z

.field private bqG:Ljava/lang/String;

.field private bqH:I

.field private bqI:Ljava/lang/String;

.field private bqJ:Ljava/util/List;

.field private bqK:Ljava/util/List;

.field private bqL:Z

.field private bqM:Z

.field public bqN:Ljava/util/List;

.field private bqO:I

.field public bqP:Ljava/util/List;

.field private bqQ:Ljava/util/Set;

.field private bqR:[I

.field private bqS:Z

.field private bqT:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/xiaomi/a/j;->bqM:Z

    iput-boolean v0, p0, Lcom/xiaomi/a/j;->bqS:Z

    iput-boolean v0, p0, Lcom/xiaomi/a/j;->bqF:Z

    iput-boolean v0, p0, Lcom/xiaomi/a/j;->bqT:Z

    iput v0, p0, Lcom/xiaomi/a/j;->bqE:I

    iput v0, p0, Lcom/xiaomi/a/j;->bqH:I

    invoke-direct {p0, p1}, Lcom/xiaomi/a/j;->bOQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/a/j;->bqI:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/a/j;->bqI:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/a/a/f;->bNp(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/a/j;->bqO:I

    invoke-static {p2}, Lcom/xiaomi/a/e;->bOt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/a/j;->bqG:Ljava/lang/String;

    return-void
.end method

.method private bOQ(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v1, "+86"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const-string/jumbo v0, "+86"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public bOO(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/a/j;->bqK:Ljava/util/List;

    return-void
.end method

.method public bOP(I)V
    .locals 1

    iget v0, p0, Lcom/xiaomi/a/j;->bqE:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/xiaomi/a/j;->bqE:I

    return-void
.end method

.method public bOR()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/a/j;->bqK:Ljava/util/List;

    return-object v0
.end method

.method public bOS()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/a/j;->bqJ:Ljava/util/List;

    return-object v0
.end method

.method public bOT()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/a/j;->bqO:I

    return v0
.end method

.method public bOU()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/a/j;->bqI:Ljava/lang/String;

    return-object v0
.end method

.method public bOV([I)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/a/j;->bqR:[I

    return-void
.end method

.method public bOW()[I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/a/j;->bqR:[I

    return-object v0
.end method

.method public bOX()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/a/j;->bqQ:Ljava/util/Set;

    return-object v0
.end method

.method public bOY()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/a/j;->bqE:I

    return v0
.end method

.method public bOZ(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/a/j;->bqJ:Ljava/util/List;

    return-void
.end method

.method public bPa(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/a/j;->bqH:I

    return-void
.end method

.method public bPb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/a/j;->bqG:Ljava/lang/String;

    return-object v0
.end method

.method public bPc(Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/a/j;->bqQ:Ljava/util/Set;

    return-void
.end method

.method public bPd()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/a/j;->bqH:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/a/j;->bqL:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/a/j;->bqI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/a/j;->bqG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
