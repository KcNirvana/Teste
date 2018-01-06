.class Lcom/amap/api/col/z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/col/bl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/z;

.field private b:Lcom/amap/api/col/bk;

.field private c:Landroid/os/Message;

.field private d:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Lcom/amap/api/col/z;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/amap/api/col/z$a;->a:Lcom/amap/api/col/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/z$a;->b:Lcom/amap/api/col/bk;

    iput-object v0, p0, Lcom/amap/api/col/z$a;->c:Landroid/os/Message;

    iput-object v0, p0, Lcom/amap/api/col/z$a;->d:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/col/z;Lcom/amap/api/col/aa;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/z$a;-><init>(Lcom/amap/api/col/z;)V

    return-void
.end method

.method private a(Lcom/amap/api/col/f;I)Lcom/amap/api/col/bk;
    .locals 7

    const/16 v1, 0x1f4

    if-ge p2, v1, :cond_0

    :goto_0
    :try_start_0
    new-instance v0, Lcom/amap/api/col/bk;

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/amap/api/col/z$a;->a:Lcom/amap/api/col/z;

    invoke-static {v3}, Lcom/amap/api/col/z;->a(Lcom/amap/api/col/z;)Lcom/amap/api/col/am;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget-object v3, v3, Lcom/amap/api/col/ah;->l:Lcom/amap/api/col/f;

    move-object v4, p1

    move v5, v1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/col/bk;-><init>(IILcom/amap/api/col/f;Lcom/amap/api/col/f;ILcom/amap/api/col/bl;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :cond_0
    move v1, p2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MapController"

    const-string v2, "makeTransTool"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/z$a;->b:Lcom/amap/api/col/bk;

    iput-object v0, p0, Lcom/amap/api/col/z$a;->c:Landroid/os/Message;

    iput-object v0, p0, Lcom/amap/api/col/z$a;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a(Lcom/amap/api/col/f;)V
    .locals 4

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/z$a;->a:Lcom/amap/api/col/z;

    invoke-static {v0}, Lcom/amap/api/col/z;->a(Lcom/amap/api/col/z;)Lcom/amap/api/col/am;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/col/f;->d()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amap/api/col/f;->c()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/z$a;->a:Lcom/amap/api/col/z;

    invoke-static {v0}, Lcom/amap/api/col/z;->a(Lcom/amap/api/col/z;)Lcom/amap/api/col/am;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/ah;->b(Lcom/amap/api/col/f;)Lcom/amap/api/col/f;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/z$a;->a:Lcom/amap/api/col/z;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/z;->a(Lcom/amap/api/col/f;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/z$a;->a:Lcom/amap/api/col/z;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/z;->a(Lcom/amap/api/col/f;)V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/col/f;Landroid/os/Message;Ljava/lang/Runnable;I)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/z$a;->a:Lcom/amap/api/col/z;

    invoke-static {v0}, Lcom/amap/api/col/z;->a(Lcom/amap/api/col/z;)Lcom/amap/api/col/am;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/z$a;->a:Lcom/amap/api/col/z;

    invoke-static {v0}, Lcom/amap/api/col/z;->a(Lcom/amap/api/col/z;)Lcom/amap/api/col/am;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/col/am;->d:Lcom/amap/api/col/am$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/col/am$b;->a:Z

    iget-object v0, p0, Lcom/amap/api/col/z$a;->a:Lcom/amap/api/col/z;

    invoke-static {v0}, Lcom/amap/api/col/z;->a(Lcom/amap/api/col/z;)Lcom/amap/api/col/am;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    invoke-virtual {p1}, Lcom/amap/api/col/f;->g()Lcom/amap/api/col/f;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/col/ah;->m:Lcom/amap/api/col/f;

    :cond_0
    invoke-direct {p0, p1, p4}, Lcom/amap/api/col/z$a;->a(Lcom/amap/api/col/f;I)Lcom/amap/api/col/bk;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/z$a;->b:Lcom/amap/api/col/bk;

    iput-object p2, p0, Lcom/amap/api/col/z$a;->c:Landroid/os/Message;

    iput-object p3, p0, Lcom/amap/api/col/z$a;->d:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/amap/api/col/z$a;->b:Lcom/amap/api/col/bk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/z$a;->b:Lcom/amap/api/col/bk;

    invoke-virtual {v0}, Lcom/amap/api/col/bk;->e()V

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/z$a;->b:Lcom/amap/api/col/bk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/z$a;->b:Lcom/amap/api/col/bk;

    invoke-virtual {v0}, Lcom/amap/api/col/bk;->g()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/z$a;->b:Lcom/amap/api/col/bk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/z$a;->b:Lcom/amap/api/col/bk;

    invoke-virtual {v0}, Lcom/amap/api/col/bk;->f()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/z$a;->c:Landroid/os/Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/z$a;->c:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/z$a;->c:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/z$a;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/z$a;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    invoke-direct {p0}, Lcom/amap/api/col/z$a;->d()V

    iget-object v0, p0, Lcom/amap/api/col/z$a;->a:Lcom/amap/api/col/z;

    invoke-static {v0}, Lcom/amap/api/col/z;->a(Lcom/amap/api/col/z;)Lcom/amap/api/col/am;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/z$a;->a:Lcom/amap/api/col/z;

    invoke-static {v0}, Lcom/amap/api/col/z;->a(Lcom/amap/api/col/z;)Lcom/amap/api/col/am;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/col/am;->d:Lcom/amap/api/col/am$b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/z$a;->a:Lcom/amap/api/col/z;

    invoke-static {v0}, Lcom/amap/api/col/z;->a(Lcom/amap/api/col/z;)Lcom/amap/api/col/am;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/col/am;->d:Lcom/amap/api/col/am$b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/amap/api/col/am$b;->a:Z

    :cond_2
    return-void
.end method
