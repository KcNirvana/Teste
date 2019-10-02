.class Lcom/hungama/movies/sdk/a$c;
.super Ljava/lang/Object;
.source "HungamaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hungama/movies/sdk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/hungama/movies/sdk/a;


# direct methods
.method private constructor <init>(Lcom/hungama/movies/sdk/a;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/a$c;->a:Lcom/hungama/movies/sdk/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hungama/movies/sdk/a;Lcom/hungama/movies/sdk/a$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hungama/movies/sdk/a$c;-><init>(Lcom/hungama/movies/sdk/a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "PreviewMovieRunnable"

    const-string v1, "PreviewMovieRunnable"

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/a$c;->a:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/b;->g()Z

    move-result v0

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hungama/movies/sdk/a$c;->a:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/b;->h()J

    move-result-wide v3

    long-to-int v0, v3

    if-ltz v0, :cond_0

    int-to-long v3, v0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a$c;->a:Lcom/hungama/movies/sdk/a;

    iget-wide v5, v0, Lcom/hungama/movies/sdk/a;->X:J

    cmp-long v0, v3, v5

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a$c;->a:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->N:Landroid/os/Handler;

    iget-object v3, p0, Lcom/hungama/movies/sdk/a$c;->a:Lcom/hungama/movies/sdk/a;

    invoke-static {v3}, Lcom/hungama/movies/sdk/a;->d(Lcom/hungama/movies/sdk/a;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/a$c;->a:Lcom/hungama/movies/sdk/a;

    invoke-static {v0}, Lcom/hungama/movies/sdk/a;->e(Lcom/hungama/movies/sdk/a;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/hungama/movies/sdk/a$c;->a:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->N:Landroid/os/Handler;

    iget-object v3, p0, Lcom/hungama/movies/sdk/a$c;->a:Lcom/hungama/movies/sdk/a;

    invoke-static {v3}, Lcom/hungama/movies/sdk/a;->d(Lcom/hungama/movies/sdk/a;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
