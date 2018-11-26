.class final Lcom/miui/securityscan/scanner/W;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Fk:Lcom/miui/securityscan/scanner/p;

.field final synthetic Fl:Lcom/miui/securitycenter/memory/c;

.field final synthetic Fm:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/p;Lcom/miui/securitycenter/memory/c;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/W;->Fk:Lcom/miui/securityscan/scanner/p;

    iput-object p2, p0, Lcom/miui/securityscan/scanner/W;->Fl:Lcom/miui/securitycenter/memory/c;

    iput-object p3, p0, Lcom/miui/securityscan/scanner/W;->Fm:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/miui/securityscan/scanner/W;->Fl:Lcom/miui/securitycenter/memory/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/scanner/W;->Fl:Lcom/miui/securitycenter/memory/c;

    invoke-interface {v0}, Lcom/miui/securitycenter/memory/c;->ER()V

    :cond_0
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x3e7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/securityscan/scanner/W;->Fm:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securitycenter/memory/a;

    invoke-virtual {v0}, Lcom/miui/securitycenter/memory/a;->bpC()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/miui/securitycenter/memory/a;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "MemoryCheckManager"

    const-string/jumbo v2, "startCleanup:"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/miui/securityscan/scanner/W;->Fl:Lcom/miui/securitycenter/memory/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/securityscan/scanner/W;->Fl:Lcom/miui/securitycenter/memory/c;

    invoke-interface {v0}, Lcom/miui/securitycenter/memory/c;->ES()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_2
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/16 v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lmiui/process/ProcessConfig;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x6

    invoke-direct {v5, v7, v6, v4}, Lmiui/process/ProcessConfig;-><init>(IILandroid/util/ArrayMap;)V

    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Lmiui/process/ProcessConfig;->setRemoveTaskNeeded(Z)V

    invoke-static {v5}, Lmiui/process/ProcessManager;->kill(Lmiui/process/ProcessConfig;)Z

    const-string/jumbo v4, "MemoryCheckManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startCleanup:userId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " ; "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/miui/securityscan/scanner/W;->Fl:Lcom/miui/securitycenter/memory/c;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/securityscan/scanner/W;->Fl:Lcom/miui/securitycenter/memory/c;

    invoke-interface {v1}, Lcom/miui/securitycenter/memory/c;->ES()V

    :cond_4
    throw v0

    :cond_5
    iget-object v0, p0, Lcom/miui/securityscan/scanner/W;->Fl:Lcom/miui/securitycenter/memory/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/securityscan/scanner/W;->Fl:Lcom/miui/securitycenter/memory/c;

    invoke-interface {v0}, Lcom/miui/securitycenter/memory/c;->ES()V

    goto :goto_1
.end method
