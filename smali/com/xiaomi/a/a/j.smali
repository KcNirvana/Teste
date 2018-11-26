.class public abstract Lcom/xiaomi/a/a/j;
.super Lcom/xiaomi/a/a/a;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/a/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public bNN(Lcom/xiaomi/a/j;[II)Z
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    if-eqz p2, :cond_0

    array-length v0, p2

    if-ge p3, v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/a/a/j;->bNm(Lcom/xiaomi/a/j;[II)Z

    move-result v0

    return v0
.end method

.method public abstract bNl(Ljava/io/DataInputStream;)V
.end method

.method protected abstract bNm(Lcom/xiaomi/a/j;[II)Z
.end method
