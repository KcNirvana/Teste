.class public final Lcom/xiaomi/f/f;
.super Lcom/xiaomi/f/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/f/b;-><init>()V

    const-string v0, "PING"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/f/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/xiaomi/f/f;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/f/f;->a(I)V

    return-void
.end method


# virtual methods
.method a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/f/f;->k()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/xiaomi/f/b;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_0
.end method

.method public l()I
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/f/f;->k()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/xiaomi/f/b;->l()I

    move-result v0

    goto :goto_0
.end method
