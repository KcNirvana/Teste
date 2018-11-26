.class final Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;

    invoke-virtual {v0, p3}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/AppInfo;

    iget-object v0, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "icon_system_app"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;)Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/miui/networkassistant/ui/fragment/SystemAppFirewallFragment;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->startAppDetailFragment(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
