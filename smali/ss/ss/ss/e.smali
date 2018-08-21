.class public final Lss/ss/ss/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lss/ss/ss/e$c;,
        Lss/ss/ss/e$a;,
        Lss/ss/ss/e$b;
    }
.end annotation


# static fields
.field static final synthetic d:Z


# instance fields
.field a:J

.field b:J

.field final c:Lss/ss/ss/e$a;

.field private final e:I

.field private final f:Lss/ss/ss/d;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/f;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/f;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lss/ss/ss/e$b;

.field private final j:Lss/ss/ss/e$c;

.field private final k:Lss/ss/ss/e$c;

.field private l:Lss/ss/ss/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lss/ss/ss/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lss/ss/ss/e;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(ILss/ss/ss/d;ZZLjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lss/ss/ss/d;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/f;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/high16 v2, 0x10000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lss/ss/ss/e;->a:J

    new-instance v0, Lss/ss/ss/e$c;

    invoke-direct {v0, p0}, Lss/ss/ss/e$c;-><init>(Lss/ss/ss/e;)V

    iput-object v0, p0, Lss/ss/ss/e;->j:Lss/ss/ss/e$c;

    new-instance v0, Lss/ss/ss/e$c;

    invoke-direct {v0, p0}, Lss/ss/ss/e$c;-><init>(Lss/ss/ss/e;)V

    iput-object v0, p0, Lss/ss/ss/e;->k:Lss/ss/ss/e$c;

    iput-object v4, p0, Lss/ss/ss/e;->l:Lss/ss/ss/a;

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "connection == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p5, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "requestHeaders == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lss/ss/ss/e;->e:I

    iput-object p2, p0, Lss/ss/ss/e;->f:Lss/ss/ss/d;

    iget-object v0, p2, Lss/ss/ss/d;->f:Lss/ss/ss/n;

    invoke-virtual {v0, v2}, Lss/ss/ss/n;->f(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lss/ss/ss/e;->b:J

    new-instance v0, Lss/ss/ss/e$b;

    iget-object v1, p2, Lss/ss/ss/d;->e:Lss/ss/ss/n;

    invoke-virtual {v1, v2}, Lss/ss/ss/n;->f(I)I

    move-result v1

    int-to-long v2, v1

    invoke-direct {v0, p0, v2, v3, v4}, Lss/ss/ss/e$b;-><init>(Lss/ss/ss/e;JLss/ss/ss/e$1;)V

    iput-object v0, p0, Lss/ss/ss/e;->i:Lss/ss/ss/e$b;

    new-instance v0, Lss/ss/ss/e$a;

    invoke-direct {v0, p0}, Lss/ss/ss/e$a;-><init>(Lss/ss/ss/e;)V

    iput-object v0, p0, Lss/ss/ss/e;->c:Lss/ss/ss/e$a;

    iget-object v0, p0, Lss/ss/ss/e;->i:Lss/ss/ss/e$b;

    invoke-static {v0, p4}, Lss/ss/ss/e$b;->a(Lss/ss/ss/e$b;Z)Z

    iget-object v0, p0, Lss/ss/ss/e;->c:Lss/ss/ss/e$a;

    invoke-static {v0, p3}, Lss/ss/ss/e$a;->a(Lss/ss/ss/e$a;Z)Z

    iput-object p5, p0, Lss/ss/ss/e;->g:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lss/ss/ss/e;)Lss/ss/ss/d;
    .locals 1

    iget-object v0, p0, Lss/ss/ss/e;->f:Lss/ss/ss/d;

    return-object v0
.end method

.method static synthetic b(Lss/ss/ss/e;)I
    .locals 1

    iget v0, p0, Lss/ss/ss/e;->e:I

    return v0
.end method

.method static synthetic c(Lss/ss/ss/e;)Lss/ss/ss/e$c;
    .locals 1

    iget-object v0, p0, Lss/ss/ss/e;->j:Lss/ss/ss/e$c;

    return-object v0
.end method

.method static synthetic d(Lss/ss/ss/e;)Lss/ss/ss/a;
    .locals 1

    iget-object v0, p0, Lss/ss/ss/e;->l:Lss/ss/ss/a;

    return-object v0
.end method

.method private d(Lss/ss/ss/a;)Z
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lss/ss/ss/e;->d:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lss/ss/ss/e;->l:Lss/ss/ss/a;

    if-eqz v1, :cond_1

    monitor-exit p0

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lss/ss/ss/e;->i:Lss/ss/ss/e$b;

    invoke-static {v1}, Lss/ss/ss/e$b;->a(Lss/ss/ss/e$b;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lss/ss/ss/e;->c:Lss/ss/ss/e$a;

    invoke-static {v1}, Lss/ss/ss/e$a;->a(Lss/ss/ss/e$a;)Z

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iput-object p1, p0, Lss/ss/ss/e;->l:Lss/ss/ss/a;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lss/ss/ss/e;->f:Lss/ss/ss/d;

    iget v1, p0, Lss/ss/ss/e;->e:I

    invoke-virtual {v0, v1}, Lss/ss/ss/d;->b(I)Lss/ss/ss/e;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic e(Lss/ss/ss/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    invoke-direct {p0}, Lss/ss/ss/e;->l()V

    return-void
.end method

.method static synthetic f(Lss/ss/ss/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lss/ss/ss/e;->j()V

    return-void
.end method

.method static synthetic g(Lss/ss/ss/e;)Lss/ss/ss/e$c;
    .locals 1

    iget-object v0, p0, Lss/ss/ss/e;->k:Lss/ss/ss/e$c;

    return-object v0
.end method

.method static synthetic h(Lss/ss/ss/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lss/ss/ss/e;->k()V

    return-void
.end method

.method private j()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lss/ss/ss/e;->d:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lss/ss/ss/e;->i:Lss/ss/ss/e$b;

    invoke-static {v0}, Lss/ss/ss/e$b;->a(Lss/ss/ss/e$b;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lss/ss/ss/e;->i:Lss/ss/ss/e$b;

    invoke-static {v0}, Lss/ss/ss/e$b;->b(Lss/ss/ss/e$b;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lss/ss/ss/e;->c:Lss/ss/ss/e$a;

    invoke-static {v0}, Lss/ss/ss/e$a;->a(Lss/ss/ss/e$a;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lss/ss/ss/e;->c:Lss/ss/ss/e$a;

    invoke-static {v0}, Lss/ss/ss/e$a;->b(Lss/ss/ss/e$a;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lss/ss/ss/e;->b()Z

    move-result v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    sget-object v0, Lss/ss/ss/a;->l:Lss/ss/ss/a;

    invoke-virtual {p0, v0}, Lss/ss/ss/e;->a(Lss/ss/ss/a;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    if-nez v1, :cond_2

    iget-object v0, p0, Lss/ss/ss/e;->f:Lss/ss/ss/d;

    iget v1, p0, Lss/ss/ss/e;->e:I

    invoke-virtual {v0, v1}, Lss/ss/ss/d;->b(I)Lss/ss/ss/e;

    goto :goto_1
.end method

.method private k()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/ss/e;->c:Lss/ss/ss/e$a;

    invoke-static {v0}, Lss/ss/ss/e$a;->b(Lss/ss/ss/e$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lss/ss/ss/e;->c:Lss/ss/ss/e$a;

    invoke-static {v0}, Lss/ss/ss/e$a;->a(Lss/ss/ss/e$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lss/ss/ss/e;->l:Lss/ss/ss/a;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lss/ss/ss/e;->l:Lss/ss/ss/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method private l()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lss/ss/ss/e;->e:I

    return v0
.end method

.method a(J)V
    .locals 3

    iget-wide v0, p0, Lss/ss/ss/e;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lss/ss/ss/e;->b:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method

.method a(LgK/e;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lss/ss/ss/e;->d:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lss/ss/ss/e;->i:Lss/ss/ss/e$b;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Lss/ss/ss/e$b;->a(LgK/e;J)V

    return-void
.end method

.method a(Ljava/util/List;Lss/ss/ss/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/f;",
            ">;",
            "Lss/ss/ss/g;",
            ")V"
        }
    .end annotation

    sget-boolean v0, Lss/ss/ss/e;->d:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lss/ss/ss/e;->h:Ljava/util/List;

    if-nez v2, :cond_3

    invoke-virtual {p2}, Lss/ss/ss/g;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lss/ss/ss/a;->b:Lss/ss/ss/a;

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_5

    invoke-virtual {p0, v1}, Lss/ss/ss/e;->b(Lss/ss/ss/a;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_1
    iput-object p1, p0, Lss/ss/ss/e;->h:Ljava/util/List;

    invoke-virtual {p0}, Lss/ss/ss/e;->b()Z

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    :try_start_2
    invoke-virtual {p2}, Lss/ss/ss/g;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v1, Lss/ss/ss/a;->e:Lss/ss/ss/a;

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lss/ss/ss/e;->h:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v2, p0, Lss/ss/ss/e;->h:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_5
    if-nez v0, :cond_1

    iget-object v0, p0, Lss/ss/ss/e;->f:Lss/ss/ss/d;

    iget v1, p0, Lss/ss/ss/e;->e:I

    invoke-virtual {v0, v1}, Lss/ss/ss/d;->b(I)Lss/ss/ss/e;

    goto :goto_1
.end method

.method public a(Lss/ss/ss/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lss/ss/ss/e;->d(Lss/ss/ss/a;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lss/ss/ss/e;->f:Lss/ss/ss/d;

    iget v1, p0, Lss/ss/ss/e;->e:I

    invoke-virtual {v0, v1, p1}, Lss/ss/ss/d;->b(ILss/ss/ss/a;)V

    goto :goto_0
.end method

.method public b(Lss/ss/ss/a;)V
    .locals 2

    invoke-direct {p0, p1}, Lss/ss/ss/e;->d(Lss/ss/ss/a;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lss/ss/ss/e;->f:Lss/ss/ss/d;

    iget v1, p0, Lss/ss/ss/e;->e:I

    invoke-virtual {v0, v1, p1}, Lss/ss/ss/d;->a(ILss/ss/ss/a;)V

    goto :goto_0
.end method

.method public declared-synchronized b()Z
    .locals 2

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lss/ss/ss/e;->l:Lss/ss/ss/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lss/ss/ss/e;->i:Lss/ss/ss/e$b;

    invoke-static {v1}, Lss/ss/ss/e$b;->a(Lss/ss/ss/e$b;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lss/ss/ss/e;->i:Lss/ss/ss/e$b;

    invoke-static {v1}, Lss/ss/ss/e$b;->b(Lss/ss/ss/e$b;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lss/ss/ss/e;->c:Lss/ss/ss/e$a;

    invoke-static {v1}, Lss/ss/ss/e$a;->a(Lss/ss/ss/e$a;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lss/ss/ss/e;->c:Lss/ss/ss/e$a;

    invoke-static {v1}, Lss/ss/ss/e$a;->b(Lss/ss/ss/e$a;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lss/ss/ss/e;->h:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c(Lss/ss/ss/a;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lss/ss/ss/e;->l:Lss/ss/ss/a;

    if-nez v0, :cond_0

    iput-object p1, p0, Lss/ss/ss/e;->l:Lss/ss/ss/a;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lss/ss/ss/e;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lss/ss/ss/e;->f:Lss/ss/ss/d;

    iget-boolean v3, v3, Lss/ss/ss/d;->b:Z

    if-ne v3, v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public declared-synchronized d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/f;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lss/ss/ss/e;->j:Lss/ss/ss/e$c;

    invoke-virtual {v0}, Lss/ss/ss/e$c;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lss/ss/ss/e;->h:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lss/ss/ss/e;->l:Lss/ss/ss/a;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lss/ss/ss/e;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lss/ss/ss/e;->j:Lss/ss/ss/e$c;

    invoke-virtual {v1}, Lss/ss/ss/e$c;->b()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_3
    iget-object v0, p0, Lss/ss/ss/e;->j:Lss/ss/ss/e$c;

    invoke-virtual {v0}, Lss/ss/ss/e$c;->b()V

    iget-object v0, p0, Lss/ss/ss/e;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lss/ss/ss/e;->h:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lss/ss/ss/e;->l:Lss/ss/ss/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
.end method

.method public e()LgK/s;
    .locals 1

    iget-object v0, p0, Lss/ss/ss/e;->j:Lss/ss/ss/e$c;

    return-object v0
.end method

.method public f()LgK/s;
    .locals 1

    iget-object v0, p0, Lss/ss/ss/e;->k:Lss/ss/ss/e$c;

    return-object v0
.end method

.method public g()LgK/r;
    .locals 1

    iget-object v0, p0, Lss/ss/ss/e;->i:Lss/ss/ss/e$b;

    return-object v0
.end method

.method public h()LgK/q;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lss/ss/ss/e;->h:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lss/ss/ss/e;->c()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lss/ss/ss/e;->c:Lss/ss/ss/e$a;

    return-object v0
.end method

.method i()V
    .locals 2

    sget-boolean v0, Lss/ss/ss/e;->d:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lss/ss/ss/e;->i:Lss/ss/ss/e$b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lss/ss/ss/e$b;->a(Lss/ss/ss/e$b;Z)Z

    invoke-virtual {p0}, Lss/ss/ss/e;->b()Z

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    iget-object v0, p0, Lss/ss/ss/e;->f:Lss/ss/ss/d;

    iget v1, p0, Lss/ss/ss/e;->e:I

    invoke-virtual {v0, v1}, Lss/ss/ss/d;->b(I)Lss/ss/ss/e;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
