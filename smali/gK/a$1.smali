.class LgK/a$1;
.super Ljava/lang/Object;

# interfaces
.implements LgK/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LgK/a;->a(LgK/q;)LgK/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:LgK/q;

.field final synthetic b:LgK/a;


# direct methods
.method constructor <init>(LgK/a;LgK/q;)V
    .locals 0

    iput-object p1, p0, LgK/a$1;->b:LgK/a;

    iput-object p2, p0, LgK/a$1;->a:LgK/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LgK/s;
    .locals 1

    iget-object v0, p0, LgK/a$1;->b:LgK/a;

    return-object v0
.end method

.method public a_(LgK/c;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    iget-wide v0, p1, LgK/c;->b:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, LgK/t;->a(JJJ)V

    move-wide v4, p2

    :goto_0
    cmp-long v0, v4, v2

    if-lez v0, :cond_2

    iget-object v0, p1, LgK/c;->a:LgK/o;

    move-object v6, v0

    move-wide v0, v2

    :goto_1
    const-wide/32 v8, 0x10000

    cmp-long v7, v0, v8

    if-gez v7, :cond_0

    iget-object v7, p1, LgK/c;->a:LgK/o;

    iget v7, v7, LgK/o;->c:I

    iget-object v8, p1, LgK/c;->a:LgK/o;

    iget v8, v8, LgK/o;->b:I

    sub-int/2addr v7, v8

    int-to-long v8, v7

    add-long/2addr v8, v0

    cmp-long v0, v8, v4

    if-ltz v0, :cond_1

    move-wide v0, v4

    :cond_0
    const/4 v6, 0x0

    iget-object v7, p0, LgK/a$1;->b:LgK/a;

    invoke-virtual {v7}, LgK/a;->c()V

    :try_start_0
    iget-object v7, p0, LgK/a$1;->a:LgK/q;

    invoke-interface {v7, p1, v0, v1}, LgK/q;->a_(LgK/c;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v4, v0

    const/4 v0, 0x1

    iget-object v1, p0, LgK/a$1;->b:LgK/a;

    invoke-virtual {v1, v0}, LgK/a;->a(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, v6, LgK/o;->f:LgK/o;

    move-object v6, v0

    move-wide v0, v8

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, LgK/a$1;->b:LgK/a;

    invoke-virtual {v1, v0}, LgK/a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, LgK/a$1;->b:LgK/a;

    invoke-virtual {v1, v6}, LgK/a;->a(Z)V

    throw v0

    :cond_2
    return-void
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, LgK/a$1;->b:LgK/a;

    invoke-virtual {v0}, LgK/a;->c()V

    :try_start_0
    iget-object v0, p0, LgK/a$1;->a:LgK/q;

    invoke-interface {v0}, LgK/q;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iget-object v1, p0, LgK/a$1;->b:LgK/a;

    invoke-virtual {v1, v0}, LgK/a;->a(Z)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v2, p0, LgK/a$1;->b:LgK/a;

    invoke-virtual {v2, v0}, LgK/a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, LgK/a$1;->b:LgK/a;

    invoke-virtual {v2, v1}, LgK/a;->a(Z)V

    throw v0
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, LgK/a$1;->b:LgK/a;

    invoke-virtual {v0}, LgK/a;->c()V

    :try_start_0
    iget-object v0, p0, LgK/a$1;->a:LgK/q;

    invoke-interface {v0}, LgK/q;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iget-object v1, p0, LgK/a$1;->b:LgK/a;

    invoke-virtual {v1, v0}, LgK/a;->a(Z)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v2, p0, LgK/a$1;->b:LgK/a;

    invoke-virtual {v2, v0}, LgK/a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, LgK/a$1;->b:LgK/a;

    invoke-virtual {v2, v1}, LgK/a;->a(Z)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AsyncTimeout.sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LgK/a$1;->a:LgK/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
