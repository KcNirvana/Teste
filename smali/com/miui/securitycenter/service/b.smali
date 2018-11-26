.class final Lcom/miui/securitycenter/service/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/service/b;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/miui/securitycenter/a;->brY()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/common/b/g;->getFromNowDayInterval(J)I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/securitycenter/service/b;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->KX(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/b;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/antivirus/a/c;->azm(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/b;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/permcenter/a/a;->QD(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/b;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/applicationlock/b/a;->ajx(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/b;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/applicationlock/b/b;->ajZ(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/b;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/powercenter/b/b;->bdF(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/optimizemanage/c/a;->Ay()V

    iget-object v0, p0, Lcom/miui/securitycenter/service/b;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/antispam/a/a;->Yx(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/b;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/e/a/a;->trackSettingSwitchState(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/securitycenter/a;->bsp(J)V

    invoke-static {}, Lcom/miui/common/b/f;->aIh()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securitycenter/service/b;->val$context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.miui.securitycenter.action.TRACK_EVERY_WEEK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.miui.securitycenter.permission.RECEIVE_TRACK_EVERYWEEK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/securitycenter/service/b;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->getInstance(Landroid/content/Context;)Lcom/miui/securitycenter/dynamic/DynamicServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->track()V

    iget-object v0, p0, Lcom/miui/securitycenter/service/b;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/appmanager/a/a;->bhZ(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/b;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/appmanager/a/a;->bia(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/b;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/privacyapps/a/a;->byr(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/securitycenter/service/b;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;->brd(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/b;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/a/t;->hw(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/b;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/a/F;->ij(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/b;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/appcompatibility/b;->bwp(Landroid/content/Context;)V

    return-void
.end method
