.class public Lcom/xiaomi/a/a/c;
.super Lcom/xiaomi/a/a/j;
.source ""


# instance fields
.field private bpp:Ljava/util/List;

.field private bpq:[[I

.field bpr:I

.field bps:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/xiaomi/a/a/j;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/a/a/c;->bpq:[[I

    iput-object v1, p0, Lcom/xiaomi/a/a/c;->bpp:Ljava/util/List;

    iput v0, p0, Lcom/xiaomi/a/a/c;->bps:I

    iput v0, p0, Lcom/xiaomi/a/a/c;->bpr:I

    return-void
.end method


# virtual methods
.method protected bNi()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/a/a/c;->bpp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bNl(Ljava/io/DataInputStream;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/a/a/c;->bpp:Ljava/util/List;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readChar()C

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/a/a/c;->bpp:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bNm(Lcom/xiaomi/a/j;[II)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/xiaomi/a/j;->bPb()Ljava/lang/String;

    move-result-object v3

    move v2, v0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/a/a/c;->bpp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/a/a/c;->bpp:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    add-int v0, p3, v2

    aget v1, p2, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p2, v0

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method
