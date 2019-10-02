.class final Lcom/xiaomi/push/gw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/gw$a;
    }
.end annotation


# direct methods
.method static a(Ljava/lang/Exception;)Lcom/xiaomi/push/gw$a;
    .locals 4

    invoke-static {p0}, Lcom/xiaomi/push/gw;->a(Ljava/lang/Exception;)V

    instance-of v0, p0, Lcom/xiaomi/push/fx;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/xiaomi/push/fx;

    invoke-virtual {v0}, Lcom/xiaomi/push/fx;->a()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/push/fx;->a()Ljava/lang/Throwable;

    move-result-object p0

    :cond_0
    new-instance v0, Lcom/xiaomi/push/gw$a;

    invoke-direct {v0}, Lcom/xiaomi/push/gw$a;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/xiaomi/push/fo;->a(Ljava/lang/Throwable;)I

    move-result p0

    if-eqz p0, :cond_2

    sget-object v2, Lcom/xiaomi/push/fb;->i:Lcom/xiaomi/push/fb;

    invoke-virtual {v2}, Lcom/xiaomi/push/fb;->a()I

    move-result v2

    add-int/2addr v2, p0

    invoke-static {v2}, Lcom/xiaomi/push/fb;->a(I)Lcom/xiaomi/push/fb;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaomi/push/gw$a;->a:Lcom/xiaomi/push/fb;

    :cond_2
    iget-object p0, v0, Lcom/xiaomi/push/gw$a;->a:Lcom/xiaomi/push/fb;

    if-nez p0, :cond_3

    sget-object p0, Lcom/xiaomi/push/fb;->q:Lcom/xiaomi/push/fb;

    iput-object p0, v0, Lcom/xiaomi/push/gw$a;->a:Lcom/xiaomi/push/fb;

    :cond_3
    iget-object p0, v0, Lcom/xiaomi/push/gw$a;->a:Lcom/xiaomi/push/fb;

    sget-object v2, Lcom/xiaomi/push/fb;->q:Lcom/xiaomi/push/fb;

    if-ne p0, v2, :cond_4

    iput-object v1, v0, Lcom/xiaomi/push/gw$a;->a:Ljava/lang/String;

    :cond_4
    return-object v0
.end method

