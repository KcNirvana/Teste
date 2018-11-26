.class final Lcom/miui/securityscan/scanner/Z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Fu:Lcom/miui/securityscan/scanner/u;

.field final synthetic Fv:Lcom/miui/securityscan/c/e;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/u;Lcom/miui/securityscan/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/Z;->Fu:Lcom/miui/securityscan/scanner/u;

    iput-object p2, p0, Lcom/miui/securityscan/scanner/Z;->Fv:Lcom/miui/securityscan/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "ManualItemManager"

    const-string/jumbo v2, "startScan"

    invoke-static {v1, v2}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/securityscan/scanner/Z;->Fv:Lcom/miui/securityscan/c/e;

    invoke-interface {v1}, Lcom/miui/securityscan/c/e;->Gq()V

    iget-object v1, p0, Lcom/miui/securityscan/scanner/Z;->Fu:Lcom/miui/securityscan/scanner/u;

    invoke-static {v1}, Lcom/miui/securityscan/scanner/u;->Fa(Lcom/miui/securityscan/scanner/u;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/securityscan/model/ModelFactory;->produceManualGroupModel(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/miui/securityscan/utils/g;->IL()Ljava/util/List;

    move-result-object v1

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/miui/securityscan/scanner/Z;->Fu:Lcom/miui/securityscan/scanner/u;

    invoke-static {v3, v2, v1}, Lcom/miui/securityscan/scanner/u;->Fb(Lcom/miui/securityscan/scanner/u;Ljava/util/List;Ljava/util/List;)V

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/GroupModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/GroupModel;->scan()V

    iget-object v3, p0, Lcom/miui/securityscan/scanner/Z;->Fv:Lcom/miui/securityscan/c/e;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v0}, Lcom/miui/securityscan/model/GroupModel;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v5, v0}, Lcom/miui/securityscan/c/e;->Gp(IILjava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/scanner/Z;->Fv:Lcom/miui/securityscan/c/e;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/miui/securityscan/c/e;->Gn(Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/miui/securityscan/scanner/Z;->Fv:Lcom/miui/securityscan/c/e;

    invoke-interface {v0}, Lcom/miui/securityscan/c/e;->Go()V

    const-string/jumbo v0, "ManualItemManager"

    const-string/jumbo v1, "startScan() InterruptedException has appeared"

    invoke-static {v0, v1}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
