.class public Lcom/xiaomi/metoknlp/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static g:Lcom/xiaomi/metoknlp/d;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/Handler;

.field private c:Landroid/os/HandlerThread;

.field private d:Lcom/xiaomi/metoknlp/g;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaomi/metoknlp/d;
    .locals 1

    sget-object v0, Lcom/xiaomi/metoknlp/d;->g:Lcom/xiaomi/metoknlp/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/metoknlp/d;

    invoke-direct {v0}, Lcom/xiaomi/metoknlp/d;-><init>()V

    sput-object v0, Lcom/xiaomi/metoknlp/d;->g:Lcom/xiaomi/metoknlp/d;

    :cond_0
    sget-object v0, Lcom/xiaomi/metoknlp/d;->g:Lcom/xiaomi/metoknlp/d;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/metoknlp/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/metoknlp/d;->d()V

    return-void
.end method

.method static synthetic b(Lcom/xiaomi/metoknlp/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/metoknlp/d;->e()V

    return-void
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/metoknlp/c/n;->a()Lcom/xiaomi/metoknlp/c/n;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/metoknlp/d;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaomi/metoknlp/c/n;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/metoknlp/d;->f:Z

    return-void
.end method

.method private e()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/metoknlp/c/n;->a()Lcom/xiaomi/metoknlp/c/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/c/n;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/metoknlp/d;->f:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/xiaomi/metoknlp/d;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/xiaomi/metoknlp/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/b;->a(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/xiaomi/metoknlp/d;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/metoknlp/d;->e:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "metoknlp_cl"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/metoknlp/d;->c:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/xiaomi/metoknlp/d;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/metoknlp/d;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/metoknlp/d;->b:Landroid/os/Handler;

    new-instance v0, Lcom/xiaomi/metoknlp/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/metoknlp/f;-><init>(Lcom/xiaomi/metoknlp/d;Lcom/xiaomi/metoknlp/e;)V

    iput-object v0, p0, Lcom/xiaomi/metoknlp/d;->d:Lcom/xiaomi/metoknlp/g;

    invoke-static {}, Lcom/xiaomi/metoknlp/b;->a()Lcom/xiaomi/metoknlp/b;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/metoknlp/d;->d:Lcom/xiaomi/metoknlp/g;

    invoke-virtual {v0, v1}, Lcom/xiaomi/metoknlp/b;->a(Lcom/xiaomi/metoknlp/g;)V

    invoke-static {}, Lcom/xiaomi/metoknlp/a;->a()Lcom/xiaomi/metoknlp/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/metoknlp/d;->c()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/metoknlp/c/n;->a()Lcom/xiaomi/metoknlp/c/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/c/n;->d()V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/metoknlp/d;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/metoknlp/d;->b:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/metoknlp/e;

    invoke-direct {v1, p0}, Lcom/xiaomi/metoknlp/e;-><init>(Lcom/xiaomi/metoknlp/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
