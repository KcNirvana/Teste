.class public Lcom/hungama/movies/sdk/a/f;
.super Ljava/lang/Object;
.source "TimerMaster.java"


# instance fields
.field a:Lcom/hungama/movies/sdk/a/e;

.field b:Lcom/hungama/movies/sdk/a/e;

.field c:J

.field d:J

.field e:Z

.field f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hungama/movies/sdk/a/f;->c:J

    iput-wide v0, p0, Lcom/hungama/movies/sdk/a/f;->d:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hungama/movies/sdk/a/f;->e:Z

    iput-boolean v0, p0, Lcom/hungama/movies/sdk/a/f;->f:Z

    new-instance v0, Lcom/hungama/movies/sdk/a/e;

    invoke-direct {v0}, Lcom/hungama/movies/sdk/a/e;-><init>()V

    iput-object v0, p0, Lcom/hungama/movies/sdk/a/f;->b:Lcom/hungama/movies/sdk/a/e;

    iget-object v0, p0, Lcom/hungama/movies/sdk/a/f;->b:Lcom/hungama/movies/sdk/a/e;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/e;->a()V

    iget-object v0, p0, Lcom/hungama/movies/sdk/a/f;->b:Lcom/hungama/movies/sdk/a/e;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/e;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/a/f;->a:Lcom/hungama/movies/sdk/a/e;

    if-nez v0, :cond_0

    const-string v0, "MediaEventHungamaObject Buffer"

    const-string v1, "startBuffer/////////////////// 1"

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TimerMaster"

    const-string v1, "startBuffer null"

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/hungama/movies/sdk/a/e;

    invoke-direct {v0}, Lcom/hungama/movies/sdk/a/e;-><init>()V

    iput-object v0, p0, Lcom/hungama/movies/sdk/a/f;->a:Lcom/hungama/movies/sdk/a/e;

    iget-object v0, p0, Lcom/hungama/movies/sdk/a/f;->a:Lcom/hungama/movies/sdk/a/e;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/e;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/a/f;->a:Lcom/hungama/movies/sdk/a/e;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/e;->d()V

    const-string v0, "TimerMaster"

    const-string v1, "startBuffer"

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/a/f;->b:Lcom/hungama/movies/sdk/a/e;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/e;->c()V

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/hungama/movies/sdk/a/f;->c:J

    return-void
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/hungama/movies/sdk/a/f;->d:J

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/a/f;->a:Lcom/hungama/movies/sdk/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a/f;->a:Lcom/hungama/movies/sdk/a/e;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/e;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/a/f;->b:Lcom/hungama/movies/sdk/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a/f;->b:Lcom/hungama/movies/sdk/a/e;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/e;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/a/f;->a:Lcom/hungama/movies/sdk/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a/f;->a:Lcom/hungama/movies/sdk/a/e;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/e;->c()V

    const-string v0, "TimerMaster"

    const-string v1, "stopBuffer"

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hungama/movies/sdk/a/f;->d()V

    :cond_0
    iget-boolean v0, p0, Lcom/hungama/movies/sdk/a/f;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hungama/movies/sdk/a/f;->b:Lcom/hungama/movies/sdk/a/e;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/e;->j()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TimerMaster"

    const-string v1, "startPlay"

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/a/f;->b:Lcom/hungama/movies/sdk/a/e;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/e;->d()V

    :cond_1
    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/a/f;->b:Lcom/hungama/movies/sdk/a/e;

    if-eqz v0, :cond_0

    const-string v0, "TimerMaster"

    const-string v1, "stopPlay"

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/a/f;->b:Lcom/hungama/movies/sdk/a/e;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/e;->c()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, Lcom/hungama/movies/sdk/a/f;->a:Lcom/hungama/movies/sdk/a/e;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a/f;->a:Lcom/hungama/movies/sdk/a/e;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/e;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/hungama/movies/sdk/a/f;->e:Z

    iget-object v0, p0, Lcom/hungama/movies/sdk/a/f;->a:Lcom/hungama/movies/sdk/a/e;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/e;->c()V

    :cond_0
    const-string v0, "TimerMaster"

    const-string v2, "pause"

    invoke-static {v0, v2}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/a/f;->b:Lcom/hungama/movies/sdk/a/e;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/e;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "TimerMaster"

    const-string v2, "pause1"

    invoke-static {v0, v2}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/hungama/movies/sdk/a/f;->f:Z

    iget-object v0, p0, Lcom/hungama/movies/sdk/a/f;->b:Lcom/hungama/movies/sdk/a/e;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/e;->c()V

    :cond_1
    return-void
.end method

.method public h()V
    .locals 2

    iget-boolean v0, p0, Lcom/hungama/movies/sdk/a/f;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "TimerMaster"

    const-string v1, "resume"

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/a/f;->b:Lcom/hungama/movies/sdk/a/e;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/e;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hungama/movies/sdk/a/f;->f:Z

    :cond_0
    return-void
.end method

.method public i()I
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/a/f;->a:Lcom/hungama/movies/sdk/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a/f;->a:Lcom/hungama/movies/sdk/a/e;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/e;->g()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public j()J
    .locals 4

    iget-object v0, p0, Lcom/hungama/movies/sdk/a/f;->a:Lcom/hungama/movies/sdk/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a/f;->a:Lcom/hungama/movies/sdk/a/e;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/e;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public k()I
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/a/f;->b:Lcom/hungama/movies/sdk/a/e;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/e;->g()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/a/f;->b:Lcom/hungama/movies/sdk/a/e;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/e;->b()V

    iget-object v0, p0, Lcom/hungama/movies/sdk/a/f;->a:Lcom/hungama/movies/sdk/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a/f;->a:Lcom/hungama/movies/sdk/a/e;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/e;->b()V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 2

    new-instance v0, Lcom/hungama/movies/sdk/a/e;

    invoke-direct {v0}, Lcom/hungama/movies/sdk/a/e;-><init>()V

    iput-object v0, p0, Lcom/hungama/movies/sdk/a/f;->b:Lcom/hungama/movies/sdk/a/e;

    iget-object v0, p0, Lcom/hungama/movies/sdk/a/f;->b:Lcom/hungama/movies/sdk/a/e;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/e;->a()V

    iget-object v0, p0, Lcom/hungama/movies/sdk/a/f;->b:Lcom/hungama/movies/sdk/a/e;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/e;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hungama/movies/sdk/a/f;->a:Lcom/hungama/movies/sdk/a/e;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hungama/movies/sdk/a/f;->c:J

    iput-wide v0, p0, Lcom/hungama/movies/sdk/a/f;->d:J

    return-void
.end method

.method public n()J
    .locals 2

    iget-wide v0, p0, Lcom/hungama/movies/sdk/a/f;->d:J

    return-wide v0
.end method

.method public o()J
    .locals 2

    iget-wide v0, p0, Lcom/hungama/movies/sdk/a/f;->c:J

    return-wide v0
.end method
