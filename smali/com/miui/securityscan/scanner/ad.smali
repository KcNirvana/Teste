.class final Lcom/miui/securityscan/scanner/ad;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic FC:Lcom/miui/securityscan/scanner/z;

.field final synthetic FD:Lcom/miui/securityscan/c/e;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/z;Lcom/miui/securityscan/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/ad;->FC:Lcom/miui/securityscan/scanner/z;

    iput-object p2, p0, Lcom/miui/securityscan/scanner/ad;->FD:Lcom/miui/securityscan/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    const-string/jumbo v0, "SystemCheckManager"

    const-string/jumbo v1, "scanSystemConfig start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ad;->FD:Lcom/miui/securityscan/c/e;

    invoke-interface {v0}, Lcom/miui/securityscan/c/e;->Gq()V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ad;->FC:Lcom/miui/securityscan/scanner/z;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/z;->Fo(Lcom/miui/securityscan/scanner/z;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securityscan/model/ModelFactory;->produceSystemGroupModel(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string/jumbo v0, "SystemCheckManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scanSystemConfig groupList size is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/GroupModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/GroupModel;->scan()V

    invoke-virtual {v0}, Lcom/miui/securityscan/model/GroupModel;->getCurModel()Lcom/miui/securityscan/model/AbsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->isScanHide()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/miui/securityscan/scanner/ad;->FD:Lcom/miui/securityscan/c/e;

    invoke-interface {v1}, Lcom/miui/securityscan/c/e;->Go()V

    const-string/jumbo v1, "SystemCheckManager"

    const-string/jumbo v2, "scanSystemConfig() ScanCancelException has appeared"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v0, "SystemCheckManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scanSystemConfig modelList size is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getDesc()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/miui/securityscan/scanner/ad;->FD:Lcom/miui/securityscan/c/e;

    invoke-interface {v6, v4, v5, v0}, Lcom/miui/securityscan/c/e;->Gp(IILjava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/miui/securityscan/scanner/ad;->FD:Lcom/miui/securityscan/c/e;

    const/16 v1, 0xb

    invoke-interface {v0, v2, v1}, Lcom/miui/securityscan/c/e;->Gn(Ljava/util/List;I)V

    :cond_3
    const-string/jumbo v0, "SystemCheckManager"

    const-string/jumbo v1, "scanSystemConfig end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
