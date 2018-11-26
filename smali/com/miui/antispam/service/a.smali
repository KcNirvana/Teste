.class public abstract Lcom/miui/antispam/service/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aau:Z

.field private aav:Z

.field private aaw:Lcom/miui/antispam/service/b;

.field private aax:I

.field protected context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/antispam/service/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/miui/antispam/service/a;->aav:Z

    iput-boolean v0, p0, Lcom/miui/antispam/service/a;->aau:Z

    iput v0, p0, Lcom/miui/antispam/service/a;->aax:I

    iput-object p1, p0, Lcom/miui/antispam/service/a;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/antispam/service/a;->aaw:Lcom/miui/antispam/service/b;

    invoke-virtual {p0}, Lcom/miui/antispam/service/a;->onCreate()V

    return-void
.end method


# virtual methods
.method public abstract acY()Ljava/lang/String;
.end method

.method protected declared-synchronized adn(Z)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/antispam/service/a;->aav:Z

    iget v0, p0, Lcom/miui/antispam/service/a;->aax:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/antispam/service/a;->aax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/miui/antispam/service/a;->aax:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/antispam/service/a;->aax:I

    iget-boolean v0, p0, Lcom/miui/antispam/service/a;->aau:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/antispam/service/a;->aax:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/antispam/service/a;->aav:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/antispam/service/a;->ado(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ado(Z)Z
    .locals 2

    const/4 v1, 0x1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/antispam/service/a;->aau:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/antispam/service/a;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/miui/antispam/service/a;->aav:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/antispam/service/a;->onDestroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate()V
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/service/a;->aaw:Lcom/miui/antispam/service/b;

    invoke-interface {v0, p0}, Lcom/miui/antispam/service/b;->adp(Lcom/miui/antispam/service/a;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/service/a;->aaw:Lcom/miui/antispam/service/b;

    invoke-interface {v0, p0}, Lcom/miui/antispam/service/b;->adq(Lcom/miui/antispam/service/a;)V

    return-void
.end method
