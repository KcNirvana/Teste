.class public Lcom/alipay/android/app/statistic/d/b;
.super Lcom/alipay/android/app/statistic/d/a;
.source "StandardLogRecord.java"


# instance fields
.field private e:Z

.field private f:Ljava/lang/String;

.field private g:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/alipay/android/app/statistic/d/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/statistic/d/b;->e:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/statistic/d/b;->f:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/app/statistic/d/b;->g:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/statistic/d/b;->g:J

    invoke-virtual {p0}, Lcom/alipay/android/app/statistic/d/b;->d()V

    sget-object v0, Lcom/alipay/android/app/statistic/h;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/d/e/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/statistic/d/b;->f:Ljava/lang/String;

    return-void
.end method

.method private b(Lcom/alipay/android/app/statistic/logfield/a;)I
    .locals 1

    instance-of v0, p1, Lcom/alipay/android/app/statistic/logfield/j;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/alipay/android/app/statistic/logfield/k;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/alipay/android/app/statistic/logfield/b;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/alipay/android/app/statistic/logfield/i;

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/alipay/android/app/statistic/logfield/f;

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/alipay/android/app/statistic/logfield/d;

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lcom/alipay/android/app/statistic/logfield/h;

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto :goto_0

    :cond_7
    instance-of v0, p1, Lcom/alipay/android/app/statistic/logfield/e;

    if-eqz v0, :cond_8

    const/16 v0, 0x8

    goto :goto_0

    :cond_8
    instance-of v0, p1, Lcom/alipay/android/app/statistic/logfield/l;

    if-eqz v0, :cond_9

    const/16 v0, 0x9

    goto :goto_0

    :cond_9
    instance-of v0, p1, Lcom/alipay/android/app/statistic/logfield/g;

    if-eqz v0, :cond_a

    const/16 v0, 0xa

    goto :goto_0

    :cond_a
    instance-of v0, p1, Lcom/alipay/android/app/statistic/logfield/c;

    if-eqz v0, :cond_b

    const/16 v0, 0xb

    goto :goto_0

    :cond_b
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private h()Lcom/alipay/android/app/statistic/logfield/a;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd-HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/android/app/statistic/logfield/j;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/android/app/statistic/logfield/j;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private i()Lcom/alipay/android/app/statistic/logfield/a;
    .locals 3

    new-instance v0, Lcom/alipay/android/app/statistic/logfield/b;

    invoke-static {}, Lcom/alipay/android/app/sys/b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/sys/b;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/statistic/logfield/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private j()Lcom/alipay/android/app/statistic/logfield/a;
    .locals 5

    new-instance v1, Lcom/alipay/android/app/statistic/logfield/i;

    invoke-direct {v1}, Lcom/alipay/android/app/statistic/logfield/i;-><init>()V

    const-string/jumbo v0, "android"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/statistic/logfield/i;->c(Ljava/lang/String;)V

    const-string/jumbo v0, "1"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/statistic/logfield/i;->d(Ljava/lang/String;)V

    const-string/jumbo v0, "10.6.10"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/statistic/logfield/i;->e(Ljava/lang/String;)V

    const-string/jumbo v0, "1.1"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/statistic/logfield/i;->f(Ljava/lang/String;)V

    const-string/jumbo v0, "com.alipay.quickpay"

    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->getSdkInstance()Lcom/alipay/android/app/MspInitAssistService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/alipay/android/app/MspInitAssistService;->getChannelInfo()Lcom/alipay/android/app/pay/channel/ChannelInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/alipay/android/app/pay/channel/ChannelInfo;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "com.alipay.mcpay"

    invoke-interface {v2}, Lcom/alipay/android/app/pay/channel/ChannelInfo;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/statistic/logfield/i;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Lcom/alipay/android/app/statistic/logfield/i;->g(Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/android/app/pay/a;->q:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/statistic/logfield/i;->h(Ljava/lang/String;)V

    return-object v1

    :cond_1
    const-string/jumbo v3, "com.alipay.weibopay"

    invoke-interface {v2}, Lcom/alipay/android/app/pay/channel/ChannelInfo;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/statistic/logfield/i;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "2"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/statistic/logfield/i;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private k()Lcom/alipay/android/app/statistic/logfield/a;
    .locals 3

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/b;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/statistic/logfield/f;

    invoke-direct {v1}, Lcom/alipay/android/app/statistic/logfield/f;-><init>()V

    invoke-static {}, Lcom/alipay/android/app/f/c;->a()Lcom/alipay/android/app/f/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/f/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/statistic/logfield/f;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/b;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/statistic/logfield/f;->d(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/sys/a;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/statistic/logfield/f;->e(Ljava/lang/String;)V

    return-object v1
.end method

.method private l()Lcom/alipay/android/app/statistic/logfield/a;
    .locals 6

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/b;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/statistic/logfield/d;

    invoke-direct {v1}, Lcom/alipay/android/app/statistic/logfield/d;-><init>()V

    invoke-static {v0}, Lcom/alipay/android/app/sys/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/statistic/logfield/d;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/sys/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/statistic/logfield/d;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/sys/a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/statistic/logfield/d;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/sys/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/statistic/logfield/d;->f(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/sys/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/statistic/logfield/d;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/sys/a;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/statistic/logfield/d;->j(Ljava/lang/String;)V

    const-string/jumbo v2, "rpc"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/statistic/logfield/d;->k(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/sys/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/statistic/logfield/d;->h(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/sys/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/statistic/logfield/d;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/statistic/h;->f()J

    move-result-wide v2

    invoke-static {}, Lcom/alipay/android/app/statistic/h;->g()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const-wide/32 v4, 0xf4240

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/statistic/logfield/d;->a(J)V

    :cond_0
    return-object v1
.end method


# virtual methods
.method public a(Lcom/alipay/android/app/statistic/logfield/a;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/android/app/statistic/d/b;->b(Lcom/alipay/android/app/statistic/logfield/a;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/app/statistic/d/b;->a(ILcom/alipay/android/app/statistic/logfield/a;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/statistic/d/b;->e:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/statistic/d/b;->e:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/statistic/d/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d()V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/android/app/statistic/d/b;->h()Lcom/alipay/android/app/statistic/logfield/a;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/android/app/statistic/d/b;->a(IZLcom/alipay/android/app/statistic/logfield/a;)V

    new-instance v0, Lcom/alipay/android/app/statistic/logfield/k;

    invoke-direct {v0}, Lcom/alipay/android/app/statistic/logfield/k;-><init>()V

    invoke-virtual {p0, v2, v2, v0}, Lcom/alipay/android/app/statistic/d/b;->a(IZLcom/alipay/android/app/statistic/logfield/a;)V

    const/4 v0, 0x2

    new-instance v1, Lcom/alipay/android/app/statistic/logfield/b;

    invoke-direct {v1}, Lcom/alipay/android/app/statistic/logfield/b;-><init>()V

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/android/app/statistic/d/b;->a(IZLcom/alipay/android/app/statistic/logfield/a;)V

    const/4 v0, 0x3

    new-instance v1, Lcom/alipay/android/app/statistic/logfield/i;

    invoke-direct {v1}, Lcom/alipay/android/app/statistic/logfield/i;-><init>()V

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/android/app/statistic/d/b;->a(IZLcom/alipay/android/app/statistic/logfield/a;)V

    const/4 v0, 0x4

    new-instance v1, Lcom/alipay/android/app/statistic/logfield/f;

    invoke-direct {v1}, Lcom/alipay/android/app/statistic/logfield/f;-><init>()V

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/android/app/statistic/d/b;->a(IZLcom/alipay/android/app/statistic/logfield/a;)V

    const/4 v0, 0x5

    new-instance v1, Lcom/alipay/android/app/statistic/logfield/d;

    invoke-direct {v1}, Lcom/alipay/android/app/statistic/logfield/d;-><init>()V

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/android/app/statistic/d/b;->a(IZLcom/alipay/android/app/statistic/logfield/a;)V

    const/4 v0, 0x6

    new-instance v1, Lcom/alipay/android/app/statistic/logfield/h;

    invoke-direct {v1}, Lcom/alipay/android/app/statistic/logfield/h;-><init>()V

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/android/app/statistic/d/b;->a(IZLcom/alipay/android/app/statistic/logfield/a;)V

    const/4 v0, 0x7

    new-instance v1, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    invoke-direct {v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;-><init>()V

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/android/app/statistic/d/b;->a(IZLcom/alipay/android/app/statistic/logfield/a;)V

    const/16 v0, 0x8

    new-instance v1, Lcom/alipay/android/app/statistic/logfield/e;

    invoke-direct {v1}, Lcom/alipay/android/app/statistic/logfield/e;-><init>()V

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/android/app/statistic/d/b;->a(IZLcom/alipay/android/app/statistic/logfield/a;)V

    const/16 v0, 0x9

    new-instance v1, Lcom/alipay/android/app/statistic/logfield/l;

    invoke-direct {v1}, Lcom/alipay/android/app/statistic/logfield/l;-><init>()V

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/android/app/statistic/d/b;->a(IZLcom/alipay/android/app/statistic/logfield/a;)V

    const/16 v0, 0xa

    new-instance v1, Lcom/alipay/android/app/statistic/logfield/g;

    invoke-direct {v1}, Lcom/alipay/android/app/statistic/logfield/g;-><init>()V

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/android/app/statistic/d/b;->a(IZLcom/alipay/android/app/statistic/logfield/a;)V

    const/16 v0, 0xb

    new-instance v1, Lcom/alipay/android/app/statistic/logfield/c;

    invoke-direct {v1}, Lcom/alipay/android/app/statistic/logfield/c;-><init>()V

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/android/app/statistic/d/b;->a(IZLcom/alipay/android/app/statistic/logfield/a;)V

    return-void
.end method

.method public e()Lcom/alipay/android/app/statistic/logfield/k;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/statistic/d/b;->d:Ljava/util/HashMap;

    const-string/jumbo v2, "trade"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/statistic/c/a;

    instance-of v2, v0, Lcom/alipay/android/app/statistic/c/d;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/alipay/android/app/statistic/c/d;

    invoke-virtual {v0}, Lcom/alipay/android/app/statistic/c/d;->d()Lcom/alipay/android/app/statistic/logfield/a;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/alipay/android/app/statistic/logfield/k;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/alipay/android/app/statistic/logfield/k;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public f()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/statistic/d/b;->i()Lcom/alipay/android/app/statistic/logfield/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/statistic/d/b;->a(Lcom/alipay/android/app/statistic/logfield/a;)V

    invoke-direct {p0}, Lcom/alipay/android/app/statistic/d/b;->j()Lcom/alipay/android/app/statistic/logfield/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/statistic/d/b;->a(Lcom/alipay/android/app/statistic/logfield/a;)V

    invoke-direct {p0}, Lcom/alipay/android/app/statistic/d/b;->k()Lcom/alipay/android/app/statistic/logfield/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/statistic/d/b;->a(Lcom/alipay/android/app/statistic/logfield/a;)V

    invoke-direct {p0}, Lcom/alipay/android/app/statistic/d/b;->l()Lcom/alipay/android/app/statistic/logfield/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/statistic/d/b;->a(Lcom/alipay/android/app/statistic/logfield/a;)V

    return-void
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/android/app/statistic/d/b;->g:J

    return-wide v0
.end method
