.class Lcom/miui/guardprovider/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private akN:Ljava/util/List;

.field private akO:Ljava/util/List;

.field final synthetic akP:Lcom/miui/guardprovider/a;


# direct methods
.method private constructor <init>(Lcom/miui/guardprovider/a;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/guardprovider/d;->akP:Lcom/miui/guardprovider/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/guardprovider/d;->akN:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/guardprovider/d;->akO:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/guardprovider/a;Lcom/miui/guardprovider/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/guardprovider/d;-><init>(Lcom/miui/guardprovider/a;)V

    return-void
.end method


# virtual methods
.method public aqu(Lcom/miui/guardprovider/b;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/guardprovider/d;->akN:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public aqv(Lcom/miui/guardprovider/c;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/guardprovider/d;->akO:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public aqw(Lcom/miui/guardprovider/c;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/guardprovider/d;->akO:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object v1, p0, Lcom/miui/guardprovider/d;->akP:Lcom/miui/guardprovider/a;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/guardprovider/d;->akP:Lcom/miui/guardprovider/a;

    invoke-static {p2}, Lcom/miui/guardprovider/aidl/IAntiVirusServer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/guardprovider/a;->aqp(Lcom/miui/guardprovider/a;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    iget-object v0, p0, Lcom/miui/guardprovider/d;->akN:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/guardprovider/b;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/miui/guardprovider/d;->akP:Lcom/miui/guardprovider/a;

    invoke-static {v3}, Lcom/miui/guardprovider/a;->aqo(Lcom/miui/guardprovider/a;)Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/miui/guardprovider/b;->aqs(Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/miui/guardprovider/d;->akN:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v1, p0, Lcom/miui/guardprovider/d;->akP:Lcom/miui/guardprovider/a;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/guardprovider/d;->akP:Lcom/miui/guardprovider/a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/miui/guardprovider/a;->aqp(Lcom/miui/guardprovider/a;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    iget-object v0, p0, Lcom/miui/guardprovider/d;->akP:Lcom/miui/guardprovider/a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/miui/guardprovider/a;->aqr(Lcom/miui/guardprovider/a;Z)Z

    iget-object v0, p0, Lcom/miui/guardprovider/d;->akP:Lcom/miui/guardprovider/a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/miui/guardprovider/a;->aqq(Lcom/miui/guardprovider/a;I)I

    iget-object v0, p0, Lcom/miui/guardprovider/d;->akO:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/guardprovider/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/guardprovider/c;->aqt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/miui/guardprovider/d;->akO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void
.end method