.method private static a(Ljava/lang/Exception;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method static b(Ljava/lang/Exception;)Lcom/xiaomi/push/gw$a;
    .locals 5

    invoke-static {p0}, Lcom/xiaomi/push/gw;->a(Ljava/lang/Exception;)V

    instance-of v0, p0, Lcom/xiaomi/push/fx;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/xiaomi/push/fx;

    invoke-virtual {v0}, Lcom/xiaomi/push/fx;->a()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/push/fx;->a()Ljava/lang/Throwable;

    move-result-object p0

    :cond_0
    new-instance v0, Lcom/xiaomi/push/gw$a;

    invoke-direct {v0}, Lcom/xiaomi/push/gw$a;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {p0}, Lcom/xiaomi/push/fo;->a(Ljava/lang/Throwable;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_2

    sget-object v3, Lcom/xiaomi/push/fb;->s:Lcom/xiaomi/push/fb;

    invoke-virtual {v3}, Lcom/xiaomi/push/fb;->a()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Lcom/xiaomi/push/fb;->a(I)Lcom/xiaomi/push/fb;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaomi/push/gw$a;->a:Lcom/xiaomi/push/fb;

    iget-object v2, v0, Lcom/xiaomi/push/gw$a;->a:Lcom/xiaomi/push/fb;

    sget-object v3, Lcom/xiaomi/push/fb;->D:Lcom/xiaomi/push/fb;

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_3

    instance-of p0, p0, Ljava/net/UnknownHostException;

    if-eqz p0, :cond_3

    sget-object p0, Lcom/xiaomi/push/fb;->C:Lcom/xiaomi/push/fb;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/xiaomi/push/fb;->B:Lcom/xiaomi/push/fb;

    :goto_0
    iput-object p0, v0, Lcom/xiaomi/push/gw$a;->a:Lcom/xiaomi/push/fb;

    :cond_3
    iget-object p0, v0, Lcom/xiaomi/push/gw$a;->a:Lcom/xiaomi/push/fb;

    sget-object v2, Lcom/xiaomi/push/fb;->A:Lcom/xiaomi/push/fb;

    if-eq p0, v2, :cond_4

    iget-object p0, v0, Lcom/xiaomi/push/gw$a;->a:Lcom/xiaomi/push/fb;

    sget-object v2, Lcom/xiaomi/push/fb;->B:Lcom/xiaomi/push/fb;

    if-eq p0, v2, :cond_4

    iget-object p0, v0, Lcom/xiaomi/push/gw$a;->a:Lcom/xiaomi/push/fb;

    sget-object v2, Lcom/xiaomi/push/fb;->D:Lcom/xiaomi/push/fb;

    if-ne p0, v2, :cond_5

    :cond_4
    iput-object v1, v0, Lcom/xiaomi/push/gw$a;->a:Ljava/lang/String;

    :cond_5
    return-object v0
.end method

.method static c(Ljava/lang/Exception;)Lcom/xiaomi/push/gw$a;
    .locals 4

    invoke-static {p0}, Lcom/xiaomi/push/gw;->a(Ljava/lang/Exception;)V

    instance-of v0, p0, Lcom/xiaomi/push/fx;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/xiaomi/push/fx;

    invoke-virtual {v0}, Lcom/xiaomi/push/fx;->a()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/push/fx;->a()Ljava/lang/Throwable;

    move-result-object p0

    :cond_0
    new-instance v0, Lcom/xiaomi/push/gw$a;

    invoke-direct {v0}, Lcom/xiaomi/push/gw$a;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {p0}, Lcom/xiaomi/push/fo;->a(Ljava/lang/Throwable;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v3, 0x69

    if-eq v2, v3, :cond_4

    const/16 v3, 0xc7

    if-eq v2, v3, :cond_3

    const/16 v3, 0x1f3

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    sget-object v1, Lcom/xiaomi/push/fb;->M:Lcom/xiaomi/push/fb;

    :goto_0
    iput-object v1, v0, Lcom/xiaomi/push/gw$a;->a:Lcom/xiaomi/push/fb;

    goto :goto_1

    :pswitch_0
    sget-object v1, Lcom/xiaomi/push/fb;->K:Lcom/xiaomi/push/fb;

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/xiaomi/push/fb;->J:Lcom/xiaomi/push/fb;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/xiaomi/push/fb;->O:Lcom/xiaomi/push/fb;

    iput-object v2, v0, Lcom/xiaomi/push/gw$a;->a:Lcom/xiaomi/push/fb;

    const-string v2, "Terminal binding condition encountered: item-not-found"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/xiaomi/push/fb;->N:Lcom/xiaomi/push/fb;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/xiaomi/push/fb;->L:Lcom/xiaomi/push/fb;

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/xiaomi/push/fb;->I:Lcom/xiaomi/push/fb;

    goto :goto_0

    :cond_5
    :goto_1
    iget-object v1, v0, Lcom/xiaomi/push/gw$a;->a:Lcom/xiaomi/push/fb;

    sget-object v2, Lcom/xiaomi/push/fb;->L:Lcom/xiaomi/push/fb;

    if-eq v1, v2, :cond_6

    iget-object v1, v0, Lcom/xiaomi/push/gw$a;->a:Lcom/xiaomi/push/fb;

    sget-object v2, Lcom/xiaomi/push/fb;->M:Lcom/xiaomi/push/fb;

    if-eq v1, v2, :cond_6

    iget-object v1, v0, Lcom/xiaomi/push/gw$a;->a:Lcom/xiaomi/push/fb;

    sget-object v2, Lcom/xiaomi/push/fb;->O:Lcom/xiaomi/push/fb;

    if-ne v1, v2, :cond_7

    :cond_6
    iput-object p0, v0, Lcom/xiaomi/push/gw$a;->a:Ljava/lang/String;

    :cond_7
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x6d
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static d(Ljava/lang/Exception;)Lcom/xiaomi/push/gw$a;
    .locals 4

    invoke-static {p0}, Lcom/xiaomi/push/gw;->a(Ljava/lang/Exception;)V

    instance-of v0, p0, Lcom/xiaomi/push/fx;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/xiaomi/push/fx;

    invoke-virtual {v0}, Lcom/xiaomi/push/fx;->a()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/push/fx;->a()Ljava/lang/Throwable;

    move-result-object p0

    :cond_0
    new-instance v0, Lcom/xiaomi/push/gw$a;

    invoke-direct {v0}, Lcom/xiaomi/push/gw$a;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/xiaomi/push/fo;->a(Ljava/lang/Throwable;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v3, 0x69

    if-eq v2, v3, :cond_3

    const/16 v3, 0xc7

    if-eq v2, v3, :cond_2

    const/16 v3, 0x1f3

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    sget-object v1, Lcom/xiaomi/push/fb;->Y:Lcom/xiaomi/push/fb;

    :goto_0
    iput-object v1, v0, Lcom/xiaomi/push/gw$a;->a:Lcom/xiaomi/push/fb;

    goto :goto_1

    :pswitch_0
    sget-object v1, Lcom/xiaomi/push/fb;->W:Lcom/xiaomi/push/fb;

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/xiaomi/push/fb;->V:Lcom/xiaomi/push/fb;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/xiaomi/push/fb;->aa:Lcom/xiaomi/push/fb;

    iput-object v2, v0, Lcom/xiaomi/push/gw$a;->a:Lcom/xiaomi/push/fb;

    const-string v2, "Terminal binding condition encountered: item-not-found"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/xiaomi/push/fb;->Z:Lcom/xiaomi/push/fb;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/xiaomi/push/fb;->X:Lcom/xiaomi/push/fb;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/xiaomi/push/fb;->U:Lcom/xiaomi/push/fb;

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v1, v0, Lcom/xiaomi/push/gw$a;->a:Lcom/xiaomi/push/fb;

    sget-object v2, Lcom/xiaomi/push/fb;->X:Lcom/xiaomi/push/fb;

    if-eq v1, v2, :cond_5

    iget-object v1, v0, Lcom/xiaomi/push/gw$a;->a:Lcom/xiaomi/push/fb;

    sget-object v2, Lcom/xiaomi/push/fb;->Y:Lcom/xiaomi/push/fb;

    if-eq v1, v2, :cond_5

    iget-object v1, v0, Lcom/xiaomi/push/gw$a;->a:Lcom/xiaomi/push/fb;

    sget-object v2, Lcom/xiaomi/push/fb;->aa:Lcom/xiaomi/push/fb;

    if-ne v1, v2, :cond_6

    :cond_5
    iput-object p0, v0, Lcom/xiaomi/push/gw$a;->a:Ljava/lang/String;

    :cond_6
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x6d
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
