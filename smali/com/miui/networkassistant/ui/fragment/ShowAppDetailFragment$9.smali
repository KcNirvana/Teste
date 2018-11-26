.class final Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

.field final synthetic val$pkgName:Ljava/lang/String;

.field final synthetic val$slotNum:I


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$9;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$9;->val$pkgName:Ljava/lang/String;

    iput p3, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$9;->val$slotNum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionUpdated(Z)V
    .locals 4

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$9;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->-get5(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)Lcom/miui/networkassistant/service/IFirewallBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$9;->val$pkgName:Ljava/lang/String;

    sget-object v2, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$9;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-static {v3}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->-get8(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/networkassistant/service/IFirewallBinder;->setMobileRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$9;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->-get7(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    move-result-object v0

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$9;->val$slotNum:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ShowAppDetailFragment"

    const-string/jumbo v2, "buildRestrictAndroidTipDialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$9;->this$0:Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->-get7(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    move-result-object v0

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$9;->val$slotNum:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setChecked(Z)V

    goto :goto_0
.end method
