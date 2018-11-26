.class public Lcom/xiaomi/a/a/d;
.super Lcom/xiaomi/a/a/j;
.source ""


# instance fields
.field bpt:Ljava/util/List;

.field bpu:I

.field bpv:I

.field bpw:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/xiaomi/a/a/j;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/a/a/d;->bpt:Ljava/util/List;

    iput v1, p0, Lcom/xiaomi/a/a/d;->bpw:I

    iput v1, p0, Lcom/xiaomi/a/a/d;->bpv:I

    iput v1, p0, Lcom/xiaomi/a/a/d;->bpu:I

    return-void
.end method

.method private bNn(Lcom/xiaomi/a/j;)I
    .locals 1

    invoke-virtual {p1}, Lcom/xiaomi/a/j;->bPb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method


# virtual methods
.method public bNl(Ljava/io/DataInputStream;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/a/a/d;->bpu:I

    return-void
.end method

.method public bNm(Lcom/xiaomi/a/j;[II)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/xiaomi/a/a/d;->bNn(Lcom/xiaomi/a/j;)I

    move-result v0

    iget v1, p0, Lcom/xiaomi/a/a/d;->bpu:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    aget v0, p2, p3

    add-int/lit8 v0, v0, 0x1

    aput v0, p2, p3

    const/4 v0, 0x1

    return v0
.end method
