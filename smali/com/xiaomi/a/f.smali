.class public abstract Lcom/xiaomi/a/f;
.super Ljava/lang/Object;
.source ""


# static fields
.field protected static bqB:I

.field protected static bqC:I

.field protected static bqz:I


# instance fields
.field protected bqA:Lcom/xiaomi/a/b/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/xiaomi/a/f;->bqz:I

    sput v0, Lcom/xiaomi/a/f;->bqC:I

    sput v0, Lcom/xiaomi/a/f;->bqB:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static bOA(Lcom/xiaomi/a/j;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/a/j;->bPd()I

    move-result v1

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected static bOw(Lcom/xiaomi/a/j;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/a/j;->bPd()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected bOB([DLcom/xiaomi/a/j;)[D
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/xiaomi/a/j;->bPd()I

    move-result v1

    invoke-static {v1}, Lcom/xiaomi/a/b/e;->bNW(I)I

    move-result v2

    invoke-static {v1}, Lcom/xiaomi/a/b/e;->bNX(I)I

    move-result v3

    const v4, 0xfffffff

    and-int/2addr v1, v4

    if-nez v1, :cond_1

    :cond_0
    return-object p1

    :cond_1
    if-eq v2, v3, :cond_0

    array-length v1, p1

    new-array v1, v1, [D

    array-length v4, p1

    invoke-static {p1, v0, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-wide v4, v1, v0

    const/4 v6, 0x1

    aget-wide v6, v1, v6

    sub-double/2addr v4, v6

    sub-int v2, v3, v2

    int-to-double v2, v2

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    div-double/2addr v2, v4

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_2

    aget-wide v4, v1, v0

    add-double/2addr v4, v2

    aput-wide v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method protected abstract bOm(Lcom/xiaomi/a/j;Landroid/content/Context;)Z
.end method

.method public bOx(Lcom/xiaomi/a/j;Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Lcom/xiaomi/a/j;->bOR()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/g;->bOD(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/a/f;->bOm(Lcom/xiaomi/a/j;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaomi/a/j;->bOP(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/xiaomi/a/j;->bOP(I)V

    goto :goto_1
.end method

.method protected bOy(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/xiaomi/a/c;->bOr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bOz(Lcom/xiaomi/a/j;Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/a/f;->bqA:Lcom/xiaomi/a/b/e;

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/a/f;->bqA:Lcom/xiaomi/a/b/e;

    if-nez v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0, p2}, Lcom/xiaomi/a/f;->bOy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/xiaomi/a/b/e;

    invoke-direct {v1}, Lcom/xiaomi/a/b/e;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/a/f;->bqA:Lcom/xiaomi/a/b/e;

    iget-object v1, p0, Lcom/xiaomi/a/f;->bqA:Lcom/xiaomi/a/b/e;

    invoke-virtual {v1, v0}, Lcom/xiaomi/a/b/e;->bNU(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/a/f;->bqA:Lcom/xiaomi/a/b/e;

    invoke-virtual {v0}, Lcom/xiaomi/a/b/e;->bNV()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/a/f;->bqA:Lcom/xiaomi/a/b/e;

    invoke-virtual {v0, p1}, Lcom/xiaomi/a/b/e;->bNT(Lcom/xiaomi/a/j;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/a/j;->bPa(I)V

    goto :goto_1
.end method
