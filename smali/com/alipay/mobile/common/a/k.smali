.class final Lcom/alipay/mobile/common/a/k;
.super Ljava/lang/Object;
.source "MemCacheKey.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/alipay/mobile/common/a/j;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alipay/mobile/common/a/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/a/k;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/common/a/k;->b:Lcom/alipay/mobile/common/a/j;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    check-cast p1, Lcom/alipay/mobile/common/a/k;

    iget-object v1, p0, Lcom/alipay/mobile/common/a/k;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/common/a/k;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/a/k;->b:Lcom/alipay/mobile/common/a/j;

    iget-object v1, p1, Lcom/alipay/mobile/common/a/k;->b:Lcom/alipay/mobile/common/a/j;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/a/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/a/k;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/alipay/mobile/common/a/k;->b:Lcom/alipay/mobile/common/a/j;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/a/j;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/common/a/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/a/k;->b:Lcom/alipay/mobile/common/a/j;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/a/j;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
