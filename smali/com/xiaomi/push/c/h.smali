.class public Lcom/xiaomi/push/c/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/xiaomi/push/c/h;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/c/h;->b:Landroid/content/Context;

    return-void
.end method

.method private a(I)I
    .locals 1

    const/16 v0, 0x3c

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/push/c/h;
    .locals 2

    sget-object v0, Lcom/xiaomi/push/c/h;->a:Lcom/xiaomi/push/c/h;

    if-nez v0, :cond_1

    const-class v1, Lcom/xiaomi/push/c/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/push/c/h;->a:Lcom/xiaomi/push/c/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/push/c/h;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/c/h;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/push/c/h;->a:Lcom/xiaomi/push/c/h;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/xiaomi/push/c/h;->a:Lcom/xiaomi/push/c/h;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/xiaomi/push/c/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/push/c/h;->b()V

    return-void
.end method

.method private b()V
    .locals 15

    const v14, 0x15180

    const/4 v13, 0x0

    const/16 v12, 0x384

    const/16 v11, 0x1e

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/xiaomi/push/c/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/b/a/d/h;->a(Landroid/content/Context;)Lcom/xiaomi/b/a/d/h;

    move-result-object v8

    iget-object v0, p0, Lcom/xiaomi/push/c/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/an;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/an;

    move-result-object v9

    iget-object v0, p0, Lcom/xiaomi/push/c/h;->b:Landroid/content/Context;

    const-string v1, "mipush_extra"

    invoke-virtual {v0, v1, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v1, "first_try_ts"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "first_try_ts"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    sub-long v0, v2, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0xa4cb800

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/xiaomi/j/a/h;->c:Lcom/xiaomi/j/a/h;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/h;->a()I

    move-result v0

    invoke-virtual {v9, v0, v10}, Lcom/xiaomi/push/service/an;->a(IZ)Z

    move-result v3

    sget-object v0, Lcom/xiaomi/j/a/h;->f:Lcom/xiaomi/j/a/h;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/h;->a()I

    move-result v0

    invoke-virtual {v9, v0, v10}, Lcom/xiaomi/push/service/an;->a(IZ)Z

    move-result v4

    sget-object v0, Lcom/xiaomi/j/a/h;->g:Lcom/xiaomi/j/a/h;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/h;->a()I

    move-result v0

    invoke-virtual {v9, v0, v10}, Lcom/xiaomi/push/service/an;->a(IZ)Z

    move-result v5

    sget-object v0, Lcom/xiaomi/j/a/h;->h:Lcom/xiaomi/j/a/h;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/h;->a()I

    move-result v0

    invoke-virtual {v9, v0, v10}, Lcom/xiaomi/push/service/an;->a(IZ)Z

    move-result v6

    sget-object v0, Lcom/xiaomi/j/a/h;->ap:Lcom/xiaomi/j/a/h;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/h;->a()I

    move-result v0

    invoke-virtual {v9, v0, v10}, Lcom/xiaomi/push/service/an;->a(IZ)Z

    move-result v7

    if-nez v3, :cond_3

    if-nez v4, :cond_3

    if-nez v5, :cond_3

    if-nez v6, :cond_3

    if-eqz v7, :cond_4

    :cond_3
    sget-object v0, Lcom/xiaomi/j/a/h;->i:Lcom/xiaomi/j/a/h;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/h;->a()I

    move-result v0

    const v1, 0x127500

    invoke-virtual {v9, v0, v1}, Lcom/xiaomi/push/service/an;->a(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaomi/push/c/h;->a(I)I

    move-result v2

    new-instance v0, Lcom/xiaomi/push/c/a/h;

    iget-object v1, p0, Lcom/xiaomi/push/c/h;->b:Landroid/content/Context;

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/push/c/a/h;-><init>(Landroid/content/Context;IZZZZZ)V

    invoke-virtual {v8, v0, v2, v11}, Lcom/xiaomi/b/a/d/h;->a(Lcom/xiaomi/b/a/d/h$a;II)Z

    :cond_4
    sget-object v0, Lcom/xiaomi/j/a/h;->d:Lcom/xiaomi/j/a/h;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/h;->a()I

    move-result v0

    invoke-virtual {v9, v0, v10}, Lcom/xiaomi/push/service/an;->a(IZ)Z

    move-result v3

    sget-object v0, Lcom/xiaomi/j/a/h;->e:Lcom/xiaomi/j/a/h;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/h;->a()I

    move-result v0

    invoke-virtual {v9, v0, v10}, Lcom/xiaomi/push/service/an;->a(IZ)Z

    move-result v4

    sget-object v0, Lcom/xiaomi/j/a/h;->ag:Lcom/xiaomi/j/a/h;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/h;->a()I

    move-result v0

    invoke-virtual {v9, v0, v10}, Lcom/xiaomi/push/service/an;->a(IZ)Z

    move-result v5

    sget-object v0, Lcom/xiaomi/j/a/h;->aq:Lcom/xiaomi/j/a/h;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/h;->a()I

    move-result v0

    invoke-virtual {v9, v0, v10}, Lcom/xiaomi/push/service/an;->a(IZ)Z

    move-result v6

    if-nez v3, :cond_5

    if-nez v4, :cond_5

    if-nez v5, :cond_5

    if-eqz v6, :cond_6

    :cond_5
    sget-object v0, Lcom/xiaomi/j/a/h;->ar:Lcom/xiaomi/j/a/h;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/h;->a()I

    move-result v0

    const v1, 0x127500

    invoke-virtual {v9, v0, v1}, Lcom/xiaomi/push/service/an;->a(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaomi/push/c/h;->a(I)I

    move-result v2

    new-instance v0, Lcom/xiaomi/push/c/a/g;

    iget-object v1, p0, Lcom/xiaomi/push/c/h;->b:Landroid/content/Context;

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/push/c/a/g;-><init>(Landroid/content/Context;IZZZZ)V

    invoke-virtual {v8, v0, v2, v11}, Lcom/xiaomi/b/a/d/h;->a(Lcom/xiaomi/b/a/d/h$a;II)Z

    :cond_6
    sget-object v0, Lcom/xiaomi/j/a/h;->j:Lcom/xiaomi/j/a/h;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/h;->a()I

    move-result v0

    invoke-virtual {v9, v0, v10}, Lcom/xiaomi/push/service/an;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/xiaomi/j/a/h;->k:Lcom/xiaomi/j/a/h;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/h;->a()I

    move-result v0

    invoke-virtual {v9, v0, v14}, Lcom/xiaomi/push/service/an;->a(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaomi/push/c/h;->a(I)I

    move-result v0

    new-instance v1, Lcom/xiaomi/push/c/a/c;

    iget-object v2, p0, Lcom/xiaomi/push/c/h;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/push/c/a/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v8, v1, v0, v11}, Lcom/xiaomi/b/a/d/h;->a(Lcom/xiaomi/b/a/d/h$a;II)Z

    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_8

    sget-object v0, Lcom/xiaomi/j/a/h;->l:Lcom/xiaomi/j/a/h;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/h;->a()I

    move-result v0

    invoke-virtual {v9, v0, v10}, Lcom/xiaomi/push/service/an;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/xiaomi/j/a/h;->m:Lcom/xiaomi/j/a/h;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/h;->a()I

    move-result v0

    invoke-virtual {v9, v0, v12}, Lcom/xiaomi/push/service/an;->a(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaomi/push/c/h;->a(I)I

    move-result v0

    new-instance v1, Lcom/xiaomi/push/c/a/b;

    iget-object v2, p0, Lcom/xiaomi/push/c/h;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/push/c/a/b;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v8, v1, v0, v11}, Lcom/xiaomi/b/a/d/h;->a(Lcom/xiaomi/b/a/d/h$a;II)Z

    :cond_8
    sget-object v0, Lcom/xiaomi/j/a/h;->n:Lcom/xiaomi/j/a/h;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/h;->a()I

    move-result v0

    invoke-virtual {v9, v0, v10}, Lcom/xiaomi/push/service/an;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/xiaomi/j/a/h;->o:Lcom/xiaomi/j/a/h;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/h;->a()I

    move-result v0

    const/16 v1, 0x2a30

    invoke-virtual {v9, v0, v1}, Lcom/xiaomi/push/service/an;->a(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaomi/push/c/h;->a(I)I

    move-result v0

    new-instance v1, Lcom/xiaomi/push/c/a/d;

    iget-object v2, p0, Lcom/xiaomi/push/c/h;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/push/c/a/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v8, v1, v0, v11}, Lcom/xiaomi/b/a/d/h;->a(Lcom/xiaomi/b/a/d/h$a;II)Z

    :cond_9
    sget-object v0, Lcom/xiaomi/j/a/h;->r:Lcom/xiaomi/j/a/h;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/h;->a()I

    move-result v0

    invoke-virtual {v9, v0, v10}, Lcom/xiaomi/push/service/an;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/xiaomi/j/a/h;->s:Lcom/xiaomi/j/a/h;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/h;->a()I

    move-result v0

    const v1, 0x93a80

    invoke-virtual {v9, v0, v1}, Lcom/xiaomi/push/service/an;->a(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaomi/push/c/h;->a(I)I

    move-result v0

    new-instance v1, Lcom/xiaomi/push/c/a/a;

    iget-object v2, p0, Lcom/xiaomi/push/c/h;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/push/c/a/a;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v8, v1, v0, v11}, Lcom/xiaomi/b/a/d/h;->a(Lcom/xiaomi/b/a/d/h$a;II)Z

    :cond_a
    sget-object v0, Lcom/xiaomi/j/a/h;->t:Lcom/xiaomi/j/a/h;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/h;->a()I

    move-result v0

    invoke-virtual {v9, v0, v10}, Lcom/xiaomi/push/service/an;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/xiaomi/j/a/h;->u:Lcom/xiaomi/j/a/h;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/h;->a()I

    move-result v0

    invoke-virtual {v9, v0, v12}, Lcom/xiaomi/push/service/an;->a(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaomi/push/c/h;->a(I)I

    move-result v0

    new-instance v1, Lcom/xiaomi/push/c/a/k;

    iget-object v2, p0, Lcom/xiaomi/push/c/h;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/push/c/a/k;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v8, v1, v0, v11}, Lcom/xiaomi/b/a/d/h;->a(Lcom/xiaomi/b/a/d/h$a;II)Z

    :cond_b
    sget-object v0, Lcom/xiaomi/j/a/h;->x:Lcom/xiaomi/j/a/h;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/h;->a()I

    move-result v0

    invoke-virtual {v9, v0, v10}, Lcom/xiaomi/push/service/an;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/xiaomi/j/a/h;->y:Lcom/xiaomi/j/a/h;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/h;->a()I

    move-result v0

    const/16 v1, 0x12c

    invoke-virtual {v9, v0, v1}, Lcom/xiaomi/push/service/an;->a(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaomi/push/c/h;->a(I)I

    move-result v0

    new-instance v1, Lcom/xiaomi/push/c/a/i;

    iget-object v2, p0, Lcom/xiaomi/push/c/h;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/push/c/a/i;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v8, v1, v0, v11}, Lcom/xiaomi/b/a/d/h;->a(Lcom/xiaomi/b/a/d/h$a;II)Z

    :cond_c
    sget-object v0, Lcom/xiaomi/j/a/h;->Q:Lcom/xiaomi/j/a/h;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/h;->a()I

    move-result v0

    invoke-virtual {v9, v0, v10}, Lcom/xiaomi/push/service/an;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/xiaomi/j/a/h;->R:Lcom/xiaomi/j/a/h;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/h;->a()I

    move-result v0

    invoke-virtual {v9, v0, v12}, Lcom/xiaomi/push/service/an;->a(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaomi/push/c/h;->a(I)I

    move-result v0

    new-instance v1, Lcom/xiaomi/push/c/a/e;

    iget-object v2, p0, Lcom/xiaomi/push/c/h;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/push/c/a/e;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v8, v1, v0, v11}, Lcom/xiaomi/b/a/d/h;->a(Lcom/xiaomi/b/a/d/h$a;II)Z

    :cond_d
    sget-object v0, Lcom/xiaomi/j/a/h;->W:Lcom/xiaomi/j/a/h;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/h;->a()I

    move-result v0

    invoke-virtual {v9, v0, v13}, Lcom/xiaomi/push/service/an;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/xiaomi/j/a/h;->X:Lcom/xiaomi/j/a/h;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/h;->a()I

    move-result v0

    invoke-virtual {v9, v0, v12}, Lcom/xiaomi/push/service/an;->a(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaomi/push/c/h;->a(I)I

    move-result v0

    new-instance v1, Lcom/xiaomi/push/c/a/m;

    iget-object v2, p0, Lcom/xiaomi/push/c/h;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/push/c/a/m;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v8, v1, v0, v11}, Lcom/xiaomi/b/a/d/h;->a(Lcom/xiaomi/b/a/d/h$a;II)Z

    :cond_e
    sget-object v0, Lcom/xiaomi/j/a/h;->ao:Lcom/xiaomi/j/a/h;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/h;->a()I

    move-result v0

    invoke-virtual {v9, v0, v13}, Lcom/xiaomi/push/service/an;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/xiaomi/push/c/h;->c()Z

    :cond_f
    sget-object v0, Lcom/xiaomi/j/a/h;->a:Lcom/xiaomi/j/a/h;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/h;->a()I

    move-result v0

    invoke-virtual {v9, v0, v10}, Lcom/xiaomi/push/service/an;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/j/a/h;->b:Lcom/xiaomi/j/a/h;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/h;->a()I

    move-result v0

    invoke-virtual {v9, v0, v14}, Lcom/xiaomi/push/service/an;->a(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaomi/push/c/h;->a(I)I

    move-result v0

    new-instance v1, Lcom/xiaomi/push/c/a/j;

    iget-object v2, p0, Lcom/xiaomi/push/c/h;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/xiaomi/push/c/a/j;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x3c

    invoke-virtual {v8, v1, v0, v2}, Lcom/xiaomi/b/a/d/h;->a(Lcom/xiaomi/b/a/d/h$a;II)Z

    goto/16 :goto_0
.end method

.method private c()Z
    .locals 8

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/c/h;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/c/h;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    :goto_0
    new-instance v2, Lcom/xiaomi/push/c/a;

    iget-object v3, p0, Lcom/xiaomi/push/c/h;->b:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/xiaomi/push/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/c/h;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/push/c/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/b/a/d/h;->a(Landroid/content/Context;)Lcom/xiaomi/b/a/d/h;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/push/c/i;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/c/i;-><init>(Lcom/xiaomi/push/c/h;)V

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/b/a/d/h;->a(Ljava/lang/Runnable;I)V

    return-void
.end method
