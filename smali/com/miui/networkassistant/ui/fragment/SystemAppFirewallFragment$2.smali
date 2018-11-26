.class final Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionUpdated(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;)Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method
