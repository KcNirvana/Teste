.class Lcom/xiaomi/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/a/e$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/xiaomi/a/a/b/a;

.field private static b:Ljava/lang/String;

.field private static c:Landroid/content/Context;

.field private static d:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/xiaomi/a/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Lcom/xiaomi/a/a/d$a;


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/xiaomi/a/e;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lcom/xiaomi/a/f;

    invoke-direct {v0}, Lcom/xiaomi/a/f;-><init>()V

    sput-object v0, Lcom/xiaomi/a/e;->g:Lcom/xiaomi/a/a/d$a;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/a/e;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/a/e;->f:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/a/e;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Do you forget to do Logger.init ?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/a/e;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/a/a/b/a;)Lcom/xiaomi/a/a/b/a;
    .locals 0

    sput-object p0, Lcom/xiaomi/a/e;->a:Lcom/xiaomi/a/a/b/a;

    return-object p0
.end method

.method static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/a/e;->b()V

    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    const-class v1, Lcom/xiaomi/a/e;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/a/a/a/b;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/a/e;->c:Landroid/content/Context;

    sget-object v0, Lcom/xiaomi/a/e;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/a/e;->b:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/a/e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Context is not a application context."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/a/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/a/a/d;->a(Landroid/content/Context;)Lcom/xiaomi/a/a/d;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/a/e;->g:Lcom/xiaomi/a/a/d$a;

    invoke-virtual {v0, v2}, Lcom/xiaomi/a/a/d;->a(Lcom/xiaomi/a/a/d$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void
.end method

.method private static b()V
    .locals 7

    sget-object v0, Lcom/xiaomi/a/e;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lcom/xiaomi/a/e;->a:Lcom/xiaomi/a/a/b/a;

    if-eqz v0, :cond_2

    const-string v0, "BaseLogger"

    const-string v1, "drainPendingEvents "

    invoke-static {v0, v1}, Lcom/xiaomi/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    sget-object v0, Lcom/xiaomi/a/e;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/xiaomi/a/e;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/a/e$a;

    iget-object v1, v0, Lcom/xiaomi/a/e$a;->d:Lcom/xiaomi/a/i;

    iget-object v3, v0, Lcom/xiaomi/a/e$a;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/xiaomi/a/e$a;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/xiaomi/a/e$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v0}, Lcom/xiaomi/a/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/16 v3, 0x64

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    const-string v0, "BaseLogger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trackEvents "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/xiaomi/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/xiaomi/a/e;->a:Lcom/xiaomi/a/a/b/a;

    const-class v0, Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/xiaomi/a/a/a/o;->a(Ljava/util/List;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-interface {v5, v0}, Lcom/xiaomi/a/a/b/a;->a([Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method protected a(Lcom/xiaomi/a/i;)V
    .locals 5

    if-eqz p1, :cond_0

    sget-object v0, Lcom/xiaomi/a/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/a/a/d;->a(Landroid/content/Context;)Lcom/xiaomi/a/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/a/a/d;->a()Lcom/xiaomi/a/a/b/a;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/a/e;->a:Lcom/xiaomi/a/a/b/a;

    sget-object v0, Lcom/xiaomi/a/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/a/a/d;->a(Landroid/content/Context;)Lcom/xiaomi/a/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/a/a/d;->b()V

    sget-object v0, Lcom/xiaomi/a/e;->a:Lcom/xiaomi/a/a/b/a;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/a/e;->a:Lcom/xiaomi/a/a/b/a;

    sget-object v1, Lcom/xiaomi/a/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/a/e;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/a/e;->e:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v3}, Lcom/xiaomi/a/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/a/a/b/a;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/xiaomi/a/e;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/xiaomi/a/e$a;

    sget-object v2, Lcom/xiaomi/a/e;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/a/e;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/a/e;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/xiaomi/a/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/a/i;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method
