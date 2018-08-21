.class public Lcom/alipay/android/app/source/a;
.super Ljava/lang/Object;
.source "SourceMessageHandlerAdapter.java"

# interfaces
.implements Lcom/alipay/android/app/b/a/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/alipay/android/app/b/a/j;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/16 v6, 0x130

    const/4 v4, 0x4

    const/4 v8, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v0, "phonecashiermsp"

    const-string/jumbo v1, "SourceMessageHandlerAdapter.execute"

    const-string/jumbo v2, "msg == null"

    invoke-static {v4, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :sswitch_0
    return-void

    :cond_0
    const-string/jumbo v0, "phonecashiermsp"

    const-string/jumbo v1, "SourceMessageHandlerAdapter.execute"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "exe msg,detail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/android/app/b/a/j;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/android/app/b/a/j;

    invoke-direct {v1}, Lcom/alipay/android/app/b/a/j;-><init>()V

    iget v0, p1, Lcom/alipay/android/app/b/a/j;->a:I

    iput v0, v1, Lcom/alipay/android/app/b/a/j;->a:I

    const/16 v0, 0xd

    iput v0, v1, Lcom/alipay/android/app/b/a/j;->b:I

    iget v0, p1, Lcom/alipay/android/app/b/a/j;->c:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_1
    iget-object v0, p1, Lcom/alipay/android/app/b/a/j;->d:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/android/app/trans/a;

    invoke-virtual {v0}, Lcom/alipay/android/app/trans/a;->b()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/statistic/h;->a(Ljava/util/Map;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/logic/c;->a()Lcom/alipay/android/app/logic/c;

    move-result-object v4

    iget v5, p1, Lcom/alipay/android/app/b/a/j;->a:I

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/logic/c;->b(I)Lcom/alipay/android/app/logic/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/android/app/logic/b;->i()Lcom/alipay/android/app/trans/config/a;

    move-result-object v4

    invoke-static {}, Lcom/alipay/android/app/plugin/a/b;->f()Lcom/alipay/android/app/plugin/c;

    move-result-object v5

    invoke-interface {v5, v0, v4}, Lcom/alipay/android/app/plugin/c;->requestByPbv1(Lcom/alipay/android/app/trans/a;Lcom/alipay/android/app/trans/config/a;)Lcom/alipay/android/app/trans/b;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/statistic/h;->a(Lcom/alipay/android/app/trans/b;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/statistic/h;->c(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/alipay/android/app/b/a/j;->d:Ljava/lang/Object;

    const/16 v0, 0x3f5

    iput v0, v1, Lcom/alipay/android/app/b/a/j;->c:I

    invoke-static {}, Lcom/alipay/android/app/b/a/h;->a()Lcom/alipay/android/app/b/a/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/b/a/h;->b(Lcom/alipay/android/app/b/a/j;)V

    goto/16 :goto_0

    :sswitch_2
    invoke-static {}, Lcom/alipay/android/app/statistic/h;->c()V

    iget-object v0, p1, Lcom/alipay/android/app/b/a/j;->d:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/android/app/trans/a;

    invoke-static {}, Lcom/alipay/android/app/logic/c;->a()Lcom/alipay/android/app/logic/c;

    move-result-object v2

    iget v3, p1, Lcom/alipay/android/app/b/a/j;->a:I

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/logic/c;->b(I)Lcom/alipay/android/app/logic/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/logic/b;->i()Lcom/alipay/android/app/trans/config/a;

    move-result-object v2

    invoke-static {}, Lcom/alipay/android/app/plugin/a/b;->e()Lcom/alipay/android/app/plugin/f;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/alipay/android/app/plugin/f;->requestData(Lcom/alipay/android/app/trans/a;Lcom/alipay/android/app/trans/config/a;)Lcom/alipay/android/app/trans/b;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/android/app/b/a/j;->d:Ljava/lang/Object;

    const/16 v0, 0x7d4

    iput v0, v1, Lcom/alipay/android/app/b/a/j;->c:I

    invoke-static {}, Lcom/alipay/android/app/b/a/h;->a()Lcom/alipay/android/app/b/a/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/b/a/h;->b(Lcom/alipay/android/app/b/a/j;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "1002"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "1003"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string/jumbo v0, "flybird_mobilegwerror_tips"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/b;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/alipay/android/app/g/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string/jumbo v1, "ne"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v0, v2}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/android/app/b/a/j;

    invoke-direct {v1}, Lcom/alipay/android/app/b/a/j;-><init>()V

    iget v2, p1, Lcom/alipay/android/app/b/a/j;->a:I

    iput v2, v1, Lcom/alipay/android/app/b/a/j;->a:I

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/alipay/android/app/sys/b;->a(Z)V

    new-instance v1, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/exception/NetErrorException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :sswitch_3
    invoke-static {}, Lcom/alipay/android/app/statistic/h;->c()V

    iget-object v0, p1, Lcom/alipay/android/app/b/a/j;->d:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/android/app/trans/a;

    invoke-virtual {v0}, Lcom/alipay/android/app/trans/a;->b()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/statistic/h;->a(Ljava/util/Map;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :try_start_1
    invoke-static {}, Lcom/alipay/android/app/logic/c;->a()Lcom/alipay/android/app/logic/c;

    move-result-object v4

    iget v5, p1, Lcom/alipay/android/app/b/a/j;->a:I

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/logic/c;->b(I)Lcom/alipay/android/app/logic/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/android/app/logic/b;->i()Lcom/alipay/android/app/trans/config/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/android/app/trans/config/a;->g()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/alipay/android/app/plugin/a/b;->f()Lcom/alipay/android/app/plugin/c;

    move-result-object v5

    invoke-interface {v5, v0, v4}, Lcom/alipay/android/app/plugin/c;->requestByPbv3(Lcom/alipay/android/app/trans/a;Lcom/alipay/android/app/trans/config/a;)Lcom/alipay/android/app/trans/b;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/alipay/android/app/statistic/h;->a(Lcom/alipay/android/app/trans/b;)V

    iput-object v0, v1, Lcom/alipay/android/app/b/a/j;->d:Ljava/lang/Object;

    const/16 v0, 0x405

    iput v0, v1, Lcom/alipay/android/app/b/a/j;->c:I

    invoke-static {}, Lcom/alipay/android/app/b/a/h;->a()Lcom/alipay/android/app/b/a/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/b/a/h;->b(Lcom/alipay/android/app/b/a/j;)V

    goto/16 :goto_0

    :cond_3
    :try_start_2
    invoke-static {}, Lcom/alipay/android/app/plugin/a/b;->f()Lcom/alipay/android/app/plugin/c;

    move-result-object v5

    invoke-interface {v5, v0, v4}, Lcom/alipay/android/app/plugin/c;->requestByPbv2(Lcom/alipay/android/app/trans/a;Lcom/alipay/android/app/trans/config/a;)Lcom/alipay/android/app/trans/b;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "1002"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "1003"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const-string/jumbo v0, "flybird_mobilegwerror_tips"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/b;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/alipay/android/app/g/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string/jumbo v1, "ne"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v0, v2}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/android/app/b/a/j;

    invoke-direct {v1}, Lcom/alipay/android/app/b/a/j;-><init>()V

    iget v2, p1, Lcom/alipay/android/app/b/a/j;->a:I

    iput v2, v1, Lcom/alipay/android/app/b/a/j;->a:I

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/alipay/android/app/sys/b;->a(Z)V

    throw v0

    :sswitch_4
    const/16 v0, 0xb

    iput v0, p1, Lcom/alipay/android/app/b/a/j;->b:I

    invoke-static {}, Lcom/alipay/android/app/b/a/h;->a()Lcom/alipay/android/app/b/a/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/b/a/h;->b(Lcom/alipay/android/app/b/a/j;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3f0 -> :sswitch_0
        0x3f2 -> :sswitch_1
        0x3fd -> :sswitch_0
        0x403 -> :sswitch_0
        0x404 -> :sswitch_3
        0x7d2 -> :sswitch_2
        0x7d6 -> :sswitch_4
        0x7d7 -> :sswitch_4
    .end sparse-switch
.end method
