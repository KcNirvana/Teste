.class La/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/z;


# instance fields
.field final synthetic a:La/z;

.field final synthetic b:La/a;


# direct methods
.method constructor <init>(La/a;La/z;)V
    .locals 0

    iput-object p1, p0, La/b;->b:La/a;

    iput-object p2, p0, La/b;->a:La/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, La/b;->b:La/a;

    invoke-virtual {v0}, La/a;->enter()V

    :try_start_0
    iget-object v0, p0, La/b;->a:La/z;

    invoke-interface {v0}, La/z;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iget-object v1, p0, La/b;->b:La/a;

    invoke-virtual {v1, v0}, La/a;->exit(Z)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v2, p0, La/b;->b:La/a;

    invoke-virtual {v2, v0}, La/a;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, La/b;->b:La/a;

    invoke-virtual {v2, v1}, La/a;->exit(Z)V

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

    iget-object v0, p0, La/b;->b:La/a;

    invoke-virtual {v0}, La/a;->enter()V

    :try_start_0
    iget-object v0, p0, La/b;->a:La/z;

    invoke-interface {v0}, La/z;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iget-object v1, p0, La/b;->b:La/a;

    invoke-virtual {v1, v0}, La/a;->exit(Z)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v2, p0, La/b;->b:La/a;

    invoke-virtual {v2, v0}, La/a;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, La/b;->b:La/a;

    invoke-virtual {v2, v1}, La/a;->exit(Z)V

    throw v0
.end method

.method public timeout()La/ab;
    .locals 1

    iget-object v0, p0, La/b;->b:La/a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/b;->a:La/z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(La/e;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, La/b;->b:La/a;

    invoke-virtual {v0}, La/a;->enter()V

    :try_start_0
    iget-object v0, p0, La/b;->a:La/z;

    invoke-interface {v0, p1, p2, p3}, La/z;->write(La/e;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iget-object v1, p0, La/b;->b:La/a;

    invoke-virtual {v1, v0}, La/a;->exit(Z)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v2, p0, La/b;->b:La/a;

    invoke-virtual {v2, v0}, La/a;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, La/b;->b:La/a;

    invoke-virtual {v2, v1}, La/a;->exit(Z)V

    throw v0
.end method
