.class Lcom/hungama/movies/sdk/b$b;
.super Ljava/util/TimerTask;
.source "HungamaPlayerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hungama/movies/sdk/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/hungama/movies/sdk/b;


# direct methods
.method private constructor <init>(Lcom/hungama/movies/sdk/b;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/b$b;->a:Lcom/hungama/movies/sdk/b;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hungama/movies/sdk/b;Lcom/hungama/movies/sdk/b$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hungama/movies/sdk/b$b;-><init>(Lcom/hungama/movies/sdk/b;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "IncrementalEventPostTimer"

    const-string v1, "MoviePlayedDuration"

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/b$b;->a:Lcom/hungama/movies/sdk/b;

    iget-object v0, v0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hungama/movies/sdk/b$b;->a:Lcom/hungama/movies/sdk/b;

    iget-object v0, v0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/f;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hungama/movies/sdk/b$b;->a:Lcom/hungama/movies/sdk/b;

    iget-object v0, v0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/a/f;->k()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/hungama/movies/sdk/b$b;->a:Lcom/hungama/movies/sdk/b;

    iget-object v2, v2, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v2}, Lcom/hungama/movies/sdk/a/f;->o()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-string v2, "movieWatchedDuration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hungama/movies/sdk/b$b;->a:Lcom/hungama/movies/sdk/b;

    iget-object v2, v2, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v2}, Lcom/hungama/movies/sdk/a/f;->i()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/hungama/movies/sdk/b$b;->a:Lcom/hungama/movies/sdk/b;

    iget-object v4, v4, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v4}, Lcom/hungama/movies/sdk/a/f;->n()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3c

    cmp-long v4, v0, v4

    const/4 v5, 0x0

    if-ltz v4, :cond_0

    iget-object v4, p0, Lcom/hungama/movies/sdk/b$b;->a:Lcom/hungama/movies/sdk/b;

    invoke-static {v4}, Lcom/hungama/movies/sdk/b;->b(Lcom/hungama/movies/sdk/b;)Lcom/hungama/movies/sdk/a;

    move-result-object v4

    const-string v6, "incremental"

    long-to-int v0, v0

    long-to-int v1, v2

    invoke-virtual {v4, v6, v0, v1, v5}, Lcom/hungama/movies/sdk/a;->a(Ljava/lang/String;IIZ)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/b$b;->a:Lcom/hungama/movies/sdk/b;

    iget-object v0, v0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    iget-object v1, p0, Lcom/hungama/movies/sdk/b$b;->a:Lcom/hungama/movies/sdk/b;

    iget-object v1, v1, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v1}, Lcom/hungama/movies/sdk/a/f;->k()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/hungama/movies/sdk/a/f;->a(J)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/b$b;->a:Lcom/hungama/movies/sdk/b;

    iget-object v0, v0, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    iget-object v1, p0, Lcom/hungama/movies/sdk/b$b;->a:Lcom/hungama/movies/sdk/b;

    iget-object v1, v1, Lcom/hungama/movies/sdk/b;->n:Lcom/hungama/movies/sdk/a/f;

    invoke-virtual {v1}, Lcom/hungama/movies/sdk/a/f;->i()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/hungama/movies/sdk/a/f;->b(J)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/hungama/movies/sdk/b$b;->a:Lcom/hungama/movies/sdk/b;

    iget-boolean v4, v4, Lcom/hungama/movies/sdk/b;->i:Z

    const/4 v6, 0x1

    if-nez v4, :cond_1

    const-wide/16 v7, 0x1e

    cmp-long v4, v0, v7

    if-ltz v4, :cond_1

    iget-object v4, p0, Lcom/hungama/movies/sdk/b$b;->a:Lcom/hungama/movies/sdk/b;

    iput-boolean v6, v4, Lcom/hungama/movies/sdk/b;->i:Z

    iget-object v4, p0, Lcom/hungama/movies/sdk/b$b;->a:Lcom/hungama/movies/sdk/b;

    invoke-static {v4}, Lcom/hungama/movies/sdk/b;->b(Lcom/hungama/movies/sdk/b;)Lcom/hungama/movies/sdk/a;

    move-result-object v4

    const-string v6, "Billing"

    long-to-int v0, v0

    long-to-int v1, v2

    invoke-virtual {v4, v6, v0, v1, v5}, Lcom/hungama/movies/sdk/a;->a(Ljava/lang/String;IIZ)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/hungama/movies/sdk/b$b;->a:Lcom/hungama/movies/sdk/b;

    iget-boolean v4, v4, Lcom/hungama/movies/sdk/b;->j:Z

    if-nez v4, :cond_2

    const-wide/16 v7, 0x28

    cmp-long v4, v0, v7

    if-ltz v4, :cond_2

    iget-object v4, p0, Lcom/hungama/movies/sdk/b$b;->a:Lcom/hungama/movies/sdk/b;

    iput-boolean v6, v4, Lcom/hungama/movies/sdk/b;->j:Z

    iget-object v4, p0, Lcom/hungama/movies/sdk/b$b;->a:Lcom/hungama/movies/sdk/b;

    invoke-static {v4}, Lcom/hungama/movies/sdk/b;->b(Lcom/hungama/movies/sdk/b;)Lcom/hungama/movies/sdk/a;

    move-result-object v4

    const-string v6, "bill"

    long-to-int v0, v0

    long-to-int v1, v2

    invoke-virtual {v4, v6, v0, v1, v5}, Lcom/hungama/movies/sdk/a;->a(Ljava/lang/String;IIZ)V

    :cond_2
    :goto_0
    return-void
.end method
