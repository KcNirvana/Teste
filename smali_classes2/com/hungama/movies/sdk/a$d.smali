.class Lcom/hungama/movies/sdk/a$d;
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
    name = "d"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/hungama/movies/sdk/a;


# direct methods
.method private constructor <init>(Lcom/hungama/movies/sdk/a;)V
    .locals 2

    iput-object p1, p0, Lcom/hungama/movies/sdk/a$d;->b:Lcom/hungama/movies/sdk/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lcom/hungama/movies/sdk/a$d;->b:Lcom/hungama/movies/sdk/a;

    iget-object p1, p1, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {p1}, Lcom/hungama/movies/sdk/b;->i()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcom/hungama/movies/sdk/a$d;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/hungama/movies/sdk/a;Lcom/hungama/movies/sdk/a$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hungama/movies/sdk/a$d;-><init>(Lcom/hungama/movies/sdk/a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "SeekBarRunnable"

    const-string v1, "SeekBarRunnable"

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/a$d;->b:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a$d;->b:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/b;->h()J

    move-result-wide v0

    long-to-int v0, v0

    const-string v1, "currentDuration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/hungama/movies/sdk/a$d;->a:I

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/hungama/movies/sdk/a$d;->b:Lcom/hungama/movies/sdk/a;

    iget-object v1, v1, Lcom/hungama/movies/sdk/a;->b:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hungama/movies/sdk/a$d;->b:Lcom/hungama/movies/sdk/a;

    iget-object v1, v1, Lcom/hungama/movies/sdk/a;->b:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    int-to-long v2, v0

    iget-object v0, p0, Lcom/hungama/movies/sdk/a$d;->b:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->Y:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/b;->i()J

    move-result-wide v4

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;->onPlaybackProgress(JJ)V

    :cond_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/a$d;->b:Lcom/hungama/movies/sdk/a;

    iget-object v0, v0, Lcom/hungama/movies/sdk/a;->Z:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hungama/movies/sdk/a$d;->b:Lcom/hungama/movies/sdk/a;

    invoke-static {v1}, Lcom/hungama/movies/sdk/a;->f(Lcom/hungama/movies/sdk/a;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
