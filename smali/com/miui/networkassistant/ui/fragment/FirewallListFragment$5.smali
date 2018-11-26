.class final Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$5;
.super Landroid/database/ContentObserver;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->updateView()V

    :cond_0
    return-void
.end method
