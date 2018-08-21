.class public Lcom/alipay/android/app/logic/c/d;
.super Ljava/lang/Object;
.source "LogicPackUtils.java"


# direct methods
.method public static a(ILjava/lang/String;ILcom/alipay/android/app/trans/config/a;)Lcom/alipay/android/app/trans/a;
    .locals 2

    invoke-static {}, Lcom/alipay/android/app/logic/c;->a()Lcom/alipay/android/app/logic/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alipay/android/app/logic/c;->b(I)Lcom/alipay/android/app/logic/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Lcom/alipay/android/app/logic/b;->a(Lcom/alipay/android/app/trans/config/a;)V

    :cond_0
    new-instance v1, Lcom/alipay/android/app/logic/a/i;

    invoke-direct {v1}, Lcom/alipay/android/app/logic/a/i;-><init>()V

    invoke-virtual {v1, p3, p1, p0, p2}, Lcom/alipay/android/app/logic/a/i;->a(Lcom/alipay/android/app/trans/config/a;Ljava/lang/String;II)Lcom/alipay/android/app/logic/b/a/a;

    move-result-object v1

    invoke-static {v0, p1}, Lcom/alipay/android/app/logic/c/b;->a(Lcom/alipay/android/app/logic/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/logic/b/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/app/trans/a;

    invoke-direct {v0}, Lcom/alipay/android/app/trans/a;-><init>()V

    iput p2, v0, Lcom/alipay/android/app/trans/a;->c:I

    invoke-virtual {v1}, Lcom/alipay/android/app/logic/b/a/a;->a()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/trans/a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;ILcom/alipay/android/app/trans/config/a;)Lcom/alipay/android/app/trans/a;
    .locals 3

    invoke-static {}, Lcom/alipay/android/app/logic/c;->a()Lcom/alipay/android/app/logic/c;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/alipay/android/app/logic/c;->b(I)Lcom/alipay/android/app/logic/b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p4}, Lcom/alipay/android/app/logic/b;->a(Lcom/alipay/android/app/trans/config/a;)V

    :cond_0
    new-instance v2, Lcom/alipay/android/app/logic/a/e;

    invoke-direct {v2}, Lcom/alipay/android/app/logic/a/e;-><init>()V

    const/16 v0, 0x7d1

    if-ne p0, v0, :cond_1

    new-instance v0, Lcom/alipay/android/app/logic/a/f;

    invoke-direct {v0, v2}, Lcom/alipay/android/app/logic/a/f;-><init>(Lcom/alipay/android/app/logic/a/a;)V

    :goto_0
    invoke-virtual {v0, p4}, Lcom/alipay/android/app/logic/a/a;->a(Lcom/alipay/android/app/trans/config/a;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/alipay/android/app/logic/a/a;->a([BLjava/lang/String;)[B

    move-result-object v0

    new-instance v2, Lcom/alipay/android/app/trans/a;

    invoke-direct {v2}, Lcom/alipay/android/app/trans/a;-><init>()V

    iput p3, v2, Lcom/alipay/android/app/trans/a;->c:I

    iput-object v0, v2, Lcom/alipay/android/app/trans/a;->a:Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/alipay/android/app/logic/c/b;->a(Lcom/alipay/android/app/logic/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/android/app/trans/a;->d:Ljava/lang/String;

    return-object v2

    :cond_1
    new-instance v0, Lcom/alipay/android/app/logic/a/d;

    invoke-direct {v0, v2}, Lcom/alipay/android/app/logic/a/d;-><init>(Lcom/alipay/android/app/logic/a/a;)V

    goto :goto_0
.end method

.method public static a([BLcom/alipay/android/app/trans/config/a;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/PublicKeyException;,
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/alipay/android/app/logic/a/b;

    invoke-direct {v0}, Lcom/alipay/android/app/logic/a/b;-><init>()V

    new-instance v1, Lcom/alipay/android/app/logic/a/h;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/logic/a/h;-><init>(Lcom/alipay/android/app/logic/a/a;)V

    new-instance v0, Lcom/alipay/android/app/logic/a/c;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/logic/a/c;-><init>(Lcom/alipay/android/app/logic/a/a;)V

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/logic/a/a;->a(Lcom/alipay/android/app/trans/config/a;)V

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/logic/a/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/alipay/android/app/trans/config/a;)[B
    .locals 7

    const/4 v0, 0x0

    const/4 v6, 0x1

    const-string/jumbo v1, ""

    const-string/jumbo v2, "LogicPackUtils::packTplRequestData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/android/app/logic/a/c;

    invoke-direct {v1}, Lcom/alipay/android/app/logic/a/c;-><init>()V

    new-instance v2, Lcom/alipay/android/app/logic/a/b;

    invoke-direct {v2, v1}, Lcom/alipay/android/app/logic/a/b;-><init>(Lcom/alipay/android/app/logic/a/a;)V

    new-instance v1, Lcom/alipay/android/app/logic/a/d;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/logic/a/d;-><init>(Lcom/alipay/android/app/logic/a/a;)V

    invoke-virtual {v1, p1}, Lcom/alipay/android/app/logic/a/a;->a(Lcom/alipay/android/app/trans/config/a;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/logic/a/a;->a([BLjava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const-string/jumbo v1, ""

    const-string/jumbo v2, "LogicPackUtils::packTplRequestData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "end > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(ILjava/lang/String;ILcom/alipay/android/app/trans/config/a;)Lcom/alipay/android/app/trans/a;
    .locals 2

    invoke-static {}, Lcom/alipay/android/app/logic/c;->a()Lcom/alipay/android/app/logic/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alipay/android/app/logic/c;->b(I)Lcom/alipay/android/app/logic/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Lcom/alipay/android/app/logic/b;->a(Lcom/alipay/android/app/trans/config/a;)V

    :cond_0
    new-instance v1, Lcom/alipay/android/app/logic/a/j;

    invoke-direct {v1}, Lcom/alipay/android/app/logic/a/j;-><init>()V

    invoke-virtual {v1, p3, p1, p0, p2}, Lcom/alipay/android/app/logic/a/j;->a(Lcom/alipay/android/app/trans/config/a;Ljava/lang/String;II)Lcom/alipay/android/app/logic/b/a/b;

    move-result-object v1

    invoke-static {v0, p1}, Lcom/alipay/android/app/logic/c/b;->a(Lcom/alipay/android/app/logic/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/android/app/logic/b/a/b;->y:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/alipay/android/app/trans/config/a;->x()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/android/app/logic/b/a/b;->z:Ljava/lang/String;

    new-instance v0, Lcom/alipay/android/app/trans/a;

    invoke-direct {v0}, Lcom/alipay/android/app/trans/a;-><init>()V

    invoke-virtual {v1}, Lcom/alipay/android/app/logic/b/a/b;->a()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/trans/a;->a:Ljava/lang/Object;

    iput p2, v0, Lcom/alipay/android/app/trans/a;->c:I

    return-object v0
.end method

.method public static b(ILjava/lang/String;Ljava/lang/String;ILcom/alipay/android/app/trans/config/a;)Lcom/alipay/android/app/trans/a;
    .locals 3

    invoke-static {}, Lcom/alipay/android/app/logic/c;->a()Lcom/alipay/android/app/logic/c;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/alipay/android/app/logic/c;->b(I)Lcom/alipay/android/app/logic/b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p4}, Lcom/alipay/android/app/logic/b;->a(Lcom/alipay/android/app/trans/config/a;)V

    :cond_0
    new-instance v0, Lcom/alipay/android/app/logic/a/c;

    invoke-direct {v0}, Lcom/alipay/android/app/logic/a/c;-><init>()V

    new-instance v2, Lcom/alipay/android/app/logic/a/b;

    invoke-direct {v2, v0}, Lcom/alipay/android/app/logic/a/b;-><init>(Lcom/alipay/android/app/logic/a/a;)V

    const/16 v0, 0x7d1

    if-ne p0, v0, :cond_1

    new-instance v0, Lcom/alipay/android/app/logic/a/f;

    invoke-direct {v0, v2}, Lcom/alipay/android/app/logic/a/f;-><init>(Lcom/alipay/android/app/logic/a/a;)V

    :goto_0
    invoke-virtual {v0, p4}, Lcom/alipay/android/app/logic/a/a;->a(Lcom/alipay/android/app/trans/config/a;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/alipay/android/app/logic/a/a;->a([BLjava/lang/String;)[B

    move-result-object v0

    new-instance v2, Lcom/alipay/android/app/trans/a;

    invoke-direct {v2}, Lcom/alipay/android/app/trans/a;-><init>()V

    iput p3, v2, Lcom/alipay/android/app/trans/a;->c:I

    iput-object v0, v2, Lcom/alipay/android/app/trans/a;->a:Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/alipay/android/app/logic/c/b;->a(Lcom/alipay/android/app/logic/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/android/app/trans/a;->d:Ljava/lang/String;

    return-object v2

    :cond_1
    new-instance v0, Lcom/alipay/android/app/logic/a/d;

    invoke-direct {v0, v2}, Lcom/alipay/android/app/logic/a/d;-><init>(Lcom/alipay/android/app/logic/a/a;)V

    goto :goto_0
.end method

.method public static c(ILjava/lang/String;ILcom/alipay/android/app/trans/config/a;)Lcom/alipay/android/app/trans/a;
    .locals 2

    invoke-static {}, Lcom/alipay/android/app/logic/c;->a()Lcom/alipay/android/app/logic/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alipay/android/app/logic/c;->b(I)Lcom/alipay/android/app/logic/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Lcom/alipay/android/app/logic/b;->a(Lcom/alipay/android/app/trans/config/a;)V

    :cond_0
    new-instance v1, Lcom/alipay/android/app/logic/a/g;

    invoke-direct {v1}, Lcom/alipay/android/app/logic/a/g;-><init>()V

    invoke-virtual {v1, p3, p1, p0, p2}, Lcom/alipay/android/app/logic/a/g;->a(Lcom/alipay/android/app/trans/config/a;Ljava/lang/String;II)Lcom/alipay/android/app/logic/b/a/b;

    move-result-object v1

    invoke-static {v0, p1}, Lcom/alipay/android/app/logic/c/b;->a(Lcom/alipay/android/app/logic/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/android/app/logic/b/a/b;->y:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/alipay/android/app/trans/config/a;->x()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/android/app/logic/b/a/b;->z:Ljava/lang/String;

    new-instance v0, Lcom/alipay/android/app/trans/a;

    invoke-direct {v0}, Lcom/alipay/android/app/trans/a;-><init>()V

    invoke-virtual {v1}, Lcom/alipay/android/app/logic/b/a/b;->a()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/trans/a;->a:Ljava/lang/Object;

    iput p2, v0, Lcom/alipay/android/app/trans/a;->c:I

    return-object v0
.end method
