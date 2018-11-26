.class final Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->setSearchInput(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAppList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    iget-object v1, v1, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->setData(Ljava/util/ArrayList;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->updateSearchResult(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
