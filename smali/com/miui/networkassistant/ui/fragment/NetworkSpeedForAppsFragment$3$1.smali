.class final Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3$1;->this$1:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3$1;->this$1:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->-get4(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)Lcom/miui/networkassistant/model/AppInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3$1;->this$1:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->-get4(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)Lcom/miui/networkassistant/model/AppInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/miui/common/b/f;->aHO()I

    move-result v0

    invoke-static {v1}, Lcom/miui/networkassistant/utils/PackageUtil;->isSpecialApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/miui/networkassistant/utils/PackageUtil;->parseUidByPackageName(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/miui/common/b/f;->aHR(I)I

    move-result v0

    :cond_0
    invoke-static {v1}, Lcom/miui/networkassistant/utils/PackageUtil;->getRealPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3$1;->this$1:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;

    iget-object v2, v2, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->-get2(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/miui/networkassistant/utils/PackageUtil;->forceStopPackage(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3$1;->this$1:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->-get1(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3$1;->this$1:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;

    iget-object v1, v1, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->-get4(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)Lcom/miui/networkassistant/model/AppInfo;

    move-result-object v1

    iget v1, v1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->packageStoped(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3$1;->this$1:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->-set1(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;Lcom/miui/networkassistant/model/AppInfo;)Lcom/miui/networkassistant/model/AppInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3$1;->this$1:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    invoke-static {v0, v3}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->-set0(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;Lcom/miui/networkassistant/ui/dialog/CommonDialog;)Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NetworkSpeedForApps"

    const-string/jumbo v2, "mConfirmForceStopDialog.onClick"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    const/4 v0, -0x2

    goto :goto_0
.end method
