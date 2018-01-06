.class Lcom/bumptech/glide/load/b/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/b/c/e;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/i$a;,
        Lcom/bumptech/glide/load/b/i$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/l;

.field private final b:Lcom/bumptech/glide/load/b/i$a;

.field private final c:Lcom/bumptech/glide/load/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/a",
            "<***>;"
        }
    .end annotation
.end field

.field private d:Lcom/bumptech/glide/load/b/i$b;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/b/i$a;Lcom/bumptech/glide/load/b/a;Lcom/bumptech/glide/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/i$a;",
            "Lcom/bumptech/glide/load/b/a",
            "<***>;",
            "Lcom/bumptech/glide/l;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/b/i;->b:Lcom/bumptech/glide/load/b/i$a;

    iput-object p2, p0, Lcom/bumptech/glide/load/b/i;->c:Lcom/bumptech/glide/load/b/a;

    sget-object v0, Lcom/bumptech/glide/load/b/i$b;->a:Lcom/bumptech/glide/load/b/i$b;

    iput-object v0, p0, Lcom/bumptech/glide/load/b/i;->d:Lcom/bumptech/glide/load/b/i$b;

    iput-object p3, p0, Lcom/bumptech/glide/load/b/i;->a:Lcom/bumptech/glide/l;

    return-void
.end method

.method private a(Lcom/bumptech/glide/load/b/k;)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/b/i;->b:Lcom/bumptech/glide/load/b/i$a;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/b/i$a;->a(Lcom/bumptech/glide/load/b/k;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 1

    invoke-direct {p0}, Lcom/bumptech/glide/load/b/i;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bumptech/glide/load/b/i$b;->b:Lcom/bumptech/glide/load/b/i$b;

    iput-object v0, p0, Lcom/bumptech/glide/load/b/i;->d:Lcom/bumptech/glide/load/b/i$b;

    iget-object v0, p0, Lcom/bumptech/glide/load/b/i;->b:Lcom/bumptech/glide/load/b/i$a;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/load/b/i$a;->b(Lcom/bumptech/glide/load/b/i;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/b/i;->b:Lcom/bumptech/glide/load/b/i$a;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/b/i$a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private c()Z
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/load/b/i;->d:Lcom/bumptech/glide/load/b/i$b;

    sget-object v1, Lcom/bumptech/glide/load/b/i$b;->a:Lcom/bumptech/glide/load/b/i$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Lcom/bumptech/glide/load/b/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/b/k",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/bumptech/glide/load/b/i;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bumptech/glide/load/b/i;->e()Lcom/bumptech/glide/load/b/k;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/i;->f()Lcom/bumptech/glide/load/b/k;

    move-result-object v0

    goto :goto_0
.end method

.method private e()Lcom/bumptech/glide/load/b/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/b/k",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/b/i;->c:Lcom/bumptech/glide/load/b/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/a;->a()Lcom/bumptech/glide/load/b/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/b/i;->c:Lcom/bumptech/glide/load/b/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/a;->b()Lcom/bumptech/glide/load/b/k;

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "EngineRunnable"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "EngineRunnable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception decoding result from cache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private f()Lcom/bumptech/glide/load/b/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/b/k",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/i;->c:Lcom/bumptech/glide/load/b/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/a;->c()Lcom/bumptech/glide/load/b/k;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/i;->e:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/b/i;->c:Lcom/bumptech/glide/load/b/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/a;->d()V

    return-void
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/b/i;->a:Lcom/bumptech/glide/l;

    invoke-virtual {v0}, Lcom/bumptech/glide/l;->ordinal()I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/i;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/i;->d()Lcom/bumptech/glide/load/b/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    iget-boolean v2, p0, Lcom/bumptech/glide/load/b/i;->e:Z

    if-eqz v2, :cond_3

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/k;->d()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "EngineRunnable"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "EngineRunnable"

    const-string v3, "Exception decoding"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/b/i;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/b/i;->a(Lcom/bumptech/glide/load/b/k;)V

    goto :goto_0
.end method
