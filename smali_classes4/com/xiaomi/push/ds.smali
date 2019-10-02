.class public Lcom/xiaomi/push/ds;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/xiaomi/push/ds;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/ds;->a:Landroid/content/Context;

    return-void
.end method

.method private a(I)I
    .locals 1

    const/16 v0, 0x3c

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/push/ds;
    .locals 2

    sget-object v0, Lcom/xiaomi/push/ds;->a:Lcom/xiaomi/push/ds;

    if-nez v0, :cond_1

    const-class v0, Lcom/xiaomi/push/ds;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/push/ds;->a:Lcom/xiaomi/push/ds;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/push/ds;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/ds;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/push/ds;->a:Lcom/xiaomi/push/ds;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/xiaomi/push/ds;->a:Lcom/xiaomi/push/ds;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/push/ds;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/push/ds;->b()V

    return-void
.end method

.method private a()Z
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xe

    if-lt v0, v2, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/ds;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/ds;->a:Landroid/content/Context;

    :goto_0
    check-cast v0, Landroid/app/Application;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/ds;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :goto_1
    new-instance v2, Lcom/xiaomi/push/dj;

    iget-object v3, p0, Lcom/xiaomi/push/ds;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/xiaomi/push/dj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_1
    return v1
.end method

.method private b()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaomi/push/ds;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/ai;->a(Landroid/content/Context;)Lcom/xiaomi/push/ai;

    move-result-object v1

    iget-object v2, v0, Lcom/xiaomi/push/ds;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/service/ag;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/ag;

    move-result-object v2

    iget-object v3, v0, Lcom/xiaomi/push/ds;->a:Landroid/content/Context;

    const-string v4, "mipush_extra"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v4, "first_try_ts"

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v4, v8, v6

    if-nez v4, :cond_0

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "first_try_ts"

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    const/4 v3, 0x0

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v6, 0xa4cb800

    cmp-long v3, v3, v6

    if-gez v3, :cond_1

    return-void

    :cond_1
    sget-object v3, Lcom/xiaomi/push/hl;->c:Lcom/xiaomi/push/hl;

    invoke-virtual {v3}, Lcom/xiaomi/push/hl;->a()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/push/service/ag;->a(IZ)Z

    move-result v9

    sget-object v3, Lcom/xiaomi/push/hl;->f:Lcom/xiaomi/push/hl;

    invoke-virtual {v3}, Lcom/xiaomi/push/hl;->a()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/push/service/ag;->a(IZ)Z

    move-result v10

    sget-object v3, Lcom/xiaomi/push/hl;->g:Lcom/xiaomi/push/hl;

    invoke-virtual {v3}, Lcom/xiaomi/push/hl;->a()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/push/service/ag;->a(IZ)Z

    move-result v11

    sget-object v3, Lcom/xiaomi/push/hl;->h:Lcom/xiaomi/push/hl;

    invoke-virtual {v3}, Lcom/xiaomi/push/hl;->a()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/push/service/ag;->a(IZ)Z

    move-result v12

    sget-object v3, Lcom/xiaomi/push/hl;->aq:Lcom/xiaomi/push/hl;

    invoke-virtual {v3}, Lcom/xiaomi/push/hl;->a()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/push/service/ag;->a(IZ)Z

    move-result v13

    const v3, 0x127500

    const/16 v14, 0x1e

    if-nez v9, :cond_2

    if-nez v10, :cond_2

    if-nez v11, :cond_2

    if-nez v12, :cond_2

    if-eqz v13, :cond_3

    :cond_2
    sget-object v6, Lcom/xiaomi/push/hl;->i:Lcom/xiaomi/push/hl;

    invoke-virtual {v6}, Lcom/xiaomi/push/hl;->a()I

    move-result v6

    invoke-virtual {v2, v6, v3}, Lcom/xiaomi/push/service/ag;->a(II)I

    move-result v6

    invoke-direct {v0, v6}, Lcom/xiaomi/push/ds;->a(I)I

    move-result v15

    new-instance v8, Lcom/xiaomi/push/dz;

    iget-object v7, v0, Lcom/xiaomi/push/ds;->a:Landroid/content/Context;

    move-object v6, v8

    move-object v4, v8

    move v8, v15

    invoke-direct/range {v6 .. v13}, Lcom/xiaomi/push/dz;-><init>(Landroid/content/Context;IZZZZZ)V

    invoke-virtual {v1, v4, v15, v14}, Lcom/xiaomi/push/ai;->a(Lcom/xiaomi/push/ai$a;II)Z

    :cond_3
    sget-object v4, Lcom/xiaomi/push/hl;->d:Lcom/xiaomi/push/hl;

    invoke-virtual {v4}, Lcom/xiaomi/push/hl;->a()I

    move-result v4

    invoke-virtual {v2, v4, v5}, Lcom/xiaomi/push/service/ag;->a(IZ)Z

    move-result v9

    sget-object v4, Lcom/xiaomi/push/hl;->e:Lcom/xiaomi/push/hl;

    invoke-virtual {v4}, Lcom/xiaomi/push/hl;->a()I

    move-result v4

    invoke-virtual {v2, v4, v5}, Lcom/xiaomi/push/service/ag;->a(IZ)Z

    move-result v10

    sget-object v4, Lcom/xiaomi/push/hl;->ah:Lcom/xiaomi/push/hl;

    invoke-virtual {v4}, Lcom/xiaomi/push/hl;->a()I

    move-result v4

    invoke-virtual {v2, v4, v5}, Lcom/xiaomi/push/service/ag;->a(IZ)Z

    move-result v11

    sget-object v4, Lcom/xiaomi/push/hl;->ar:Lcom/xiaomi/push/hl;

    invoke-virtual {v4}, Lcom/xiaomi/push/hl;->a()I

    move-result v4

    invoke-virtual {v2, v4, v5}, Lcom/xiaomi/push/service/ag;->a(IZ)Z

    move-result v12

    if-nez v9, :cond_4

    if-nez v10, :cond_4

    if-nez v11, :cond_4

    if-eqz v12, :cond_5

    :cond_4
    sget-object v4, Lcom/xiaomi/push/hl;->as:Lcom/xiaomi/push/hl;

    invoke-virtual {v4}, Lcom/xiaomi/push/hl;->a()I

    move-result v4

    invoke-virtual {v2, v4, v3}, Lcom/xiaomi/push/service/ag;->a(II)I

    move-result v3

    invoke-direct {v0, v3}, Lcom/xiaomi/push/ds;->a(I)I

    move-result v3

    new-instance v4, Lcom/xiaomi/push/dy;

    iget-object v7, v0, Lcom/xiaomi/push/ds;->a:Landroid/content/Context;

    move-object v6, v4

    move v8, v3

    invoke-direct/range {v6 .. v12}, Lcom/xiaomi/push/dy;-><init>(Landroid/content/Context;IZZZZ)V

    invoke-virtual {v1, v4, v3, v14}, Lcom/xiaomi/push/ai;->a(Lcom/xiaomi/push/ai$a;II)Z

    :cond_5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    const/16 v6, 0x384

    if-ge v3, v4, :cond_6

    sget-object v3, Lcom/xiaomi/push/hl;->l:Lcom/xiaomi/push/hl;

    invoke-virtual {v3}, Lcom/xiaomi/push/hl;->a()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Lcom/xiaomi/push/service/ag;->a(IZ)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/xiaomi/push/hl;->m:Lcom/xiaomi/push/hl;

    invoke-virtual {v3}, Lcom/xiaomi/push/hl;->a()I

    move-result v3

    invoke-virtual {v2, v3, v6}, Lcom/xiaomi/push/service/ag;->a(II)I

    move-result v3

    invoke-direct {v0, v3}, Lcom/xiaomi/push/ds;->a(I)I

    move-result v3

    new-instance v4, Lcom/xiaomi/push/du;

    iget-object v7, v0, Lcom/xiaomi/push/ds;->a:Landroid/content/Context;

    invoke-direct {v4, v7, v3}, Lcom/xiaomi/push/du;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v4, v3, v14}, Lcom/xiaomi/push/ai;->a(Lcom/xiaomi/push/ai$a;II)Z

    :cond_6
    sget-object v3, Lcom/xiaomi/push/hl;->aI:Lcom/xiaomi/push/hl;

    invoke-virtual {v3}, Lcom/xiaomi/push/hl;->a()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/push/service/ag;->a(IZ)Z

    move-result v3

    const v4, 0x15180

    if-eqz v3, :cond_7

    sget-object v3, Lcom/xiaomi/push/hl;->aJ:Lcom/xiaomi/push/hl;

    invoke-virtual {v3}, Lcom/xiaomi/push/hl;->a()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/push/service/ag;->a(II)I

    move-result v3

    invoke-direct {v0, v3}, Lcom/xiaomi/push/ds;->a(I)I

    move-result v3

    new-instance v7, Lcom/xiaomi/push/ea;

    iget-object v8, v0, Lcom/xiaomi/push/ds;->a:Landroid/content/Context;

    invoke-direct {v7, v8, v3}, Lcom/xiaomi/push/ea;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v7, v3, v14}, Lcom/xiaomi/push/ai;->a(Lcom/xiaomi/push/ai$a;II)Z

    :cond_7
    sget-object v3, Lcom/xiaomi/push/hl;->x:Lcom/xiaomi/push/hl;

    invoke-virtual {v3}, Lcom/xiaomi/push/hl;->a()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Lcom/xiaomi/push/service/ag;->a(IZ)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lcom/xiaomi/push/hl;->y:Lcom/xiaomi/push/hl;

    invoke-virtual {v3}, Lcom/xiaomi/push/hl;->a()I

    move-result v3

    const/16 v7, 0x12c

    invoke-virtual {v2, v3, v7}, Lcom/xiaomi/push/service/ag;->a(II)I

    move-result v3

    invoke-direct {v0, v3}, Lcom/xiaomi/push/ds;->a(I)I

    move-result v3

    new-instance v7, Lcom/xiaomi/push/eb;

    iget-object v8, v0, Lcom/xiaomi/push/ds;->a:Landroid/content/Context;

    invoke-direct {v7, v8, v3}, Lcom/xiaomi/push/eb;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v7, v3, v14}, Lcom/xiaomi/push/ai;->a(Lcom/xiaomi/push/ai$a;II)Z

    :cond_8
    sget-object v3, Lcom/xiaomi/push/hl;->Q:Lcom/xiaomi/push/hl;

    invoke-virtual {v3}, Lcom/xiaomi/push/hl;->a()I

    move-result v3

    const/4 v7, 0x1

    invoke-virtual {v2, v3, v7}, Lcom/xiaomi/push/service/ag;->a(IZ)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Lcom/xiaomi/push/hl;->R:Lcom/xiaomi/push/hl;

    invoke-virtual {v3}, Lcom/xiaomi/push/hl;->a()I

    move-result v3

    invoke-virtual {v2, v3, v6}, Lcom/xiaomi/push/service/ag;->a(II)I

    move-result v3

    invoke-direct {v0, v3}, Lcom/xiaomi/push/ds;->a(I)I

    move-result v3

    new-instance v6, Lcom/xiaomi/push/dw;

    iget-object v7, v0, Lcom/xiaomi/push/ds;->a:Landroid/content/Context;

    invoke-direct {v6, v7, v3}, Lcom/xiaomi/push/dw;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v6, v3, v14}, Lcom/xiaomi/push/ai;->a(Lcom/xiaomi/push/ai$a;II)Z

    :cond_9
    sget-object v3, Lcom/xiaomi/push/hl;->ap:Lcom/xiaomi/push/hl;

    invoke-virtual {v3}, Lcom/xiaomi/push/hl;->a()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Lcom/xiaomi/push/service/ag;->a(IZ)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/push/ds;->a()Z

    :cond_a
    sget-object v3, Lcom/xiaomi/push/hl;->a:Lcom/xiaomi/push/hl;

    invoke-virtual {v3}, Lcom/xiaomi/push/hl;->a()I

    move-result v3

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6}, Lcom/xiaomi/push/service/ag;->a(IZ)Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v3, Lcom/xiaomi/push/hl;->b:Lcom/xiaomi/push/hl;

    invoke-virtual {v3}, Lcom/xiaomi/push/hl;->a()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/push/service/ag;->a(II)I

    move-result v3

    invoke-direct {v0, v3}, Lcom/xiaomi/push/ds;->a(I)I

    move-result v3

    new-instance v4, Lcom/xiaomi/push/ec;

    iget-object v6, v0, Lcom/xiaomi/push/ds;->a:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/xiaomi/push/ec;-><init>(Landroid/content/Context;)V

    const/16 v6, 0x3c

    invoke-virtual {v1, v4, v3, v6}, Lcom/xiaomi/push/ai;->a(Lcom/xiaomi/push/ai$a;II)Z

    :cond_b
    sget-object v3, Lcom/xiaomi/push/hl;->aD:Lcom/xiaomi/push/hl;

    invoke-virtual {v3}, Lcom/xiaomi/push/hl;->a()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Lcom/xiaomi/push/service/ag;->a(IZ)Z

    move-result v3

    if-eqz v3, :cond_c

    sget-object v3, Lcom/xiaomi/push/hl;->aE:Lcom/xiaomi/push/hl;

    invoke-virtual {v3}, Lcom/xiaomi/push/hl;->a()I

    move-result v3

    const/16 v4, 0xe10

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/push/service/ag;->a(II)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/xiaomi/push/ds;->a(I)I

    move-result v2

    new-instance v3, Lcom/xiaomi/push/dv;

    iget-object v4, v0, Lcom/xiaomi/push/ds;->a:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Lcom/xiaomi/push/dv;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v3, v2, v14}, Lcom/xiaomi/push/ai;->a(Lcom/xiaomi/push/ai$a;II)Z

    :cond_c
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/push/ds;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/ai;->a(Landroid/content/Context;)Lcom/xiaomi/push/ai;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/push/dt;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/dt;-><init>(Lcom/xiaomi/push/ds;)V

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/ai;->a(Ljava/lang/Runnable;I)V

    return-void
.end method
