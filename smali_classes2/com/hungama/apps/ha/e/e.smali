.class Lcom/hungama/apps/ha/e/e;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/hungama/apps/ha/e/a;

.field private b:Lcom/hungama/apps/ha/e/c;

.field private c:Lcom/hungama/apps/ha/e/g;

.field private d:Lcom/hungama/apps/ha/e/b;

.field private e:Lcom/hungama/apps/ha/e/h;


# direct methods
.method constructor <init>(Lcom/hungama/apps/ha/e/a;Lcom/hungama/apps/ha/e/c;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/hungama/apps/ha/e/e;->a:Lcom/hungama/apps/ha/e/a;

    iput-object p2, p0, Lcom/hungama/apps/ha/e/e;->b:Lcom/hungama/apps/ha/e/c;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hungama/apps/ha/e/e;->d:Lcom/hungama/apps/ha/e/b;

    iput-object p1, p0, Lcom/hungama/apps/ha/e/e;->e:Lcom/hungama/apps/ha/e/h;

    return-void
.end method

.method private a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/hungama/apps/ha/e/e;->a:Lcom/hungama/apps/ha/e/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hungama/apps/ha/e/e;->a:Lcom/hungama/apps/ha/e/a;

    invoke-interface {v0}, Lcom/hungama/apps/ha/e/a;->h()Lcom/hungama/apps/ha/e/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hungama/apps/ha/e/e;->a:Lcom/hungama/apps/ha/e/a;

    invoke-interface {v0}, Lcom/hungama/apps/ha/e/a;->h()Lcom/hungama/apps/ha/e/d;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hungama/apps/ha/e/e;->a:Lcom/hungama/apps/ha/e/a;

    invoke-interface {p1}, Lcom/hungama/apps/ha/e/a;->a()I

    move-result p1

    iget-object v1, p0, Lcom/hungama/apps/ha/e/e;->d:Lcom/hungama/apps/ha/e/b;

    invoke-interface {v0, p1, v1}, Lcom/hungama/apps/ha/e/d;->a(ILcom/hungama/apps/ha/e/b;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/hungama/apps/ha/e/e;->a:Lcom/hungama/apps/ha/e/a;

    invoke-interface {p1}, Lcom/hungama/apps/ha/e/a;->a()I

    move-result p1

    iget-object v1, p0, Lcom/hungama/apps/ha/e/e;->e:Lcom/hungama/apps/ha/e/h;

    invoke-interface {v0, p1, v1}, Lcom/hungama/apps/ha/e/d;->a(ILcom/hungama/apps/ha/e/h;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/hungama/apps/ha/e/e;->b:Lcom/hungama/apps/ha/e/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/apps/ha/e/e;->b:Lcom/hungama/apps/ha/e/c;

    iget-object v1, p0, Lcom/hungama/apps/ha/e/e;->a:Lcom/hungama/apps/ha/e/a;

    invoke-interface {v1}, Lcom/hungama/apps/ha/e/a;->a()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/hungama/apps/ha/e/c;->a(IZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    new-instance p1, Lcom/hungama/apps/ha/e/g;

    invoke-direct {p1}, Lcom/hungama/apps/ha/e/g;-><init>()V

    iput-object p1, p0, Lcom/hungama/apps/ha/e/e;->c:Lcom/hungama/apps/ha/e/g;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :try_start_0
    iget-object v0, p0, Lcom/hungama/apps/ha/e/e;->c:Lcom/hungama/apps/ha/e/g;

    iget-object v1, p0, Lcom/hungama/apps/ha/e/e;->a:Lcom/hungama/apps/ha/e/a;

    invoke-virtual {v0, v1}, Lcom/hungama/apps/ha/e/g;->a(Lcom/hungama/apps/ha/e/a;)Lcom/hungama/apps/ha/e/b;

    move-result-object v0

    iput-object v0, p0, Lcom/hungama/apps/ha/e/e;->d:Lcom/hungama/apps/ha/e/b;
    :try_end_0
    .catch Lcom/hungama/apps/ha/e/h; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iput-object p1, p0, Lcom/hungama/apps/ha/e/e;->e:Lcom/hungama/apps/ha/e/h;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1
.end method

.method a()V
    .locals 2

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Lcom/hungama/apps/ha/e/e;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/hungama/apps/ha/e/e;->a(Z)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/hungama/apps/ha/e/e;->b(Z)V

    return-void
.end method

.method b()V
    .locals 1

    iget-object v0, p0, Lcom/hungama/apps/ha/e/e;->c:Lcom/hungama/apps/ha/e/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/apps/ha/e/e;->c:Lcom/hungama/apps/ha/e/g;

    invoke-virtual {v0}, Lcom/hungama/apps/ha/e/g;->c()V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hungama/apps/ha/e/e;->cancel(Z)Z

    return-void
.end method

.method c()V
    .locals 2

    iget-object v0, p0, Lcom/hungama/apps/ha/e/e;->c:Lcom/hungama/apps/ha/e/g;

    invoke-virtual {v0}, Lcom/hungama/apps/ha/e/g;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hungama/apps/ha/e/e;->c:Lcom/hungama/apps/ha/e/g;

    iget-object v1, p0, Lcom/hungama/apps/ha/e/e;->a:Lcom/hungama/apps/ha/e/a;

    invoke-interface {v1}, Lcom/hungama/apps/ha/e/a;->i()V

    iput-object v0, p0, Lcom/hungama/apps/ha/e/e;->a:Lcom/hungama/apps/ha/e/a;

    iput-object v0, p0, Lcom/hungama/apps/ha/e/e;->b:Lcom/hungama/apps/ha/e/c;

    iput-object v0, p0, Lcom/hungama/apps/ha/e/e;->d:Lcom/hungama/apps/ha/e/b;

    iput-object v0, p0, Lcom/hungama/apps/ha/e/e;->e:Lcom/hungama/apps/ha/e/h;

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/hungama/apps/ha/e/e;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/hungama/apps/ha/e/e;->a(Ljava/lang/Boolean;)V

    return-void
.end method
