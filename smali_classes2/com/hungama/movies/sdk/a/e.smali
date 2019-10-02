.class public Lcom/hungama/movies/sdk/a/e;
.super Ljava/lang/Object;
.source "Stopwatch.java"


# instance fields
.field private a:J

.field private b:Z

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hungama/movies/sdk/a/e;->a:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/hungama/movies/sdk/a/e;->b:Z

    iput-wide v0, p0, Lcom/hungama/movies/sdk/a/e;->c:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hungama/movies/sdk/a/e;->a:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hungama/movies/sdk/a/e;->b:Z

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hungama/movies/sdk/a/e;->b:Z

    return-void
.end method

.method public c()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hungama/movies/sdk/a/e;->b:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hungama/movies/sdk/a/e;->a:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hungama/movies/sdk/a/e;->c:J

    return-void
.end method

.method public d()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hungama/movies/sdk/a/e;->b:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hungama/movies/sdk/a/e;->c:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hungama/movies/sdk/a/e;->a:J

    return-void
.end method

.method public e()J
    .locals 4

    iget-boolean v0, p0, Lcom/hungama/movies/sdk/a/e;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hungama/movies/sdk/a/e;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    rem-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public f()J
    .locals 4

    iget-boolean v0, p0, Lcom/hungama/movies/sdk/a/e;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hungama/movies/sdk/a/e;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    rem-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public g()J
    .locals 9

    iget-boolean v0, p0, Lcom/hungama/movies/sdk/a/e;->b:Z

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/hungama/movies/sdk/a/e;->a:J

    sub-long/2addr v3, v5

    div-long/2addr v3, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/hungama/movies/sdk/a/e;->c:J

    sub-long/2addr v5, v7

    sub-long/2addr v3, v5

    div-long/2addr v3, v1

    :goto_0
    return-wide v3
.end method

.method public h()J
    .locals 4

    iget-boolean v0, p0, Lcom/hungama/movies/sdk/a/e;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hungama/movies/sdk/a/e;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    rem-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public i()J
    .locals 4

    iget-boolean v0, p0, Lcom/hungama/movies/sdk/a/e;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hungama/movies/sdk/a/e;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hungama/movies/sdk/a/e;->b:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a/e;->i()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a/e;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a/e;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a/e;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
