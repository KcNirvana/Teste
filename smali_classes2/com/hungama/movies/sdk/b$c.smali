.class Lcom/hungama/movies/sdk/b$c;
.super Ljava/util/TimerTask;
.source "HungamaPlayerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hungama/movies/sdk/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/hungama/movies/sdk/b;


# direct methods
.method private constructor <init>(Lcom/hungama/movies/sdk/b;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/b$c;->a:Lcom/hungama/movies/sdk/b;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hungama/movies/sdk/b;Lcom/hungama/movies/sdk/b$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hungama/movies/sdk/b$c;-><init>(Lcom/hungama/movies/sdk/b;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "Timer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MovieWatchedDurationTimerTask:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hungama/movies/sdk/b$c;->a:Lcom/hungama/movies/sdk/b;

    iget v2, v2, Lcom/hungama/movies/sdk/b;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/b$c;->a:Lcom/hungama/movies/sdk/b;

    iget v1, v0, Lcom/hungama/movies/sdk/b;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/hungama/movies/sdk/b;->l:I

    iget-object v0, p0, Lcom/hungama/movies/sdk/b$c;->a:Lcom/hungama/movies/sdk/b;

    invoke-static {v0}, Lcom/hungama/movies/sdk/b;->b(Lcom/hungama/movies/sdk/b;)Lcom/hungama/movies/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/b$c;->a:Lcom/hungama/movies/sdk/b;

    invoke-static {v0}, Lcom/hungama/movies/sdk/b;->b(Lcom/hungama/movies/sdk/b;)Lcom/hungama/movies/sdk/a;

    move-result-object v0

    iget-wide v1, v0, Lcom/hungama/movies/sdk/a;->J:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/hungama/movies/sdk/a;->J:J

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/hungama/movies/sdk/b$c;->cancel()Z

    :goto_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/b$c;->a:Lcom/hungama/movies/sdk/b;

    iget v1, v0, Lcom/hungama/movies/sdk/b;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/hungama/movies/sdk/b;->m:I

    :try_start_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/b$c;->a:Lcom/hungama/movies/sdk/b;

    iget v0, v0, Lcom/hungama/movies/sdk/b;->l:I

    iget-object v1, p0, Lcom/hungama/movies/sdk/b$c;->a:Lcom/hungama/movies/sdk/b;

    iget v1, v1, Lcom/hungama/movies/sdk/b;->h:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/hungama/movies/sdk/b$c;->a:Lcom/hungama/movies/sdk/b;

    invoke-virtual {v0}, Lcom/hungama/movies/sdk/b;->u()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method
