.class public Lcom/alipay/mobile/common/http/c;
.super Lcom/alipay/mobile/common/common/task/AbsTask;
.source "HttpTask.java"

# interfaces
.implements Lcom/alipay/mobile/common/http/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/http/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alipay/mobile/common/common/task/AbsTask",
        "<TResultType;>;",
        "Lcom/alipay/mobile/common/http/f;"
    }
.end annotation


# static fields
.field static final synthetic a:Z

.field private static final p:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/mobile/common/http/c",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private static final r:Lcom/alipay/mobile/common/common/task/a;

.field private static final s:Lcom/alipay/mobile/common/common/task/a;


# instance fields
.field private b:Lcom/alipay/mobile/common/http/g;

.field private c:Lcom/alipay/mobile/common/http/d/b;

.field private d:Lcom/alipay/mobile/common/http/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/common/http/c",
            "<TResultType;>.a;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/Executor;

.field private volatile f:Z

.field private final g:Lcom/alipay/mobile/common/common/Callback$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/common/common/Callback$c",
            "<TResultType;>;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Object;

.field private volatile i:Ljava/lang/Boolean;

.field private final j:Ljava/lang/Object;

.field private k:Lcom/alipay/mobile/common/common/Callback$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/common/common/Callback$a",
            "<TResultType;>;"
        }
    .end annotation
.end field

.field private l:Lcom/alipay/mobile/common/common/Callback$d;

.field private m:Lcom/alipay/mobile/common/common/Callback$e;

.field private n:Lcom/alipay/mobile/common/http/a/f;

.field private o:Ljava/lang/reflect/Type;

.field private t:J

