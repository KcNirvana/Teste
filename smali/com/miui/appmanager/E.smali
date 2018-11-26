.class final Lcom/miui/appmanager/E;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aWh:Lcom/miui/appmanager/D;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/D;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/E;->aWh:Lcom/miui/appmanager/D;

    iput-object p2, p0, Lcom/miui/appmanager/E;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/appmanager/E;->aWh:Lcom/miui/appmanager/D;

    iget-object v0, v0, Lcom/miui/appmanager/D;->aWg:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-virtual {v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/appmanager/E;->aWh:Lcom/miui/appmanager/D;

    iget-object v0, v0, Lcom/miui/appmanager/D;->aWg:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjW(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/appmanager/E;->aWh:Lcom/miui/appmanager/D;

    iget-object v0, v0, Lcom/miui/appmanager/D;->aWg:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjV(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/appmanager/E;->aWh:Lcom/miui/appmanager/D;

    iget-object v0, v0, Lcom/miui/appmanager/D;->aWg:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-virtual {v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0704fc

    invoke-static {v0, v1}, Lcom/miui/securityscan/utils/b;->In(Landroid/content/Context;I)V

    invoke-static {}, Lcom/miui/securitycenter/a;->brN()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/E;->aWh:Lcom/miui/appmanager/D;

    iget-object v0, v0, Lcom/miui/appmanager/D;->aWg:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkn(Lcom/miui/appmanager/ApplicationsDetailsActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/miui/common/b/l;->aIF(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/appmanager/E;->val$packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/appmanager/E;->aWh:Lcom/miui/appmanager/D;

    iget-object v1, v1, Lcom/miui/appmanager/D;->aWg:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/miui/hybrid/accessory/sdk/a;->bCJ(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/E;->aWh:Lcom/miui/appmanager/D;

    iget-object v0, v0, Lcom/miui/appmanager/D;->aWg:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-virtual {v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->finish()V

    :cond_1
    return-void
.end method
