.class final Lcom/xiaomi/h/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/h/d$a;
    }
.end annotation


# direct methods
.method static a(Ljava/lang/Exception;)Lcom/xiaomi/h/d$a;
    .locals 4

    invoke-static {p0}, Lcom/xiaomi/h/d;->e(Ljava/lang/Exception;)V

    instance-of v0, p0, Lcom/xiaomi/g/l;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/xiaomi/g/l;

    invoke-virtual {v0}, Lcom/xiaomi/g/l;->a()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/xiaomi/g/l;

    invoke-virtual {p0}, Lcom/xiaomi/g/l;->a()Ljava/lang/Throwable;

    move-result-object p0

    :cond_0
    new-instance v1, Lcom/xiaomi/h/d$a;

    invoke-direct {v1}, Lcom/xiaomi/h/d$a;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/xiaomi/g/c;->a(Ljava/lang/Throwable;)I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v3, Lcom/xiaomi/push/f/a;->i:Lcom/xiaomi/push/f/a;

    invoke-virtual {v3}, Lcom/xiaomi/push/f/a;->a()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Lcom/xiaomi/push/f/a;->a(I)Lcom/xiaomi/push/f/a;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/h/d$a;->a:Lcom/xiaomi/push/f/a;

    :cond_2
    iget-object v2, v1, Lcom/xiaomi/h/d$a;->a:Lcom/xiaomi/push/f/a;

    if-nez v2, :cond_3

    sget-object v2, Lcom/xiaomi/push/f/a;->q:Lcom/xiaomi/push/f/a;

    iput-object v2, v1, Lcom/xiaomi/h/d$a;->a:Lcom/xiaomi/push/f/a;

    :cond_3
    iget-object v2, v1, Lcom/xiaomi/h/d$a;->a:Lcom/xiaomi/push/f/a;

    sget-object v3, Lcom/xiaomi/push/f/a;->q:Lcom/xiaomi/push/f/a;

    if-ne v2, v3, :cond_4

    iput-object v0, v1, Lcom/xiaomi/h/d$a;->b:Ljava/lang/String;

    :cond_4
    return-object v1
.end method

