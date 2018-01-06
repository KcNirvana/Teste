.class public Lcom/xiaomi/h/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/h/f$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:I

.field private d:J

.field private e:Lcom/xiaomi/h/e;

.field private f:Lcom/xiaomi/b/a/g/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/h/f;->b:Z

    invoke-static {}, Lcom/xiaomi/b/a/g/a;->a()Lcom/xiaomi/b/a/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/h/f;->f:Lcom/xiaomi/b/a/g/a;

    return-void
.end method

.method public static a()Lcom/xiaomi/h/f;
    .locals 1

    sget-object v0, Lcom/xiaomi/h/f$a;->a:Lcom/xiaomi/h/f;

    return-object v0
.end method

.method private a(Lcom/xiaomi/b/a/g/a$a;)Lcom/xiaomi/push/f/b;
    .locals 2

    const/4 v0, 0x0

    iget v1, p1, Lcom/xiaomi/b/a/g/a$a;->a:I

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/xiaomi/b/a/g/a$a;->c:Ljava/lang/Object;

    instance-of v1, v1, Lcom/xiaomi/push/f/b;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/xiaomi/b/a/g/a$a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/xiaomi/push/f/b;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/h/f;->f()Lcom/xiaomi/push/f/b;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/push/f/a;->ac:Lcom/xiaomi/push/f/a;

    invoke-virtual {v1}, Lcom/xiaomi/push/f/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/f/b;->a(I)Lcom/xiaomi/push/f/b;

    iget v1, p1, Lcom/xiaomi/b/a/g/a$a;->a:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/f/b;->c(I)Lcom/xiaomi/push/f/b;

    iget-object v1, p1, Lcom/xiaomi/b/a/g/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/f/b;->c(Ljava/lang/String;)Lcom/xiaomi/push/f/b;

    goto :goto_0
.end method

.method public static b()Lcom/xiaomi/h/e;
    .locals 2

    sget-object v1, Lcom/xiaomi/h/f$a;->a:Lcom/xiaomi/h/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/h/f$a;->a:Lcom/xiaomi/h/f;

    iget-object v0, v0, Lcom/xiaomi/h/f;->e:Lcom/xiaomi/h/e;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private b(I)Lcom/xiaomi/push/f/c;
    .locals 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/xiaomi/push/f/c;

    iget-object v0, p0, Lcom/xiaomi/h/f;->a:Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lcom/xiaomi/push/f/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/xiaomi/h/f;->e:Lcom/xiaomi/h/e;

    iget-object v0, v0, Lcom/xiaomi/h/e;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/b/a/e/d;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/h/f;->e:Lcom/xiaomi/h/e;

    iget-object v0, v0, Lcom/xiaomi/h/e;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/b/a/a/d;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/push/f/c;->a(Ljava/lang/String;)Lcom/xiaomi/push/f/c;

    :cond_0
    new-instance v3, Lb/a/a/c/b;

    invoke-direct {v3, p1}, Lb/a/a/c/b;-><init>(I)V

    new-instance v0, Lb/a/a/b/k$a;

    invoke-direct {v0}, Lb/a/a/b/k$a;-><init>()V

    invoke-virtual {v0, v3}, Lb/a/a/b/k$a;->a(Lb/a/a/c/d;)Lb/a/a/b/e;

    move-result-object v4

    :try_start_0
    invoke-virtual {v2, v4}, Lcom/xiaomi/push/f/c;->b(Lb/a/a/b/e;)V
    :try_end_0
    .catch Lb/a/a/f; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/h/f;->f:Lcom/xiaomi/b/a/g/a;

    invoke-virtual {v0}, Lcom/xiaomi/b/a/g/a;->c()Ljava/util/LinkedList;

    move-result-object v5

    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v5}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/b/a/g/a$a;

    invoke-direct {p0, v0}, Lcom/xiaomi/h/f;->a(Lcom/xiaomi/b/a/g/a$a;)Lcom/xiaomi/push/f/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Lcom/xiaomi/push/f/b;->b(Lb/a/a/b/e;)V

    :cond_1
    invoke-virtual {v3}, Lb/a/a/c/b;->d_()I

    move-result v6

    if-le v6, p1, :cond_3

    :cond_2
    :goto_2
    return-object v2

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lb/a/a/f; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method private g()V
    .locals 4

    iget-boolean v0, p0, Lcom/xiaomi/h/f;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/h/f;->d:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/xiaomi/h/f;->c:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/h/f;->b:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/h/f;->d:J

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    const v0, 0x240c8400

    if-lez p1, :cond_1

    mul-int/lit16 v1, p1, 0x3e8

    if-le v1, v0, :cond_2

    :goto_0
    iget v1, p0, Lcom/xiaomi/h/f;->c:I

    if-ne v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/xiaomi/h/f;->b:Z

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/h/f;->b:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/h/f;->d:J

    iput v0, p0, Lcom/xiaomi/h/f;->c:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable dot duration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " start = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaomi/h/f;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->c(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method declared-synchronized a(Lcom/xiaomi/push/f/b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/h/f;->f:Lcom/xiaomi/b/a/g/a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/b/a/g/a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/xiaomi/h/e;

    invoke-direct {v0, p1}, Lcom/xiaomi/h/e;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/h/f;->e:Lcom/xiaomi/h/e;

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/h/f;->a:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/push/service/bb;->a()Lcom/xiaomi/push/service/bb;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/h/g;

    invoke-direct {v1, p0}, Lcom/xiaomi/h/g;-><init>(Lcom/xiaomi/h/f;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/bb;->a(Lcom/xiaomi/push/service/bb$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/h/f;->b:Z

    return v0
.end method

.method d()Z
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/h/f;->g()V

    iget-boolean v0, p0, Lcom/xiaomi/h/f;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/h/f;->f:Lcom/xiaomi/b/a/g/a;

    invoke-virtual {v0}, Lcom/xiaomi/b/a/g/a;->b()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized e()Lcom/xiaomi/push/f/c;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/h/f;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x2ee

    iget-object v1, p0, Lcom/xiaomi/h/f;->e:Lcom/xiaomi/h/e;

    iget-object v1, v1, Lcom/xiaomi/h/e;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Lcom/xiaomi/b/a/e/d;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v0, 0x177

    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaomi/h/f;->b(I)Lcom/xiaomi/push/f/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized f()Lcom/xiaomi/push/f/b;
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/xiaomi/push/f/b;

    invoke-direct {v0}, Lcom/xiaomi/push/f/b;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/h/f;->e:Lcom/xiaomi/h/e;

    iget-object v1, v1, Lcom/xiaomi/h/e;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Lcom/xiaomi/b/a/e/d;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/f/b;->a(Ljava/lang/String;)Lcom/xiaomi/push/f/b;

    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/xiaomi/push/f/b;->a:B

    const/4 v1, 0x1

    iput v1, v0, Lcom/xiaomi/push/f/b;->c:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/f/b;->d(I)Lcom/xiaomi/push/f/b;

    iget-object v1, p0, Lcom/xiaomi/h/f;->e:Lcom/xiaomi/h/e;

    iget-object v1, v1, Lcom/xiaomi/h/e;->b:Lcom/xiaomi/g/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/h/f;->e:Lcom/xiaomi/h/e;

    iget-object v1, v1, Lcom/xiaomi/h/e;->b:Lcom/xiaomi/g/a;

    invoke-virtual {v1}, Lcom/xiaomi/g/a;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/f/b;->e(I)Lcom/xiaomi/push/f/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
