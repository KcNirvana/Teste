.class public Lcom/ali/user/mobile/register/c/a;
.super Ljava/lang/Object;
.source "ActionCenter.java"


# instance fields
.field private a:Lcom/ali/user/mobile/register/a/b;

.field private b:[Lcom/ali/user/mobile/register/c/e;

.field private c:Lcom/ali/user/mobile/register/c/e;

.field private d:[Lcom/ali/user/mobile/register/c/f;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ali/user/mobile/register/c/b;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/register/c/b;-><init>(Lcom/ali/user/mobile/register/c/a;)V

    iput-object v0, p0, Lcom/ali/user/mobile/register/c/a;->c:Lcom/ali/user/mobile/register/c/e;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ali/user/mobile/register/c/a;->e:Landroid/os/Handler;

    new-array v0, v3, [Lcom/ali/user/mobile/register/c/f;

    iput-object v0, p0, Lcom/ali/user/mobile/register/c/a;->d:[Lcom/ali/user/mobile/register/c/f;

    iget-object v0, p0, Lcom/ali/user/mobile/register/c/a;->d:[Lcom/ali/user/mobile/register/c/f;

    const/4 v1, 0x0

    new-instance v2, Lcom/ali/user/mobile/register/c/g;

    invoke-direct {v2}, Lcom/ali/user/mobile/register/c/g;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/ali/user/mobile/register/c/a;->d:[Lcom/ali/user/mobile/register/c/f;

    const/4 v1, 0x1

    new-instance v2, Lcom/ali/user/mobile/register/c/g;

    invoke-direct {v2}, Lcom/ali/user/mobile/register/c/g;-><init>()V

    aput-object v2, v0, v1

    new-instance v0, Lcom/ali/user/mobile/register/a/b;

    invoke-direct {v0}, Lcom/ali/user/mobile/register/a/b;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/register/c/a;->a:Lcom/ali/user/mobile/register/a/b;

    new-array v0, v3, [Lcom/ali/user/mobile/register/c/e;

    iput-object v0, p0, Lcom/ali/user/mobile/register/c/a;->b:[Lcom/ali/user/mobile/register/c/e;

    return-void
.end method

.method static synthetic a(Lcom/ali/user/mobile/register/c/a;)Lcom/ali/user/mobile/register/a/b;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/register/c/a;->a:Lcom/ali/user/mobile/register/a/b;

    return-object v0
.end method

.method static synthetic a(Lcom/ali/user/mobile/register/c/a;Lcom/ali/user/mobile/register/a/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/register/c/a;->b(Lcom/ali/user/mobile/register/a/b;)V

    return-void
.end method

.method private declared-synchronized b(Lcom/ali/user/mobile/register/a/b;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "Reg_actionCenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update state old "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/register/c/a;->a:Lcom/ali/user/mobile/register/a/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " new "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    iget v1, p1, Lcom/ali/user/mobile/register/a/b;->b:I

    if-eq v0, v1, :cond_1

    const/4 v0, -0x2

    iget v1, p1, Lcom/ali/user/mobile/register/a/b;->b:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/ali/user/mobile/register/a/b;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/ali/user/mobile/register/c/a;->a:Lcom/ali/user/mobile/register/a/b;

    iget-object v0, p0, Lcom/ali/user/mobile/register/c/a;->b:[Lcom/ali/user/mobile/register/c/e;

    iget v1, p1, Lcom/ali/user/mobile/register/a/b;->b:I

    add-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/register/c/a;->c:Lcom/ali/user/mobile/register/c/e;

    :cond_2
    iget-object v1, p0, Lcom/ali/user/mobile/register/c/a;->e:Landroid/os/Handler;

    new-instance v2, Lcom/ali/user/mobile/register/c/d;

    invoke-direct {v2, p0, v0, p1}, Lcom/ali/user/mobile/register/c/d;-><init>(Lcom/ali/user/mobile/register/c/a;Lcom/ali/user/mobile/register/c/e;Lcom/ali/user/mobile/register/a/b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()Lcom/ali/user/mobile/register/a/b;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/c/a;->a:Lcom/ali/user/mobile/register/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/ali/user/mobile/register/Account;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "Reg_actionCenter"

    const-string/jumbo v1, "update account"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/c/a;->a:Lcom/ali/user/mobile/register/a/b;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/register/a/b;->a(Lcom/ali/user/mobile/register/Account;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/ali/user/mobile/register/a/a;Lcom/ali/user/mobile/base/BaseActivity;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "Reg_actionCenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start handle remote request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/c/a;->d:[Lcom/ali/user/mobile/register/c/f;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/ali/user/mobile/register/c/a;->a:Lcom/ali/user/mobile/register/a/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ali/user/mobile/register/a/b;

    invoke-direct {v1}, Lcom/ali/user/mobile/register/a/b;-><init>()V

    iput-object v1, p0, Lcom/ali/user/mobile/register/c/a;->a:Lcom/ali/user/mobile/register/a/b;

    :cond_0
    new-instance v1, Lcom/ali/user/mobile/register/c/c;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/ali/user/mobile/register/c/c;-><init>(Lcom/ali/user/mobile/register/c/a;Lcom/ali/user/mobile/register/c/f;Lcom/ali/user/mobile/register/a/a;Lcom/ali/user/mobile/base/BaseActivity;)V

    invoke-static {v1}, Lcom/ali/user/mobile/accountbiz/c;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/ali/user/mobile/register/a/b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/ali/user/mobile/register/c/a;->a:Lcom/ali/user/mobile/register/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/ali/user/mobile/register/c/e;)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/register/c/a;->b:[Lcom/ali/user/mobile/register/c/e;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/ali/user/mobile/register/c/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "Reg_actionCenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start handle local request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/c/a;->a:Lcom/ali/user/mobile/register/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/register/a/b;

    invoke-direct {v0}, Lcom/ali/user/mobile/register/a/b;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/register/c/a;->a:Lcom/ali/user/mobile/register/a/b;

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/c/a;->a:Lcom/ali/user/mobile/register/a/b;

    invoke-virtual {v0}, Lcom/ali/user/mobile/register/a/b;->c()Lcom/ali/user/mobile/register/a/b;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Lcom/ali/user/mobile/register/a/b;->b:I

    iput-object p1, v0, Lcom/ali/user/mobile/register/a/b;->g:Ljava/lang/String;

    iput-object p2, v0, Lcom/ali/user/mobile/register/a/b;->h:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/c/a;->b(Lcom/ali/user/mobile/register/a/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "Reg_actionCenter"

    const-string/jumbo v1, "update account"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/c/a;->a:Lcom/ali/user/mobile/register/a/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ali/user/mobile/register/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "Reg_actionCenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reset state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/register/c/a;->a:Lcom/ali/user/mobile/register/a/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " forced "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/register/c/a;->a:Lcom/ali/user/mobile/register/a/b;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/ali/user/mobile/register/a/b;

    invoke-direct {v0}, Lcom/ali/user/mobile/register/a/b;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/register/c/a;->a:Lcom/ali/user/mobile/register/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ali/user/mobile/register/c/a;->a:Lcom/ali/user/mobile/register/a/b;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ali/user/mobile/register/a/b;->f:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/ali/user/mobile/register/c/e;)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/register/c/a;->b:[Lcom/ali/user/mobile/register/c/e;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method
