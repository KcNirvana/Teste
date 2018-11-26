.class final Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->-set1(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;Lcom/miui/networkassistant/model/AppInfo;)Lcom/miui/networkassistant/model/AppInfo;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->-get1(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;->getAppInfo()Lcom/miui/networkassistant/model/AppInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "NetworkSpeedForApps"

    const-string/jumbo v1, "OnItemClickListener appInfo is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    invoke-static {v1, v0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->-set1(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;Lcom/miui/networkassistant/model/AppInfo;)Lcom/miui/networkassistant/model/AppInfo;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    new-instance v2, Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    invoke-static {v3}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3$1;

    invoke-direct {v4, p0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3$1;-><init>(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;)V

    invoke-direct {v2, v3, v4}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;-><init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-static {v1, v2}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->-set0(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;Lcom/miui/networkassistant/ui/dialog/CommonDialog;)Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->-get2(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Lcom/miui/networkassistant/utils/LabelLoadHelper;->loadLabel(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->-get3(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    move-result-object v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->-get1(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->isAppCanClose(Lcom/miui/networkassistant/model/AppInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->-get3(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->setMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->-get3(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->setPostiveText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->-get3(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->setNagetiveText(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->-get3(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->show()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->-get3(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->setMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->-get3(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->setNagetiveText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->-get3(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->setPostiveText(Ljava/lang/String;)V

    goto :goto_0
.end method
