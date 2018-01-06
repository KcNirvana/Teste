.class public Lcom/bumptech/glide/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/bumptech/glide/load/b/c;

.field private c:Lcom/bumptech/glide/load/b/a/c;

.field private d:Lcom/bumptech/glide/load/b/b/i;

.field private e:Ljava/util/concurrent/ExecutorService;

.field private f:Ljava/util/concurrent/ExecutorService;

.field private g:Lcom/bumptech/glide/load/a;

.field private h:Lcom/bumptech/glide/load/b/b/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/k;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method a()Lcom/bumptech/glide/j;
    .locals 6

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/bumptech/glide/k;->e:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Lcom/bumptech/glide/load/b/c/a;

    invoke-direct {v1, v0}, Lcom/bumptech/glide/load/b/c/a;-><init>(I)V

    iput-object v1, p0, Lcom/bumptech/glide/k;->e:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/k;->f:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    new-instance v0, Lcom/bumptech/glide/load/b/c/a;

    invoke-direct {v0, v2}, Lcom/bumptech/glide/load/b/c/a;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/k;->f:Ljava/util/concurrent/ExecutorService;

    :cond_1
    new-instance v0, Lcom/bumptech/glide/load/b/b/j;

    iget-object v1, p0, Lcom/bumptech/glide/k;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/b/b/j;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/bumptech/glide/k;->c:Lcom/bumptech/glide/load/b/a/c;

    if-nez v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_7

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/b/j;->b()I

    move-result v1

    new-instance v2, Lcom/bumptech/glide/load/b/a/f;

    invoke-direct {v2, v1}, Lcom/bumptech/glide/load/b/a/f;-><init>(I)V

    iput-object v2, p0, Lcom/bumptech/glide/k;->c:Lcom/bumptech/glide/load/b/a/c;

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/k;->d:Lcom/bumptech/glide/load/b/b/i;

    if-nez v1, :cond_3

    new-instance v1, Lcom/bumptech/glide/load/b/b/h;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/b/j;->a()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/bumptech/glide/load/b/b/h;-><init>(I)V

    iput-object v1, p0, Lcom/bumptech/glide/k;->d:Lcom/bumptech/glide/load/b/b/i;

    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/k;->h:Lcom/bumptech/glide/load/b/b/a$a;

    if-nez v0, :cond_4

    new-instance v0, Lcom/bumptech/glide/load/b/b/f;

    iget-object v1, p0, Lcom/bumptech/glide/k;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/b/b/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bumptech/glide/k;->h:Lcom/bumptech/glide/load/b/b/a$a;

    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/k;->b:Lcom/bumptech/glide/load/b/c;

    if-nez v0, :cond_5

    new-instance v0, Lcom/bumptech/glide/load/b/c;

    iget-object v1, p0, Lcom/bumptech/glide/k;->d:Lcom/bumptech/glide/load/b/b/i;

    iget-object v2, p0, Lcom/bumptech/glide/k;->h:Lcom/bumptech/glide/load/b/b/a$a;

    iget-object v3, p0, Lcom/bumptech/glide/k;->f:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lcom/bumptech/glide/k;->e:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bumptech/glide/load/b/c;-><init>(Lcom/bumptech/glide/load/b/b/i;Lcom/bumptech/glide/load/b/b/a$a;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/bumptech/glide/k;->b:Lcom/bumptech/glide/load/b/c;

    :cond_5
    iget-object v0, p0, Lcom/bumptech/glide/k;->g:Lcom/bumptech/glide/load/a;

    if-nez v0, :cond_6

    sget-object v0, Lcom/bumptech/glide/load/a;->d:Lcom/bumptech/glide/load/a;

    iput-object v0, p0, Lcom/bumptech/glide/k;->g:Lcom/bumptech/glide/load/a;

    :cond_6
    new-instance v0, Lcom/bumptech/glide/j;

    iget-object v1, p0, Lcom/bumptech/glide/k;->b:Lcom/bumptech/glide/load/b/c;

    iget-object v2, p0, Lcom/bumptech/glide/k;->d:Lcom/bumptech/glide/load/b/b/i;

    iget-object v3, p0, Lcom/bumptech/glide/k;->c:Lcom/bumptech/glide/load/b/a/c;

    iget-object v4, p0, Lcom/bumptech/glide/k;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/bumptech/glide/k;->g:Lcom/bumptech/glide/load/a;

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/j;-><init>(Lcom/bumptech/glide/load/b/c;Lcom/bumptech/glide/load/b/b/i;Lcom/bumptech/glide/load/b/a/c;Landroid/content/Context;Lcom/bumptech/glide/load/a;)V

    return-object v0

    :cond_7
    new-instance v1, Lcom/bumptech/glide/load/b/a/d;

    invoke-direct {v1}, Lcom/bumptech/glide/load/b/a/d;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/k;->c:Lcom/bumptech/glide/load/b/a/c;

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/k;
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/k;->g:Lcom/bumptech/glide/load/a;

    return-object p0
.end method
