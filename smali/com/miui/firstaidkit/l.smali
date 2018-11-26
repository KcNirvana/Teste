.class final Lcom/miui/firstaidkit/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic vq:Lcom/miui/firstaidkit/c;

.field final synthetic vr:Lcom/miui/firstaidkit/b/a;

.field final synthetic vs:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/firstaidkit/c;Lcom/miui/firstaidkit/b/a;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/firstaidkit/l;->vq:Lcom/miui/firstaidkit/c;

    iput-object p2, p0, Lcom/miui/firstaidkit/l;->vr:Lcom/miui/firstaidkit/b/a;

    iput-object p3, p0, Lcom/miui/firstaidkit/l;->vs:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/firstaidkit/l;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "FirstAidKitManualItemManager"

    const-string/jumbo v2, "startScan"

    invoke-static {v1, v2}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/firstaidkit/l;->vr:Lcom/miui/firstaidkit/b/a;

    invoke-interface {v1}, Lcom/miui/firstaidkit/b/a;->vH()V

    iget-object v1, p0, Lcom/miui/firstaidkit/l;->vq:Lcom/miui/firstaidkit/c;

    invoke-static {v1}, Lcom/miui/firstaidkit/c;->vR(Lcom/miui/firstaidkit/c;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/firstaidkit/l;->vs:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miui/securityscan/model/ModelFactory;->produceFirstAidKitGroupModel(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    move v2, v0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->scan()V

    iget-object v4, p0, Lcom/miui/firstaidkit/l;->vr:Lcom/miui/firstaidkit/b/a;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getDesc()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lcom/miui/firstaidkit/b/a;->vI(IILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v4

    sget-object v5, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    if-eq v4, v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    iget-object v4, p0, Lcom/miui/firstaidkit/l;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Lcom/miui/securityscan/model/AbsModel;->setFirstAidEventHandler(Landroid/os/Handler;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    iget-object v1, p0, Lcom/miui/firstaidkit/l;->vr:Lcom/miui/firstaidkit/b/a;

    const/4 v2, 0x0

    invoke-interface {v1, v3, v2, v0}, Lcom/miui/firstaidkit/b/a;->vJ(Ljava/util/List;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FirstAidKitManualItemManager"

    const-string/jumbo v2, "startScan"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