.method static b(Ljava/lang/Exception;)Lcom/xiaomi/h/d$a;
    .locals 5

    invoke-static {p0}, Lcom/xiaomi/h/d;->e(Ljava/lang/Exception;)V

    instance-of v0, p0, Lcom/xiaomi/g/l;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/xiaomi/g/l;

    invoke-virtual {v0}, Lcom/xiaomi/g/l;->a()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/xiaomi/g/l;

    invoke-virtual {p0}, Lcom/xiaomi/g/l;->a()Ljava/lang/Throwable;

    move-result-object p0

    :cond_0
    new-instance v1, Lcom/xiaomi/h/d$a;

    invoke-direct {v1}, Lcom/xiaomi/h/d$a;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {p0}, Lcom/xiaomi/g/c;->a(Ljava/lang/Throwable;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_5

    sget-object v3, Lcom/xiaomi/push/f/a;->s:Lcom/xiaomi/push/f/a;

    invoke-virtual {v3}, Lcom/xiaomi/push/f/a;->a()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Lcom/xiaomi/push/f/a;->a(I)Lcom/xiaomi/push/f/a;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/h/d$a;->a:Lcom/xiaomi/push/f/a;

    iget-object v2, v1, Lcom/xiaomi/h/d$a;->a:Lcom/xiaomi/push/f/a;

    sget-object v3, Lcom/xiaomi/push/f/a;->D:Lcom/xiaomi/push/f/a;

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2

    instance-of v2, v2, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/xiaomi/push/f/a;->C:Lcom/xiaomi/push/f/a;

    iput-object v2, v1, Lcom/xiaomi/h/d$a;->a:Lcom/xiaomi/push/f/a;

    :cond_2
    :goto_0
    iget-object v2, v1, Lcom/xiaomi/h/d$a;->a:Lcom/xiaomi/push/f/a;

    sget-object v3, Lcom/xiaomi/push/f/a;->A:Lcom/xiaomi/push/f/a;

    if-eq v2, v3, :cond_3

    iget-object v2, v1, Lcom/xiaomi/h/d$a;->a:Lcom/xiaomi/push/f/a;

    sget-object v3, Lcom/xiaomi/push/f/a;->B:Lcom/xiaomi/push/f/a;

    if-eq v2, v3, :cond_3

    iget-object v2, v1, Lcom/xiaomi/h/d$a;->a:Lcom/xiaomi/push/f/a;

    sget-object v3, Lcom/xiaomi/push/f/a;->D:Lcom/xiaomi/push/f/a;

    if-ne v2, v3, :cond_4

    :cond_3
    iput-object v0, v1, Lcom/xiaomi/h/d$a;->b:Ljava/lang/String;

    :cond_4
    return-object v1

    :cond_5
    sget-object v2, Lcom/xiaomi/push/f/a;->B:Lcom/xiaomi/push/f/a;

    iput-object v2, v1, Lcom/xiaomi/h/d$a;->a:Lcom/xiaomi/push/f/a;

    goto :goto_0
.end method

.method static c(Ljava/lang/Exception;)Lcom/xiaomi/h/d$a;
    .locals 5

    invoke-static {p0}, Lcom/xiaomi/h/d;->e(Ljava/lang/Exception;)V

    instance-of v0, p0, Lcom/xiaomi/g/l;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/xiaomi/g/l;

    invoke-virtual {v0}, Lcom/xiaomi/g/l;->a()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/xiaomi/g/l;

    invoke-virtual {p0}, Lcom/xiaomi/g/l;->a()Ljava/lang/Throwable;

    move-result-object p0

    :cond_0
    new-instance v1, Lcom/xiaomi/h/d$a;

    invoke-direct {v1}, Lcom/xiaomi/h/d$a;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {p0}, Lcom/xiaomi/g/c;->a(Ljava/lang/Throwable;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sparse-switch v2, :sswitch_data_0

    sget-object v0, Lcom/xiaomi/push/f/a;->M:Lcom/xiaomi/push/f/a;

    iput-object v0, v1, Lcom/xiaomi/h/d$a;->a:Lcom/xiaomi/push/f/a;

    :cond_2
    :goto_0
    iget-object v0, v1, Lcom/xiaomi/h/d$a;->a:Lcom/xiaomi/push/f/a;

    sget-object v2, Lcom/xiaomi/push/f/a;->L:Lcom/xiaomi/push/f/a;

    if-eq v0, v2, :cond_3

    iget-object v0, v1, Lcom/xiaomi/h/d$a;->a:Lcom/xiaomi/push/f/a;

    sget-object v2, Lcom/xiaomi/push/f/a;->M:Lcom/xiaomi/push/f/a;

    if-eq v0, v2, :cond_3

    iget-object v0, v1, Lcom/xiaomi/h/d$a;->a:Lcom/xiaomi/push/f/a;

    sget-object v2, Lcom/xiaomi/push/f/a;->O:Lcom/xiaomi/push/f/a;

    if-ne v0, v2, :cond_4

    :cond_3
    iput-object v3, v1, Lcom/xiaomi/h/d$a;->b:Ljava/lang/String;

    :cond_4
    return-object v1

    :sswitch_0
    sget-object v0, Lcom/xiaomi/push/f/a;->I:Lcom/xiaomi/push/f/a;

    iput-object v0, v1, Lcom/xiaomi/h/d$a;->a:Lcom/xiaomi/push/f/a;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/xiaomi/push/f/a;->J:Lcom/xiaomi/push/f/a;

    iput-object v0, v1, Lcom/xiaomi/h/d$a;->a:Lcom/xiaomi/push/f/a;

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/xiaomi/push/f/a;->K:Lcom/xiaomi/push/f/a;

    iput-object v0, v1, Lcom/xiaomi/h/d$a;->a:Lcom/xiaomi/push/f/a;

    goto :goto_0

    :sswitch_3
    sget-object v0, Lcom/xiaomi/push/f/a;->L:Lcom/xiaomi/push/f/a;

    iput-object v0, v1, Lcom/xiaomi/h/d$a;->a:Lcom/xiaomi/push/f/a;

    goto :goto_0

    :sswitch_4
    sget-object v2, Lcom/xiaomi/push/f/a;->O:Lcom/xiaomi/push/f/a;

    iput-object v2, v1, Lcom/xiaomi/h/d$a;->a:Lcom/xiaomi/push/f/a;

    const-string v2, "Terminal binding condition encountered: item-not-found"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/push/f/a;->N:Lcom/xiaomi/push/f/a;

    iput-object v0, v1, Lcom/xiaomi/h/d$a;->a:Lcom/xiaomi/push/f/a;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x69 -> :sswitch_0
        0x6d -> :sswitch_1
        0x6e -> :sswitch_2
        0xc7 -> :sswitch_3
        0x1f3 -> :sswitch_4
    .end sparse-switch
.end method

.method static d(Ljava/lang/Exception;)Lcom/xiaomi/h/d$a;
    .locals 5

    invoke-static {p0}, Lcom/xiaomi/h/d;->e(Ljava/lang/Exception;)V

    instance-of v0, p0, Lcom/xiaomi/g/l;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/xiaomi/g/l;

    invoke-virtual {v0}, Lcom/xiaomi/g/l;->a()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/xiaomi/g/l;

    invoke-virtual {p0}, Lcom/xiaomi/g/l;->a()Ljava/lang/Throwable;

    move-result-object p0

    :cond_0
    new-instance v0, Lcom/xiaomi/h/d$a;

    invoke-direct {v0}, Lcom/xiaomi/h/d$a;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/xiaomi/g/c;->a(Ljava/lang/Throwable;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sparse-switch v2, :sswitch_data_0

    sget-object v1, Lcom/xiaomi/push/f/a;->Y:Lcom/xiaomi/push/f/a;

    iput-object v1, v0, Lcom/xiaomi/h/d$a;->a:Lcom/xiaomi/push/f/a;

    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/xiaomi/h/d$a;->a:Lcom/xiaomi/push/f/a;

    sget-object v2, Lcom/xiaomi/push/f/a;->X:Lcom/xiaomi/push/f/a;

    if-eq v1, v2, :cond_2

    iget-object v1, v0, Lcom/xiaomi/h/d$a;->a:Lcom/xiaomi/push/f/a;

    sget-object v2, Lcom/xiaomi/push/f/a;->Y:Lcom/xiaomi/push/f/a;

    if-eq v1, v2, :cond_2

    iget-object v1, v0, Lcom/xiaomi/h/d$a;->a:Lcom/xiaomi/push/f/a;

    sget-object v2, Lcom/xiaomi/push/f/a;->aa:Lcom/xiaomi/push/f/a;

    if-ne v1, v2, :cond_3

    :cond_2
    iput-object v3, v0, Lcom/xiaomi/h/d$a;->b:Ljava/lang/String;

    :cond_3
    return-object v0

    :sswitch_0
    sget-object v1, Lcom/xiaomi/push/f/a;->U:Lcom/xiaomi/push/f/a;

    iput-object v1, v0, Lcom/xiaomi/h/d$a;->a:Lcom/xiaomi/push/f/a;

    goto :goto_0

    :sswitch_1
    sget-object v1, Lcom/xiaomi/push/f/a;->V:Lcom/xiaomi/push/f/a;

    iput-object v1, v0, Lcom/xiaomi/h/d$a;->a:Lcom/xiaomi/push/f/a;

    goto :goto_0

    :sswitch_2
    sget-object v1, Lcom/xiaomi/push/f/a;->W:Lcom/xiaomi/push/f/a;

    iput-object v1, v0, Lcom/xiaomi/h/d$a;->a:Lcom/xiaomi/push/f/a;

    goto :goto_0

    :sswitch_3
    sget-object v1, Lcom/xiaomi/push/f/a;->X:Lcom/xiaomi/push/f/a;

    iput-object v1, v0, Lcom/xiaomi/h/d$a;->a:Lcom/xiaomi/push/f/a;

    goto :goto_0

    :sswitch_4
    sget-object v2, Lcom/xiaomi/push/f/a;->aa:Lcom/xiaomi/push/f/a;

    iput-object v2, v0, Lcom/xiaomi/h/d$a;->a:Lcom/xiaomi/push/f/a;

    const-string v2, "Terminal binding condition encountered: item-not-found"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/xiaomi/push/f/a;->Z:Lcom/xiaomi/push/f/a;

    iput-object v1, v0, Lcom/xiaomi/h/d$a;->a:Lcom/xiaomi/push/f/a;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x69 -> :sswitch_0
        0x6d -> :sswitch_1
        0x6e -> :sswitch_2
        0xc7 -> :sswitch_3
        0x1f3 -> :sswitch_4
    .end sparse-switch
.end method

.method private static e(Ljava/lang/Exception;)V
    .locals 1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method