.field private u:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-class v0, Lcom/alipay/mobile/common/http/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/alipay/mobile/common/http/c;->a:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/alipay/mobile/common/http/c;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/alipay/mobile/common/http/c;->q:Ljava/util/HashMap;

    new-instance v0, Lcom/alipay/mobile/common/common/task/a;

    invoke-direct {v0, v3, v1}, Lcom/alipay/mobile/common/common/task/a;-><init>(IZ)V

    sput-object v0, Lcom/alipay/mobile/common/http/c;->r:Lcom/alipay/mobile/common/common/task/a;

    new-instance v0, Lcom/alipay/mobile/common/common/task/a;

    invoke-direct {v0, v3, v1}, Lcom/alipay/mobile/common/common/task/a;-><init>(IZ)V

    sput-object v0, Lcom/alipay/mobile/common/http/c;->s:Lcom/alipay/mobile/common/common/task/a;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/http/g;Lcom/alipay/mobile/common/common/Callback$b;Lcom/alipay/mobile/common/common/Callback$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/http/g;",
            "Lcom/alipay/mobile/common/common/Callback$b;",
            "Lcom/alipay/mobile/common/common/Callback$c",
            "<TResultType;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/common/task/AbsTask;-><init>(Lcom/alipay/mobile/common/common/Callback$b;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/http/c;->f:Z

    iput-object v1, p0, Lcom/alipay/mobile/common/http/c;->h:Ljava/lang/Object;

    iput-object v1, p0, Lcom/alipay/mobile/common/http/c;->i:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/http/c;->j:Ljava/lang/Object;

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/alipay/mobile/common/http/c;->u:J

    sget-boolean v0, Lcom/alipay/mobile/common/http/c;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/alipay/mobile/common/http/c;->a:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/alipay/mobile/common/http/c;->b:Lcom/alipay/mobile/common/http/g;

    iput-object p3, p0, Lcom/alipay/mobile/common/http/c;->g:Lcom/alipay/mobile/common/common/Callback$c;

    instance-of v0, p3, Lcom/alipay/mobile/common/common/Callback$a;

    if-eqz v0, :cond_2

    move-object v0, p3

    check-cast v0, Lcom/alipay/mobile/common/common/Callback$a;

    iput-object v0, p0, Lcom/alipay/mobile/common/http/c;->k:Lcom/alipay/mobile/common/common/Callback$a;

    :cond_2
    instance-of v0, p3, Lcom/alipay/mobile/common/common/Callback$d;

    if-eqz v0, :cond_3

    move-object v0, p3

    check-cast v0, Lcom/alipay/mobile/common/common/Callback$d;

    iput-object v0, p0, Lcom/alipay/mobile/common/http/c;->l:Lcom/alipay/mobile/common/common/Callback$d;

    :cond_3
    instance-of v0, p3, Lcom/alipay/mobile/common/common/Callback$e;

    if-eqz v0, :cond_4

    move-object v0, p3

    check-cast v0, Lcom/alipay/mobile/common/common/Callback$e;

    iput-object v0, p0, Lcom/alipay/mobile/common/http/c;->m:Lcom/alipay/mobile/common/common/Callback$e;

    :cond_4
    instance-of v0, p3, Lcom/alipay/mobile/common/http/a/f;

    if-eqz v0, :cond_5

    check-cast p3, Lcom/alipay/mobile/common/http/a/f;

    iput-object p3, p0, Lcom/alipay/mobile/common/http/c;->n:Lcom/alipay/mobile/common/http/a/f;

    :cond_5
    invoke-virtual {p1}, Lcom/alipay/mobile/common/http/g;->q()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/alipay/mobile/common/http/g;->q()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/http/c;->e:Ljava/util/concurrent/Executor;

    :goto_0
    return-void

    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->k:Lcom/alipay/mobile/common/common/Callback$a;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/alipay/mobile/common/http/c;->s:Lcom/alipay/mobile/common/common/task/a;

    iput-object v0, p0, Lcom/alipay/mobile/common/http/c;->e:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/alipay/mobile/common/http/c;->r:Lcom/alipay/mobile/common/common/task/a;

    iput-object v0, p0, Lcom/alipay/mobile/common/http/c;->e:Ljava/util/concurrent/Executor;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/common/http/c;Lcom/alipay/mobile/common/http/d/b;)Lcom/alipay/mobile/common/http/d/b;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/http/c;->c:Lcom/alipay/mobile/common/http/d/b;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/mobile/common/http/c;Lcom/alipay/mobile/common/http/g;)Lcom/alipay/mobile/common/http/g;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/http/c;->b:Lcom/alipay/mobile/common/http/g;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/mobile/common/http/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/common/http/c;->q()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/common/http/c;)Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->o:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/common/http/c;)Lcom/alipay/mobile/common/http/a/f;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->n:Lcom/alipay/mobile/common/http/a/f;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/common/http/c;)Lcom/alipay/mobile/common/http/d/b;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->c:Lcom/alipay/mobile/common/http/d/b;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/common/http/c;)Lcom/alipay/mobile/common/http/g;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->b:Lcom/alipay/mobile/common/http/g;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/common/http/c;)Lcom/alipay/mobile/common/http/d/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-direct {p0}, Lcom/alipay/mobile/common/http/c;->n()Lcom/alipay/mobile/common/http/d/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/http/c;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private m()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->g:Lcom/alipay/mobile/common/common/Callback$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/http/c;->g:Lcom/alipay/mobile/common/common/Callback$c;

    instance-of v1, v1, Lcom/alipay/mobile/common/common/Callback$g;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->g:Lcom/alipay/mobile/common/common/Callback$c;

    check-cast v0, Lcom/alipay/mobile/common/common/Callback$g;

    invoke-interface {v0}, Lcom/alipay/mobile/common/common/Callback$g;->e()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/http/c;->o:Ljava/lang/reflect/Type;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/http/c;->g:Lcom/alipay/mobile/common/common/Callback$c;

    instance-of v1, v1, Lcom/alipay/mobile/common/common/Callback$d;

    if-eqz v1, :cond_1

    const-class v1, Lcom/alipay/mobile/common/common/Callback$d;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/common/a/g;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/http/c;->o:Ljava/lang/reflect/Type;

    goto :goto_0

    :cond_1
    const-class v1, Lcom/alipay/mobile/common/common/Callback$c;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/common/a/g;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/http/c;->o:Ljava/lang/reflect/Type;

    goto :goto_0
