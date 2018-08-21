.class final Lcom/alipay/mobile/common/common/task/d$b;
.super Landroid/os/Handler;
.source "TaskProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/common/task/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/common/common/task/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/alipay/mobile/common/common/task/d$b;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/common/task/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/common/common/task/d$b;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v5, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "msg must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/alipay/mobile/common/common/task/d;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/mobile/common/common/task/d;

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_0
    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "msg.obj not instanceof TaskProxy"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/alipay/mobile/common/common/task/d$a;

    if-eqz v0, :cond_7

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/mobile/common/common/task/d$a;

    iget-object v1, v0, Lcom/alipay/mobile/common/common/task/d$a;->a:Lcom/alipay/mobile/common/common/task/d;

    iget-object v0, v0, Lcom/alipay/mobile/common/common/task/d$a;->b:[Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_3
    :goto_1
    return-void

    :pswitch_0
    invoke-static {v1}, Lcom/alipay/mobile/common/common/task/d;->c(Lcom/alipay/mobile/common/common/task/d;)Lcom/alipay/mobile/common/common/task/AbsTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/common/task/AbsTask;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/alipay/mobile/common/common/task/AbsTask$State;->ERROR:Lcom/alipay/mobile/common/common/task/AbsTask$State;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/common/task/d;->a(Lcom/alipay/mobile/common/common/task/AbsTask$State;)V

    iget v2, p1, Landroid/os/Message;->what:I

    const v3, 0x3b9aca04

    if-eq v2, v3, :cond_6

    invoke-static {v1}, Lcom/alipay/mobile/common/common/task/d;->c(Lcom/alipay/mobile/common/common/task/d;)Lcom/alipay/mobile/common/common/task/AbsTask;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Lcom/alipay/mobile/common/common/task/AbsTask;->a(Ljava/lang/Throwable;Z)V

    goto :goto_1

    :pswitch_1
    :try_start_1
    invoke-static {v1}, Lcom/alipay/mobile/common/common/task/d;->c(Lcom/alipay/mobile/common/common/task/d;)Lcom/alipay/mobile/common/common/task/AbsTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/common/task/AbsTask;->e()V

    goto :goto_1

    :pswitch_2
    invoke-static {v1}, Lcom/alipay/mobile/common/common/task/d;->c(Lcom/alipay/mobile/common/common/task/d;)Lcom/alipay/mobile/common/common/task/AbsTask;

    move-result-object v0

    invoke-virtual {v1}, Lcom/alipay/mobile/common/common/task/d;->k()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/common/task/AbsTask;->a(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    sget-boolean v2, Lcom/alipay/mobile/common/common/task/d$b;->a:Z

    if-nez v2, :cond_4

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    const/4 v2, 0x0

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "TaskProxy"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/alipay/mobile/common/common/task/d;->c(Lcom/alipay/mobile/common/common/task/d;)Lcom/alipay/mobile/common/common/task/AbsTask;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/alipay/mobile/common/common/task/AbsTask;->a(Ljava/lang/Throwable;Z)V

    goto :goto_1

    :pswitch_4
    invoke-static {v1}, Lcom/alipay/mobile/common/common/task/d;->c(Lcom/alipay/mobile/common/common/task/d;)Lcom/alipay/mobile/common/common/task/AbsTask;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v0}, Lcom/alipay/mobile/common/common/task/AbsTask;->a(I[Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    invoke-static {v1}, Lcom/alipay/mobile/common/common/task/d;->b(Lcom/alipay/mobile/common/common/task/d;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/common/task/d;->a(Lcom/alipay/mobile/common/common/task/d;Z)Z

    sget-boolean v2, Lcom/alipay/mobile/common/common/task/d$b;->a:Z

    if-nez v2, :cond_5

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    invoke-static {v1}, Lcom/alipay/mobile/common/common/task/d;->c(Lcom/alipay/mobile/common/common/task/d;)Lcom/alipay/mobile/common/common/task/AbsTask;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v0, v0, v3

    check-cast v0, Lcom/alipay/mobile/common/common/Callback$CancelledException;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/common/task/AbsTask;->a(Lcom/alipay/mobile/common/common/Callback$CancelledException;)V

    goto/16 :goto_1

    :pswitch_6
    invoke-static {v1}, Lcom/alipay/mobile/common/common/task/d;->d(Lcom/alipay/mobile/common/common/task/d;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/common/task/d;->b(Lcom/alipay/mobile/common/common/task/d;Z)Z

    invoke-static {v1}, Lcom/alipay/mobile/common/common/task/d;->c(Lcom/alipay/mobile/common/common/task/d;)Lcom/alipay/mobile/common/common/task/AbsTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/common/task/AbsTask;->f()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_6
    invoke-static {}, Lcom/alipay/mobile/common/Sdk;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    move-object v0, v1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3b9aca01
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
