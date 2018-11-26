.class Lcom/miui/common/f/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private aCc:Ljava/util/List;

.field private aCd:Z

.field final synthetic aCe:Lcom/miui/common/f/a;

.field private action:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/common/f/a;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/common/f/d;->aCe:Lcom/miui/common/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/common/f/d;->aCc:Ljava/util/List;

    iput-object p2, p0, Lcom/miui/common/f/d;->action:Ljava/lang/String;

    return-void
.end method

.method static synthetic aMw(Lcom/miui/common/f/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/f/d;->aCd:Z

    return v0
.end method

.method static synthetic aMx(Lcom/miui/common/f/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/f/d;->aCd:Z

    return p1
.end method


# virtual methods
.method public aMv(Lcom/miui/common/f/b;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/f/d;->aCc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v0, "BinderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceCCCCConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/common/f/d;->aCe:Lcom/miui/common/f/a;

    invoke-static {v0}, Lcom/miui/common/f/a;->aMt(Lcom/miui/common/f/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/f/d;->action:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/f/c;

    if-eqz v0, :cond_1

    iput-object p2, v0, Lcom/miui/common/f/c;->aBY:Landroid/os/IBinder;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/common/f/c;->aCa:Z

    iget-object v2, v0, Lcom/miui/common/f/c;->aBZ:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/miui/common/f/d;->aCc:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/common/f/b;

    iget-object v4, p0, Lcom/miui/common/f/d;->aCe:Lcom/miui/common/f/a;

    invoke-static {v4, v1, v0, p2}, Lcom/miui/common/f/a;->aMu(Lcom/miui/common/f/a;Lcom/miui/common/f/b;Lcom/miui/common/f/c;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/common/f/d;->aCc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    :cond_1
    iget-object v0, p0, Lcom/miui/common/f/d;->aCc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const-string/jumbo v0, "BinderManager"

    const-string/jumbo v1, "onServiceCCCCConnected set isServiceNotAvailable to false"

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/miui/common/f/d;->aCd:Z

    :cond_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "BinderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDDDDDisconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/common/f/d;->aCd:Z

    iget-object v0, p0, Lcom/miui/common/f/d;->aCe:Lcom/miui/common/f/a;

    invoke-static {v0}, Lcom/miui/common/f/a;->aMt(Lcom/miui/common/f/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/f/d;->action:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/f/c;

    if-eqz v0, :cond_0

    iput-object v3, v0, Lcom/miui/common/f/c;->aBY:Landroid/os/IBinder;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/common/f/c;->aCa:Z

    :cond_0
    return-void
.end method
