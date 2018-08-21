.class final Lss/v;
.super Ljava/lang/Object;

# interfaces
.implements Lss/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lss/v$a;
    }
.end annotation


# instance fields
.field volatile a:Z

.field b:Lss/w;

.field c:Lss/ss/gK/g;

.field private final d:Lss/t;

.field private e:Z


# direct methods
.method protected constructor <init>(Lss/t;Lss/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lss/v;->d:Lss/t;

    iput-object p2, p0, Lss/v;->b:Lss/w;

    return-void
.end method

.method static synthetic a(Lss/v;)Lss/t;
    .locals 1

    iget-object v0, p0, Lss/v;->d:Lss/t;

    return-object v0
.end method

.method private a(Z)Lss/y;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lss/v$a;

    const/4 v1, 0x0

    iget-object v2, p0, Lss/v;->b:Lss/w;

    invoke-direct {v0, p0, v1, v2, p1}, Lss/v$a;-><init>(Lss/v;ILss/w;Z)V

    iget-object v1, p0, Lss/v;->b:Lss/w;

    invoke-interface {v0, v1}, Lss/r$a;->a(Lss/w;)Lss/y;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lss/y;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lss/v;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lss/v;->e:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lss/v;->d:Lss/t;

    invoke-virtual {v0}, Lss/t;->s()Lss/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lss/m;->a(Lss/v;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lss/v;->a(Z)Lss/y;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lss/v;->d:Lss/t;

    invoke-virtual {v1}, Lss/t;->s()Lss/m;

    move-result-object v1

    invoke-virtual {v1, p0}, Lss/m;->a(Lss/e;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lss/v;->d:Lss/t;

    invoke-virtual {v1}, Lss/t;->s()Lss/m;

    move-result-object v1

    invoke-virtual {v1, p0}, Lss/m;->a(Lss/e;)V

    return-object v0
.end method

.method a(Lss/w;Z)Lss/y;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lss/w;->d()Lss/x;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lss/w;->e()Lss/w$a;

    move-result-object v1

    invoke-virtual {v0}, Lss/x;->a()Lss/s;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, "Content-Type"

    invoke-virtual {v2}, Lss/s;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lss/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/w$a;

    :cond_0
    invoke-virtual {v0}, Lss/x;->b()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Content-Length"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lss/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/w$a;

    const-string/jumbo v0, "Transfer-Encoding"

    invoke-virtual {v1, v0}, Lss/w$a;->b(Ljava/lang/String;)Lss/w$a;

    :goto_0
    invoke-virtual {v1}, Lss/w$a;->a()Lss/w;

    move-result-object v2

    :goto_1
    new-instance v0, Lss/ss/gK/g;

    iget-object v1, p0, Lss/v;->d:Lss/t;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v5, p2

    invoke-direct/range {v0 .. v8}, Lss/ss/gK/g;-><init>(Lss/t;Lss/w;ZZZLss/ss/gK/r;Lss/ss/gK/n;Lss/y;)V

    iput-object v0, p0, Lss/v;->c:Lss/ss/gK/g;

    const/4 v0, 0x0

    :goto_2
    iget-boolean v1, p0, Lss/v;->a:Z

    if-eqz v1, :cond_2

    iget-object v0, p0, Lss/v;->c:Lss/ss/gK/g;

    invoke-virtual {v0}, Lss/ss/gK/g;->e()V

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string/jumbo v0, "Transfer-Encoding"

    const-string/jumbo v2, "chunked"

    invoke-virtual {v1, v0, v2}, Lss/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/w$a;

    const-string/jumbo v0, "Content-Length"

    invoke-virtual {v1, v0}, Lss/w$a;->b(Ljava/lang/String;)Lss/w$a;

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :try_start_0
    iget-object v1, p0, Lss/v;->c:Lss/ss/gK/g;

    invoke-virtual {v1}, Lss/ss/gK/g;->a()V

    iget-object v1, p0, Lss/v;->c:Lss/ss/gK/g;

    invoke-virtual {v1}, Lss/ss/gK/g;->g()V
    :try_end_0
    .catch Lss/ss/gK/l; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lss/ss/gK/o; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lss/v;->c:Lss/ss/gK/g;

    invoke-virtual {v1}, Lss/ss/gK/g;->c()Lss/y;

    move-result-object v8

    iget-object v1, p0, Lss/v;->c:Lss/ss/gK/g;

    invoke-virtual {v1}, Lss/ss/gK/g;->h()Lss/w;

    move-result-object v2

    if-nez v2, :cond_7

    if-nez p2, :cond_3

    iget-object v0, p0, Lss/v;->c:Lss/ss/gK/g;

    invoke-virtual {v0}, Lss/ss/gK/g;->e()V

    :cond_3
    return-object v8

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Lss/ss/gK/l;->a()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move v1, v2

    :goto_3
    if-eqz v1, :cond_4

    iget-object v1, p0, Lss/v;->c:Lss/ss/gK/g;

    invoke-virtual {v1}, Lss/ss/gK/g;->f()Lss/ss/gK/r;

    move-result-object v1

    invoke-virtual {v1}, Lss/ss/gK/r;->b()V

    :cond_4
    throw v0

    :catch_1
    move-exception v1

    :try_start_2
    iget-object v3, p0, Lss/v;->c:Lss/ss/gK/g;

    invoke-virtual {v1}, Lss/ss/gK/o;->a()Ljava/io/IOException;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lss/ss/gK/g;->a(Ljava/io/IOException;LgK/q;)Lss/ss/gK/g;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_5

    const/4 v1, 0x0

    :try_start_3
    iput-object v3, p0, Lss/v;->c:Lss/ss/gK/g;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_5
    :try_start_4
    invoke-virtual {v1}, Lss/ss/gK/o;->a()Ljava/io/IOException;

    move-result-object v0

    throw v0

    :catch_2
    move-exception v1

    iget-object v3, p0, Lss/v;->c:Lss/ss/gK/g;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lss/ss/gK/g;->a(Ljava/io/IOException;LgK/q;)Lss/ss/gK/g;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_6

    const/4 v1, 0x0

    :try_start_5
    iput-object v3, p0, Lss/v;->c:Lss/ss/gK/g;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :cond_6
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_7
    iget-object v1, p0, Lss/v;->c:Lss/ss/gK/g;

    invoke-virtual {v1}, Lss/ss/gK/g;->f()Lss/ss/gK/r;

    move-result-object v6

    add-int/lit8 v9, v0, 0x1

    const/16 v0, 0x14

    if-le v9, v0, :cond_8

    invoke-virtual {v6}, Lss/ss/gK/r;->b()V

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Too many follow-up requests: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v0, p0, Lss/v;->c:Lss/ss/gK/g;

    invoke-virtual {v2}, Lss/w;->a()Lss/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lss/ss/gK/g;->a(Lss/q;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v6}, Lss/ss/gK/r;->b()V

    const/4 v6, 0x0

    :cond_9
    new-instance v0, Lss/ss/gK/g;

    iget-object v1, p0, Lss/v;->d:Lss/t;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move v5, p2

    invoke-direct/range {v0 .. v8}, Lss/ss/gK/g;-><init>(Lss/t;Lss/w;ZZZLss/ss/gK/r;Lss/ss/gK/n;Lss/y;)V

    iput-object v0, p0, Lss/v;->c:Lss/ss/gK/g;

    move v0, v9

    goto/16 :goto_2

    :cond_a
    move-object v2, p1

    goto/16 :goto_1
.end method
