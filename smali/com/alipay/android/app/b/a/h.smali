.class public Lcom/alipay/android/app/b/a/h;
.super Ljava/lang/Object;
.source "MsgSubject.java"

# interfaces
.implements Lcom/alipay/android/app/b/a/f;


# static fields
.field private static b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static c:Lcom/alipay/android/app/b/a/h;


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alipay/android/app/b/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/alipay/android/app/b/a/h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/b/a/h;->a:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/b/a/h;->d:Ljava/lang/Object;

    new-instance v0, Lcom/alipay/android/app/b/a;

    invoke-direct {v0}, Lcom/alipay/android/app/b/a;-><init>()V

    new-instance v1, Lcom/alipay/android/app/b/a/g;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/b/a/g;-><init>(Lcom/alipay/android/app/b/a/d;)V

    new-instance v0, Lcom/alipay/android/app/b/a/a;

    const/16 v2, 0xe

    invoke-direct {v0, v2, v1}, Lcom/alipay/android/app/b/a/a;-><init>(ILcom/alipay/android/app/b/a/g;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/b/a/h;->a(Lcom/alipay/android/app/b/a/e;)V

    new-instance v0, Lcom/alipay/android/app/b/a/b;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/alipay/android/app/b/a/b;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/b/a/h;->a(Lcom/alipay/android/app/b/a/e;)V

    new-instance v0, Lcom/alipay/android/app/logic/a;

    invoke-direct {v0}, Lcom/alipay/android/app/logic/a;-><init>()V

    new-instance v1, Lcom/alipay/android/app/b/a/g;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/b/a/g;-><init>(Lcom/alipay/android/app/b/a/d;)V

    new-instance v0, Lcom/alipay/android/app/b/a/a;

    const/16 v2, 0xb

    invoke-direct {v0, v2, v1}, Lcom/alipay/android/app/b/a/a;-><init>(ILcom/alipay/android/app/b/a/g;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/b/a/h;->a(Lcom/alipay/android/app/b/a/e;)V

    new-instance v0, Lcom/alipay/android/app/b/a/a;

    const/16 v2, 0xd

    invoke-direct {v0, v2, v1}, Lcom/alipay/android/app/b/a/a;-><init>(ILcom/alipay/android/app/b/a/g;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/b/a/h;->a(Lcom/alipay/android/app/b/a/e;)V

    new-instance v0, Lcom/alipay/android/app/source/b;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/alipay/android/app/source/b;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/b/a/h;->a(Lcom/alipay/android/app/b/a/e;)V

    new-instance v0, Lcom/alipay/android/app/flybird/ui/FlyBirdUiMessageHandlerAdapter;

    invoke-direct {v0}, Lcom/alipay/android/app/flybird/ui/FlyBirdUiMessageHandlerAdapter;-><init>()V

    new-instance v1, Lcom/alipay/android/app/b/a/g;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/b/a/g;-><init>(Lcom/alipay/android/app/b/a/d;)V

    new-instance v0, Lcom/alipay/android/app/b/a/a;

    const/16 v2, 0x10

    invoke-direct {v0, v2, v1}, Lcom/alipay/android/app/b/a/a;-><init>(ILcom/alipay/android/app/b/a/g;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/b/a/h;->a(Lcom/alipay/android/app/b/a/e;)V

    const/4 v0, 0x1

    const-string/jumbo v1, "phonecashiermsp"

    const-string/jumbo v2, "MsgSubject.MsgSubject"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  MsgSubject registerObserver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/app/b/a/h;->b()V

    return-void
.end method

.method public static a()Lcom/alipay/android/app/b/a/h;
    .locals 2

    sget-object v1, Lcom/alipay/android/app/b/a/h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/b/a/h;->c:Lcom/alipay/android/app/b/a/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/b/a/h;

    invoke-direct {v0}, Lcom/alipay/android/app/b/a/h;-><init>()V

    sput-object v0, Lcom/alipay/android/app/b/a/h;->c:Lcom/alipay/android/app/b/a/h;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/alipay/android/app/b/a/h;->c:Lcom/alipay/android/app/b/a/h;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b()V
    .locals 2

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/alipay/android/app/b/a/e;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/b/a/h;->a:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/alipay/android/app/b/a/e;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method protected a(Lcom/alipay/android/app/b/a/j;)V
    .locals 6

    iget-object v1, p0, Lcom/alipay/android/app/b/a/h;->d:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x4

    :try_start_0
    const-string/jumbo v2, "phonecashiermsp"

    const-string/jumbo v3, "MsgSubject.handleMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " handleMessage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/alipay/android/app/b/a/j;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/b/a/h;->a:Landroid/util/SparseArray;

    iget v2, p1, Lcom/alipay/android/app/b/a/j;->b:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/b/a/e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/alipay/android/app/b/a/e;->a(Lcom/alipay/android/app/b/a/f;Lcom/alipay/android/app/b/a/j;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/alipay/android/app/b/a/j;I)V
    .locals 4

    new-instance v0, Lcom/alipay/android/app/b/a/j;

    invoke-direct {v0}, Lcom/alipay/android/app/b/a/j;-><init>()V

    iget v1, p1, Lcom/alipay/android/app/b/a/j;->a:I

    iput v1, v0, Lcom/alipay/android/app/b/a/j;->a:I

    const/16 v1, 0xf

    iput v1, v0, Lcom/alipay/android/app/b/a/j;->b:I

    const/16 v1, 0x3fb

    iput v1, v0, Lcom/alipay/android/app/b/a/j;->c:I

    int-to-long v2, p2

    iput-wide v2, v0, Lcom/alipay/android/app/b/a/j;->e:J

    iput-object p1, v0, Lcom/alipay/android/app/b/a/j;->d:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/b/a/h;->b(Lcom/alipay/android/app/b/a/j;)V

    return-void
.end method

.method public b(Lcom/alipay/android/app/b/a/j;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/b/a/h;->a:Landroid/util/SparseArray;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/b/a/e;

    instance-of v1, v0, Lcom/alipay/android/app/b/a/b;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/alipay/android/app/b/a/b;

    new-instance v1, Lcom/alipay/android/app/b/a/i;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/b/a/i;-><init>(Lcom/alipay/android/app/b/a/h;Lcom/alipay/android/app/b/a/j;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/b/a/b;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
