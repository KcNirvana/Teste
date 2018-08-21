.class public Lcom/alipay/android/app/ui/quickpay/util/g;
.super Ljava/lang/Object;
.source "MiniSmsReaderHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/util/g$a;
    }
.end annotation


# static fields
.field private static f:Lcom/alipay/android/app/ui/quickpay/util/g;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/lang/Object;

.field private c:Z

.field private d:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/util/e;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/alipay/android/app/g/j;

.field private g:Lcom/alipay/android/app/ui/quickpay/util/g$a;

.field private h:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/g;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/g;->b:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/util/g;->c:Z

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/g;->d:Ljava/util/Stack;

    new-instance v0, Lcom/alipay/android/app/g/j;

    invoke-direct {v0}, Lcom/alipay/android/app/g/j;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/g;->e:Lcom/alipay/android/app/g/j;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/g;->g:Lcom/alipay/android/app/ui/quickpay/util/g$a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/g;->h:Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/g;->g:Lcom/alipay/android/app/ui/quickpay/util/g$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/util/g$a;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/util/g$a;-><init>(Lcom/alipay/android/app/ui/quickpay/util/g;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/g;->g:Lcom/alipay/android/app/ui/quickpay/util/g$a;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/g;->g:Lcom/alipay/android/app/ui/quickpay/util/g$a;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/util/g$a;->start()V

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/g;->h:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/g;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a()Lcom/alipay/android/app/ui/quickpay/util/g;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/g;->f:Lcom/alipay/android/app/ui/quickpay/util/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/util/g;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/util/g;-><init>()V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/util/g;->f:Lcom/alipay/android/app/ui/quickpay/util/g;

    :cond_0
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/g;->f:Lcom/alipay/android/app/ui/quickpay/util/g;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/util/g;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/g;->h:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Lcom/alipay/android/app/flybird/ui/event/MiniReadSmsArgs;Lcom/alipay/android/app/g/j;[Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;JJJ)V
    .locals 13

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v10, v0

    move-object v0, v2

    move-wide v2, v10

    :goto_0
    invoke-virtual {p2}, Lcom/alipay/android/app/g/j;->b()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, p7

    cmp-long v1, v4, p9

    if-gez v1, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xf

    const-string/jumbo v4, "phonecashiermsp"

    const-string/jumbo v5, "MiniSmsReaderHandler.circleRead"

    const-string/jumbo v6, "ReadSms while"

    invoke-static {v1, v4, v5, v6}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/16 v4, 0x9c4

    sub-long v2, v4, v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p2

    move-object/from16 v2, p6

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p11

    invoke-virtual/range {v1 .. v7}, Lcom/alipay/android/app/g/j;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    const-string/jumbo v2, "phonecashiermsp"

    const-string/jumbo v3, "MiniSmsReaderHandler.circleRead"

    const-string/jumbo v4, "read sms value is empty"

    invoke-static {v1, v2, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-wide v2, v8

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lcom/alipay/android/app/flybird/ui/event/MiniReadSmsArgs;->readSuccess(Ljava/lang/String;)V

    :cond_3
    return-void

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/util/g;Lcom/alipay/android/app/ui/quickpay/util/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/util/g;->b(Lcom/alipay/android/app/ui/quickpay/util/e;)V

    return-void
.end method

.method public static b()V
    .locals 1

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/g;->f:Lcom/alipay/android/app/ui/quickpay/util/g;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/g;->f:Lcom/alipay/android/app/ui/quickpay/util/g;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/util/g;->c()Lcom/alipay/android/app/g/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/g/j;->a()V

    :cond_0
    return-void
.end method

.method private b(Lcom/alipay/android/app/ui/quickpay/util/e;)V
    .locals 14

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/b;->b()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/util/e;->b()Lcom/alipay/android/app/flybird/ui/event/MiniReadSmsArgs;

    move-result-object v2

    const-string/jumbo v0, "rules"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/flybird/ui/event/MiniReadSmsArgs;->getDataByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "temp"

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/flybird/ui/event/MiniReadSmsArgs;->getDataByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v1, "tmp_group"

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/flybird/ui/event/MiniReadSmsArgs;->getDataByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "read_time"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/flybird/ui/event/MiniReadSmsArgs;->getDataByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    mul-int/lit16 v0, v3, 0x3e8

    int-to-long v10, v0

    const/16 v0, 0xf

    const-string/jumbo v1, "phonecashiermsp"

    const-string/jumbo v3, "MiniSmsReaderHandler.readSms"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Runnable"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v1, v3, v12}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/util/g;->e:Lcom/alipay/android/app/g/j;

    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/util/e;->a()J

    move-result-wide v12

    move-object v1, p0

    invoke-direct/range {v1 .. v13}, Lcom/alipay/android/app/ui/quickpay/util/g;->a(Lcom/alipay/android/app/flybird/ui/event/MiniReadSmsArgs;Lcom/alipay/android/app/g/j;[Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;JJJ)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/app/ui/quickpay/util/g;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/util/g;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/alipay/android/app/ui/quickpay/util/g;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/g;->a:Ljava/lang/Object;

    return-object v0
.end method

.method private d()Z
    .locals 2

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/g;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/g;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic d(Lcom/alipay/android/app/ui/quickpay/util/g;)Z
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/util/g;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/alipay/android/app/ui/quickpay/util/g;)Ljava/util/Stack;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/g;->d:Ljava/util/Stack;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/alipay/android/app/ui/quickpay/util/e;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/g;->e:Lcom/alipay/android/app/g/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/g/j;->a(Z)V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/g;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/g;->d:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/g;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/g;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public c()Lcom/alipay/android/app/g/j;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/g;->e:Lcom/alipay/android/app/g/j;

    return-object v0
.end method
