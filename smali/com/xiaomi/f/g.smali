.class public Lcom/xiaomi/f/g;
.super Lcom/xiaomi/g/h;
.source "SourceFile"


# instance fields
.field private w:Ljava/lang/Thread;

.field private x:Lcom/xiaomi/f/c;

.field private y:Lcom/xiaomi/f/d;

.field private z:[B


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/g/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/g/h;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/g/b;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/f/g;)Lcom/xiaomi/f/c;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/f/g;->x:Lcom/xiaomi/f/c;

    return-object v0
.end method

.method private c(Z)Lcom/xiaomi/f/b;
    .locals 3

    new-instance v0, Lcom/xiaomi/f/f;

    invoke-direct {v0}, Lcom/xiaomi/f/f;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/xiaomi/f/f;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/xiaomi/h/h;->c()[B

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lcom/xiaomi/push/d/b$j;

    invoke-direct {v2}, Lcom/xiaomi/push/d/b$j;-><init>()V

    invoke-static {v1}, Lcom/a/b/a/a;->a([B)Lcom/a/b/a/a;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xiaomi/push/d/b$j;->a(Lcom/a/b/a/a;)Lcom/xiaomi/push/d/b$j;

    invoke-virtual {v2}, Lcom/xiaomi/push/d/b$j;->c()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/f/f;->a([BLjava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private x()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/g/l;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/xiaomi/f/c;

    iget-object v1, p0, Lcom/xiaomi/f/g;->q:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/f/c;-><init>(Ljava/io/InputStream;Lcom/xiaomi/f/g;)V

    iput-object v0, p0, Lcom/xiaomi/f/g;->x:Lcom/xiaomi/f/c;

    new-instance v0, Lcom/xiaomi/f/d;

    iget-object v1, p0, Lcom/xiaomi/f/g;->q:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/f/d;-><init>(Ljava/io/OutputStream;Lcom/xiaomi/f/g;)V

    iput-object v0, p0, Lcom/xiaomi/f/g;->y:Lcom/xiaomi/f/d;

    new-instance v0, Lcom/xiaomi/f/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Blob Reader ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/f/g;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/f/h;-><init>(Lcom/xiaomi/f/g;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/f/g;->w:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/xiaomi/f/g;->w:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/g/l;

    const-string v2, "Error to init reader and writer"

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/g/l;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected declared-synchronized a(ILjava/lang/Exception;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/f/g;->x:Lcom/xiaomi/f/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/f/g;->x:Lcom/xiaomi/f/c;

    invoke-virtual {v0}, Lcom/xiaomi/f/c;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/f/g;->x:Lcom/xiaomi/f/c;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/f/g;->y:Lcom/xiaomi/f/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/f/g;->y:Lcom/xiaomi/f/d;

    invoke-virtual {v0}, Lcom/xiaomi/f/d;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/xiaomi/f/g;->y:Lcom/xiaomi/f/d;

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/f/g;->z:[B

    invoke-super {p0, p1, p2}, Lcom/xiaomi/g/h;->a(ILjava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Lcom/xiaomi/f/b;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/f/b;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Slim] RCV blob chid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/f/b;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/f/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; errCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/f/b;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/f/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/f/b;->c()I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "PING"

    invoke-virtual {p1}, Lcom/xiaomi/f/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Slim] RCV ping id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/f/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/f/g;->w()V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/f/g;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/g/a$a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/g/a$a;->a(Lcom/xiaomi/f/b;)V

    goto :goto_1

    :cond_4
    const-string v0, "CLOSE"

    invoke-virtual {p1}, Lcom/xiaomi/f/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/f/g;->c(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/g/c/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/g/l;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaomi/f/b;->a(Lcom/xiaomi/g/c/d;Ljava/lang/String;)Lcom/xiaomi/f/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/f/g;->b(Lcom/xiaomi/f/b;)V

    return-void
.end method

.method public declared-synchronized a(Lcom/xiaomi/push/service/ar$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/g/l;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/f/g;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/xiaomi/f/a;->a(Lcom/xiaomi/push/service/ar$b;Ljava/lang/String;Lcom/xiaomi/g/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/g/l;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2, p0}, Lcom/xiaomi/f/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/g/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/g/l;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/f/g;->y:Lcom/xiaomi/f/d;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaomi/f/g;->c(Z)Lcom/xiaomi/f/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Slim] SND ping id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/f/b;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/f/g;->b(Lcom/xiaomi/f/b;)V

    invoke-virtual {p0}, Lcom/xiaomi/f/g;->v()V

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/g/l;

    const-string v1, "The BlobWriter is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/g/l;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a([Lcom/xiaomi/f/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/g/l;
        }
    .end annotation

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/xiaomi/f/g;->b(Lcom/xiaomi/f/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method declared-synchronized a()[B
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/f/g;->z:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/f/g;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/push/service/bb;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/f/g;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/f/g;->j:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/f/g;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/push/service/ay;->a([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/f/g;->z:[B

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/f/g;->z:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/xiaomi/f/b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/g/l;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/f/g;->y:Lcom/xiaomi/f/d;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/f/g;->y:Lcom/xiaomi/f/d;

    invoke-virtual {v0, p1}, Lcom/xiaomi/f/d;->a(Lcom/xiaomi/f/b;)I

    move-result v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/f/g;->o:J

    invoke-virtual {p1}, Lcom/xiaomi/f/b;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/f/g;->n:Lcom/xiaomi/push/service/XMPushService;

    int-to-long v2, v7

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/g/e/g;->a(Landroid/content/Context;Ljava/lang/String;JZJ)V

    iget-object v0, p0, Lcom/xiaomi/f/g;->n:Lcom/xiaomi/push/service/XMPushService;

    int-to-long v2, v7

    invoke-static {v0, v1, p1, v2, v3}, Lcom/xiaomi/g/e/g;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/f/b;J)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/f/g;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/g/a$a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/g/a$a;->a(Lcom/xiaomi/f/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/g/l;

    invoke-direct {v1, v0}, Lcom/xiaomi/g/l;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/xiaomi/g/l;

    const-string v1, "the writer is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/g/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method b(Lcom/xiaomi/g/c/d;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/f/g;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/g/a$a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/g/a$a;->a(Lcom/xiaomi/g/c/d;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected declared-synchronized c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/g/l;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/f/g;->x()V

    iget-object v0, p0, Lcom/xiaomi/f/g;->y:Lcom/xiaomi/f/d;

    invoke-virtual {v0}, Lcom/xiaomi/f/d;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