.end method

.method private n()Lcom/alipay/mobile/common/http/d/b;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->b:Lcom/alipay/mobile/common/http/g;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/http/g;->f()V

    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->b:Lcom/alipay/mobile/common/http/g;

    iget-object v1, p0, Lcom/alipay/mobile/common/http/c;->o:Ljava/lang/reflect/Type;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/http/d/d;->a(Lcom/alipay/mobile/common/http/g;Ljava/lang/reflect/Type;)Lcom/alipay/mobile/common/http/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/http/c;->g:Lcom/alipay/mobile/common/common/Callback$c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/http/d/b;->a(Ljava/lang/ClassLoader;)V

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/http/d/b;->a(Lcom/alipay/mobile/common/http/f;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/http/c;->b:Lcom/alipay/mobile/common/http/g;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/http/g;->w()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/alipay/mobile/common/http/c;->u:J

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v4, v1}, Lcom/alipay/mobile/common/http/c;->b(I[Ljava/lang/Object;)V

    return-object v0
.end method

.method private o()V
    .locals 4

    const-class v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/common/http/c;->o:Ljava/lang/reflect/Type;

    if-ne v0, v1, :cond_6

    sget-object v1, Lcom/alipay/mobile/common/http/c;->q:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->b:Lcom/alipay/mobile/common/http/g;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/http/g;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/alipay/mobile/common/http/c;->q:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/http/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/http/c;->b()V

    invoke-direct {v0}, Lcom/alipay/mobile/common/http/c;->q()V

    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/http/c;->q:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v0, Lcom/alipay/mobile/common/http/c;->q:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v0, Lcom/alipay/mobile/common/http/c;->q:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_5

    sget-object v0, Lcom/alipay/mobile/common/http/c;->q:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    return-void
.end method

.method private p()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->h:Ljava/lang/Object;

    instance-of v0, v0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->h:Ljava/lang/Object;

    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0}, Lcom/alipay/mobile/common/common/a/d;->a(Ljava/io/Closeable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/http/c;->h:Ljava/lang/Object;

    return-void
.end method

.method private q()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/common/http/c;->p()V

    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->c:Lcom/alipay/mobile/common/http/d/b;

    invoke-static {v0}, Lcom/alipay/mobile/common/common/a/d;->a(Ljava/io/Closeable;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/http/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/common/common/Callback$CancelledException;

    const-string/jumbo v1, "cancelled before request"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/http/c;->m()V

    invoke-direct {p0}, Lcom/alipay/mobile/common/http/c;->n()Lcom/alipay/mobile/common/http/d/b;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/http/c;->c:Lcom/alipay/mobile/common/http/d/b;

    invoke-direct {p0}, Lcom/alipay/mobile/common/http/c;->o()V

    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->b:Lcom/alipay/mobile/common/http/g;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/http/g;->x()Lcom/alipay/mobile/common/http/a/c;

    move-result-object v0

    if-nez v0, :cond_16

    new-instance v0, Lcom/alipay/mobile/common/http/a/c;

    invoke-direct {v0}, Lcom/alipay/mobile/common/http/a/c;-><init>()V

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->b:Lcom/alipay/mobile/common/http/g;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/http/g;->u()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/http/a/c;->a(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/http/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/alipay/mobile/common/common/Callback$CancelledException;

    const-string/jumbo v1, "cancelled before request"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->k:Lcom/alipay/mobile/common/common/Callback$a;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->b:Lcom/alipay/mobile/common/http/g;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/http/g;->b()Lcom/alipay/mobile/common/http/HttpMethod;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/http/HttpMethod;->permitsCache(Lcom/alipay/mobile/common/http/HttpMethod;)Z

    move-result v0

    if-eqz v0, :cond_7

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/http/c;->p()V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v3, "HttpTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "load cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/common/http/c;->c:Lcom/alipay/mobile/common/http/d/b;

    invoke-virtual {v5}, Lcom/alipay/mobile/common/http/d/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->c:Lcom/alipay/mobile/common/http/d/b;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/http/d/b;->f()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/http/c;->h:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/http/c;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/alipay/mobile/common/http/c;->p()V

    new-instance v0, Lcom/alipay/mobile/common/common/Callback$CancelledException;

    const-string/jumbo v1, "cancelled before request"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v3

    const-string/jumbo v4, "HttpTask"

    const-string/jumbo v5, "load disk cache error"

    invoke-interface {v3, v4, v5, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->h:Ljava/lang/Object;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->l:Lcom/alipay/mobile/common/common/Callback$d;

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->l:Lcom/alipay/mobile/common/common/Callback$d;

    iget-object v3, p0, Lcom/alipay/mobile/common/http/c;->h:Ljava/lang/Object;

    invoke-interface {v0, v3}, Lcom/alipay/mobile/common/common/Callback$d;->c(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/mobile/common/http/c;->p()V

    :goto_2
    invoke-virtual {p0}, Lcom/alipay/mobile/common/http/c;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v0, Lcom/alipay/mobile/common/common/Callback$CancelledException;

    const-string/jumbo v1, "cancelled before request"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v3

    const-string/jumbo v4, "HttpTask"

    const-string/jumbo v5, "prepare disk cache error"

    invoke-interface {v3, v4, v5, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0}, Lcom/alipay/mobile/common/http/c;->p()V

    move-object v0, v2

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/mobile/common/http/c;->p()V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->h:Ljava/lang/Object;

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_8

    const/4 v3, 0x2

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobile/common/http/c;->b(I[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/http/c;->j:Ljava/lang/Object;

    monitor-enter v3

    :goto_3
    :try_start_3
    iget-object v4, p0, Lcom/alipay/mobile/common/http/c;->i:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v4, :cond_5

    :try_start_4
    iget-object v4, p0, Lcom/alipay/mobile/common/http/c;->j:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_5
    new-instance v0, Lcom/alipay/mobile/common/common/Callback$CancelledException;

    const-string/jumbo v1, "cancelled before request"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_5
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    iget-object v3, p0, Lcom/alipay/mobile/common/http/c;->i:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_6
    :goto_4
    :sswitch_0
    return-object v2

    :cond_7
    move-object v0, v2

    :cond_8
    iget-object v3, p0, Lcom/alipay/mobile/common/http/c;->i:Ljava/lang/Boolean;

    if-nez v3, :cond_9

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/common/http/c;->i:Ljava/lang/Boolean;

    :cond_9
    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->c:Lcom/alipay/mobile/common/http/d/b;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/http/d/b;->g()V

    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->g:Lcom/alipay/mobile/common/common/Callback$c;

    instance-of v0, v0, Lcom/alipay/mobile/common/common/Callback$f;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->g:Lcom/alipay/mobile/common/common/Callback$c;

    check-cast v0, Lcom/alipay/mobile/common/common/Callback$f;

    invoke-interface {v0}, Lcom/alipay/mobile/common/common/Callback$f;->b()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_b
    move-object v4, v2

    move v5, v6

    move v3, v7

    move-object v0, v2

    :goto_5
    if-eqz v3, :cond_14

    :try_start_7
    invoke-virtual {p0}, Lcom/alipay/mobile/common/http/c;->c()Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v3, Lcom/alipay/mobile/common/common/Callback$CancelledException;

    const-string/jumbo v8, "cancelled before request"

    invoke-direct {v3, v8}, Lcom/alipay/mobile/common/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_7
    .catch Lcom/alipay/mobile/common/ex/HttpRedirectException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    :catch_3
    move-exception v3

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v3

    const-string/jumbo v8, "HttpTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Http Redirect:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/alipay/mobile/common/http/c;->b:Lcom/alipay/mobile/common/http/g;

    invoke-virtual {v10}, Lcom/alipay/mobile/common/http/g;->g()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Lcom/alipay/android/phone/inside/log/api/c/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v7

    goto :goto_5

    :cond_c
    :try_start_8
    iget-object v3, p0, Lcom/alipay/mobile/common/http/c;->c:Lcom/alipay/mobile/common/http/d/b;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/http/d/b;->close()V
    :try_end_8
    .catch Lcom/alipay/mobile/common/ex/HttpRedirectException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    :try_start_9
    invoke-direct {p0}, Lcom/alipay/mobile/common/http/c;->p()V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v3

    const-string/jumbo v8, "HttpTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "load: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/alipay/mobile/common/http/c;->c:Lcom/alipay/mobile/common/http/d/b;

    invoke-virtual {v10}, Lcom/alipay/mobile/common/http/d/b;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/alipay/mobile/common/http/c$a;

    const/4 v8, 0x0

    invoke-direct {v3, p0, v8}, Lcom/alipay/mobile/common/http/c$a;-><init>(Lcom/alipay/mobile/common/http/c;Lcom/alipay/mobile/common/http/d;)V

    iput-object v3, p0, Lcom/alipay/mobile/common/http/c;->d:Lcom/alipay/mobile/common/http/c$a;

    iget-object v3, p0, Lcom/alipay/mobile/common/http/c;->d:Lcom/alipay/mobile/common/http/c$a;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/http/c$a;->a()V

    iget-object v3, p0, Lcom/alipay/mobile/common/http/c;->d:Lcom/alipay/mobile/common/http/c$a;

    iget-object v3, v3, Lcom/alipay/mobile/common/http/c$a;->b:Ljava/lang/Throwable;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/alipay/mobile/common/http/c;->d:Lcom/alipay/mobile/common/http/c$a;

    iget-object v3, v3, Lcom/alipay/mobile/common/http/c$a;->b:Ljava/lang/Throwable;

    throw v3
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lcom/alipay/mobile/common/ex/HttpRedirectException; {:try_start_9 .. :try_end_9} :catch_3

    :catch_4
    move-exception v3

    :try_start_a
    invoke-direct {p0}, Lcom/alipay/mobile/common/http/c;->p()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/http/c;->c()Z

    move-result v8

    if-eqz v8, :cond_f

    new-instance v3, Lcom/alipay/mobile/common/common/Callback$CancelledException;

    const-string/jumbo v8, "cancelled during request"

    invoke-direct {v3, v8}, Lcom/alipay/mobile/common/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_a
    .catch Lcom/alipay/mobile/common/ex/HttpRedirectException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5

    :catch_5
    move-exception v3

    move-object v11, v3

    move-object v3, v0

    move-object v0, v11

    iget-object v4, p0, Lcom/alipay/mobile/common/http/c;->c:Lcom/alipay/mobile/common/http/d/b;

    invoke-virtual {v4}, Lcom/alipay/mobile/common/http/d/b;->j()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/http/c;->c()Z

    move-result v4

    if-eqz v4, :cond_d

    instance-of v4, v0, Lcom/alipay/mobile/common/common/Callback$CancelledException;

    if-nez v4, :cond_d

    new-instance v0, Lcom/alipay/mobile/common/common/Callback$CancelledException;

    const-string/jumbo v4, "canceled by user"

    invoke-direct {v0, v4}, Lcom/alipay/mobile/common/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    :cond_d
    iget-object v8, p0, Lcom/alipay/mobile/common/http/c;->c:Lcom/alipay/mobile/common/http/d/b;

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v1, v8, v0, v4}, Lcom/alipay/mobile/common/http/a/c;->a(Lcom/alipay/mobile/common/http/d/b;Ljava/lang/Throwable;I)Z

    move-result v5

    move-object v11, v0

    move-object v0, v3

    move v3, v5

    move v5, v4

    move-object v4, v11

    goto/16 :goto_5

    :cond_e
    :try_start_b
    iget-object v3, p0, Lcom/alipay/mobile/common/http/c;->d:Lcom/alipay/mobile/common/http/c$a;

    iget-object v3, v3, Lcom/alipay/mobile/common/http/c$a;->a:Ljava/lang/Object;

    iput-object v3, p0, Lcom/alipay/mobile/common/http/c;->h:Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catch Lcom/alipay/mobile/common/ex/HttpRedirectException; {:try_start_b .. :try_end_b} :catch_3

    :try_start_c
    iget-object v3, p0, Lcom/alipay/mobile/common/http/c;->l:Lcom/alipay/mobile/common/common/Callback$d;

    if-eqz v3, :cond_12

    invoke-virtual {p0}, Lcom/alipay/mobile/common/http/c;->c()Z

    move-result v3

    if-eqz v3, :cond_10

    new-instance v3, Lcom/alipay/mobile/common/common/Callback$CancelledException;

    const-string/jumbo v8, "cancelled before request"

    invoke-direct {v3, v8}, Lcom/alipay/mobile/common/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_f
    throw v3
    :try_end_c
    .catch Lcom/alipay/mobile/common/ex/HttpRedirectException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    :cond_10
    :try_start_d
    iget-object v3, p0, Lcom/alipay/mobile/common/http/c;->l:Lcom/alipay/mobile/common/common/Callback$d;

    iget-object v8, p0, Lcom/alipay/mobile/common/http/c;->h:Ljava/lang/Object;

    invoke-interface {v3, v8}, Lcom/alipay/mobile/common/common/Callback$d;->c(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-result-object v0

    :try_start_e
    invoke-direct {p0}, Lcom/alipay/mobile/common/http/c;->p()V

    :goto_6
    iget-object v3, p0, Lcom/alipay/mobile/common/http/c;->k:Lcom/alipay/mobile/common/common/Callback$a;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/alipay/mobile/common/http/c;->b:Lcom/alipay/mobile/common/http/g;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/http/g;->b()Lcom/alipay/mobile/common/http/HttpMethod;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/common/http/HttpMethod;->permitsCache(Lcom/alipay/mobile/common/http/HttpMethod;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/alipay/mobile/common/http/c;->c:Lcom/alipay/mobile/common/http/d/b;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/http/d/b;->p()V

    :cond_11
    invoke-virtual {p0}, Lcom/alipay/mobile/common/http/c;->c()Z

    move-result v3

    if-eqz v3, :cond_13

    new-instance v3, Lcom/alipay/mobile/common/common/Callback$CancelledException;

    const-string/jumbo v8, "cancelled after request"

    invoke-direct {v3, v8}, Lcom/alipay/mobile/common/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_2
    move-exception v3

    invoke-direct {p0}, Lcom/alipay/mobile/common/http/c;->p()V

    throw v3

    :cond_12
    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->h:Ljava/lang/Object;
    :try_end_e
    .catch Lcom/alipay/mobile/common/ex/HttpRedirectException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_6

    :cond_13
    move v3, v6

    goto/16 :goto_5

    :cond_14
    if-eqz v4, :cond_15

    if-nez v0, :cond_15

    iget-object v1, p0, Lcom/alipay/mobile/common/http/c;->i:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_15

    iput-boolean v7, p0, Lcom/alipay/mobile/common/http/c;->f:Z

    throw v4

    :cond_15
    move-object v2, v0

    goto/16 :goto_4

    :catch_6
    move-exception v4

    goto/16 :goto_3

    :cond_16
    move-object v1, v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xcc -> :sswitch_0
        0xcd -> :sswitch_0
        0x130 -> :sswitch_0
    .end sparse-switch
.end method

.method protected varargs a(I[Ljava/lang/Object;)V
    .locals 8

    const/4 v7, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/alipay/mobile/common/http/c;->j:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p2, v0

    iget-object v2, p0, Lcom/alipay/mobile/common/http/c;->k:Lcom/alipay/mobile/common/common/Callback$a;

    invoke-interface {v2, v0}, Lcom/alipay/mobile/common/common/Callback$a;->b(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/http/c;->i:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->j:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    :try_start_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/common/http/c;->i:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/alipay/mobile/common/http/c;->g:Lcom/alipay/mobile/common/common/Callback$c;

    const/4 v3, 0x1

    invoke-interface {v2, v0, v3}, Lcom/alipay/mobile/common/common/Callback$c;->a(Ljava/lang/Throwable;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->j:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_1

    :catchall_1
    move-exception v0

    iget-object v2, p0, Lcom/alipay/mobile/common/http/c;->j:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :pswitch_2
    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->m:Lcom/alipay/mobile/common/common/Callback$e;

    if-eqz v0, :cond_0

    array-length v0, p2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :try_start_4
    iget-object v1, p0, Lcom/alipay/mobile/common/http/c;->m:Lcom/alipay/mobile/common/common/Callback$e;

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const/4 v0, 0x1

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const/4 v0, 0x2

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface/range {v1 .. v6}, Lcom/alipay/mobile/common/common/Callback$e;->a(JJZ)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/common/http/c;->g:Lcom/alipay/mobile/common/common/Callback$c;

    invoke-interface {v1, v0, v7}, Lcom/alipay/mobile/common/common/Callback$c;->a(Ljava/lang/Throwable;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected a(Lcom/alipay/mobile/common/common/Callback$CancelledException;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->g:Lcom/alipay/mobile/common/common/Callback$c;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/common/Callback$c;->a(Lcom/alipay/mobile/common/common/Callback$CancelledException;)V

    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/alipay/mobile/common/http/c;->f:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->g:Lcom/alipay/mobile/common/common/Callback$c;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/common/Callback$c;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/Throwable;Z)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->g:Lcom/alipay/mobile/common/common/Callback$c;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/common/common/Callback$c;->a(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public a(JJZ)Z
    .locals 11

    const/4 v9, 0x2

    const/4 v0, 0x1

    const/4 v8, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/http/c;->c()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/http/c;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/common/http/c;->m:Lcom/alipay/mobile/common/common/Callback$e;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/alipay/mobile/common/http/c;->c:Lcom/alipay/mobile/common/http/d/b;

    if-eqz v2, :cond_4

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_4

    cmp-long v2, p1, p3

    if-gez v2, :cond_3

    move-wide p1, p3

    :cond_3
    if-eqz p5, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/mobile/common/http/c;->t:J

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v3, p0, Lcom/alipay/mobile/common/http/c;->c:Lcom/alipay/mobile/common/http/d/b;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/http/d/b;->c()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-virtual {p0, v8, v2}, Lcom/alipay/mobile/common/http/c;->b(I[Ljava/lang/Object;)V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/http/c;->c()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/alipay/mobile/common/http/c;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alipay/mobile/common/http/c;->t:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/alipay/mobile/common/http/c;->u:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_4

    iput-wide v2, p0, Lcom/alipay/mobile/common/http/c;->t:J

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v3, p0, Lcom/alipay/mobile/common/http/c;->c:Lcom/alipay/mobile/common/http/d/b;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/http/d/b;->c()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-virtual {p0, v8, v2}, Lcom/alipay/mobile/common/http/c;->b(I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method protected e()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->m:Lcom/alipay/mobile/common/common/Callback$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->m:Lcom/alipay/mobile/common/common/Callback$e;

    invoke-interface {v0}, Lcom/alipay/mobile/common/common/Callback$e;->d()V

    :cond_0
    return-void
.end method

.method protected f()V
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/common/Sdk;->c()Lcom/alipay/mobile/common/common/a;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/http/d;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/http/d;-><init>(Lcom/alipay/mobile/common/http/c;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/common/a;->b(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->g:Lcom/alipay/mobile/common/common/Callback$c;

    invoke-interface {v0}, Lcom/alipay/mobile/common/common/Callback$c;->a()V

    return-void
.end method

.method public g()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->e:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method protected h()V
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/common/Sdk;->c()Lcom/alipay/mobile/common/common/a;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/http/e;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/http/e;-><init>(Lcom/alipay/mobile/common/http/c;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/common/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected i()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->b:Lcom/alipay/mobile/common/http/g;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/http/g;->v()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/http/c;->b:Lcom/alipay/mobile/common/http/g;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/http/g;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
