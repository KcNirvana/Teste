.class public Lcom/xiaomi/push/service/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/xiaomi/c/a/d;
    .locals 2

    invoke-static {p1}, Lcom/xiaomi/push/service/a/e;->a(Ljava/lang/String;)Lcom/xiaomi/c/a/d;

    move-result-object v0

    iput-object p2, v0, Lcom/xiaomi/c/a/d;->d:Ljava/lang/String;

    iput p3, v0, Lcom/xiaomi/c/a/d;->e:I

    iput-wide p4, v0, Lcom/xiaomi/c/a/d;->f:J

    iput-object p6, v0, Lcom/xiaomi/c/a/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/xiaomi/c/a/d;
    .locals 2

    new-instance v0, Lcom/xiaomi/c/a/d;

    invoke-direct {v0}, Lcom/xiaomi/c/a/d;-><init>()V

    const/16 v1, 0x3e8

    iput v1, v0, Lcom/xiaomi/c/a/d;->a:I

    const/16 v1, 0x3e9

    iput v1, v0, Lcom/xiaomi/c/a/d;->c:I

    iput-object p0, v0, Lcom/xiaomi/c/a/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static a()Lcom/xiaomi/c/a/e;
    .locals 2

    const/16 v1, 0x3e8

    new-instance v0, Lcom/xiaomi/c/a/e;

    invoke-direct {v0}, Lcom/xiaomi/c/a/e;-><init>()V

    iput v1, v0, Lcom/xiaomi/c/a/e;->a:I

    iput v1, v0, Lcom/xiaomi/c/a/e;->c:I

    const-string v1, "P100000"

    iput-object v1, v0, Lcom/xiaomi/c/a/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;IJJ)Lcom/xiaomi/c/a/e;
    .locals 2

    invoke-static {}, Lcom/xiaomi/push/service/a/e;->a()Lcom/xiaomi/c/a/e;

    move-result-object v0

    iput p1, v0, Lcom/xiaomi/c/a/e;->d:I

    iput-wide p2, v0, Lcom/xiaomi/c/a/e;->e:J

    iput-wide p4, v0, Lcom/xiaomi/c/a/e;->f:J

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/j/a/f;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/xiaomi/j/a/f;

    invoke-direct {v0}, Lcom/xiaomi/j/a/f;-><init>()V

    const-string v1, "category_client_report_data"

    invoke-virtual {v0, v1}, Lcom/xiaomi/j/a/f;->d(Ljava/lang/String;)Lcom/xiaomi/j/a/f;

    const-string v1, "push_sdk_channel"

    invoke-virtual {v0, v1}, Lcom/xiaomi/j/a/f;->a(Ljava/lang/String;)Lcom/xiaomi/j/a/f;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/j/a/f;->a(J)Lcom/xiaomi/j/a/f;

    invoke-virtual {v0, p1}, Lcom/xiaomi/j/a/f;->b(Ljava/lang/String;)Lcom/xiaomi/j/a/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/j/a/f;->c(Z)Lcom/xiaomi/j/a/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/j/a/f;->b(J)Lcom/xiaomi/j/a/f;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/j/a/f;->g(Ljava/lang/String;)Lcom/xiaomi/j/a/f;

    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v0, v1}, Lcom/xiaomi/j/a/f;->e(Ljava/lang/String;)Lcom/xiaomi/j/a/f;

    invoke-static {}, Lcom/xiaomi/push/service/bd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/j/a/f;->f(Ljava/lang/String;)Lcom/xiaomi/j/a/f;

    const-string v1, "quality_support"

    invoke-virtual {v0, v1}, Lcom/xiaomi/j/a/f;->c(Ljava/lang/String;)Lcom/xiaomi/j/a/f;

    goto :goto_0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    const-string v0, "E100000"

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0xbb8

    if-ne p0, v0, :cond_1

    const-string v0, "E100002"

    goto :goto_0

    :cond_1
    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_2

    const-string v0, "E100001"

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lcom/xiaomi/j/a/f;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/a/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaomi/push/service/be;->a(Landroid/content/Context;Lcom/xiaomi/j/a/f;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.xiaomi.mipush.sdk.PushMessageHandler"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/xiaomi/j/a/av;->a(Lb/a/a/a;)[B

    move-result-object v1

    const-string v2, "com.xiaomi.mipush.SEND_TINYDATA"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mipush_payload"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "in 3th app send perf/event error"

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/xiaomi/push/service/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/j/a/f;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/xiaomi/push/service/bd;->a(Lcom/xiaomi/j/a/f;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/j/a/f;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "is not valid..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send event/perf data item id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaomi/j/a/f;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/b/a/c/c;->c(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/xiaomi/push/service/a/e;->a(Landroid/content/Context;Lcom/xiaomi/j/a/f;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(I)I
    .locals 1

    const/4 v0, -0x1

    if-lez p0, :cond_0

    add-int/lit16 v0, p0, 0x3e8

    :cond_0
    return v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/xiaomi/push/service/a/e;->d(Landroid/content/Context;)Lcom/xiaomi/c/a/b;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/push/service/a/b;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/service/a/b;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/xiaomi/push/service/a/c;

    invoke-direct {v2, p0}, Lcom/xiaomi/push/service/a/c;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0, v1, v2}, Lcom/xiaomi/c/c/a;->a(Landroid/content/Context;Lcom/xiaomi/c/a/b;Lcom/xiaomi/c/d/g;Lcom/xiaomi/c/d/h;)V

    invoke-static {p0}, Lcom/xiaomi/push/service/a/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/c/c/a;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/xiaomi/b/a/d/h;->a(Landroid/content/Context;)Lcom/xiaomi/b/a/d/h;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/push/service/a/f;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/service/a/f;-><init>(Landroid/content/Context;)V

    const v2, 0x15180

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/b/a/d/h;->a(Lcom/xiaomi/b/a/d/h$a;I)Z

    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/push/service/a/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/push/service/a/e;->d(Landroid/content/Context;)Lcom/xiaomi/c/a/b;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/c/c/a;->a(Landroid/content/Context;Lcom/xiaomi/c/a/b;)V

    :cond_0
    return-void
.end method

.method public static d(Landroid/content/Context;)Lcom/xiaomi/c/a/b;
    .locals 6

    const v5, 0x15180

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/xiaomi/push/service/an;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/an;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/j/a/h;->az:Lcom/xiaomi/j/a/h;

    invoke-virtual {v1}, Lcom/xiaomi/j/a/h;->a()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/xiaomi/push/service/an;->a(IZ)Z

    move-result v0

    invoke-static {p0}, Lcom/xiaomi/push/service/an;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/an;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/j/a/h;->ay:Lcom/xiaomi/j/a/h;

    invoke-virtual {v2}, Lcom/xiaomi/j/a/h;->a()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/push/service/an;->a(IZ)Z

    move-result v1

    invoke-static {p0}, Lcom/xiaomi/push/service/an;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/an;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/j/a/h;->aB:Lcom/xiaomi/j/a/h;

    invoke-virtual {v3}, Lcom/xiaomi/j/a/h;->a()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Lcom/xiaomi/push/service/an;->a(II)I

    move-result v2

    invoke-static {p0}, Lcom/xiaomi/push/service/an;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/an;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/j/a/h;->aA:Lcom/xiaomi/j/a/h;

    invoke-virtual {v4}, Lcom/xiaomi/j/a/h;->a()I

    move-result v4

    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/push/service/an;->a(II)I

    move-result v3

    invoke-static {}, Lcom/xiaomi/c/a/b;->a()Lcom/xiaomi/c/a/b$a;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/xiaomi/c/a/b$a;->a(Z)Lcom/xiaomi/c/a/b$a;

    move-result-object v1

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Lcom/xiaomi/c/a/b$a;->a(J)Lcom/xiaomi/c/a/b$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/c/a/b$a;->b(Z)Lcom/xiaomi/c/a/b$a;

    move-result-object v0

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/c/a/b$a;->b(J)Lcom/xiaomi/c/a/b$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/c/a/b$a;->a(Landroid/content/Context;)Lcom/xiaomi/c/a/b;

    move-result-object v0

    return-object v0
.end method
