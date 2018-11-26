.class final Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/view/SearchActionMode$Callback;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->onCreateSearchView(Landroid/view/ActionMode;Landroid/view/Menu;)V

    check-cast p1, Lmiui/view/SearchActionMode;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mSearchView:Landroid/view/View;

    invoke-interface {p1, v0}, Lmiui/view/SearchActionMode;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mContainerLayout:Landroid/view/View;

    invoke-interface {p1, v0}, Lmiui/view/SearchActionMode;->setAnimateView(Landroid/view/View;)V

    invoke-interface {p1}, Lmiui/view/SearchActionMode;->getSearchInput()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->-get1(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->setInSearch(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    invoke-static {v0, v2}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->-set1(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;Z)Z

    return v2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->onDestroySearchView(Landroid/view/ActionMode;)V

    check-cast p1, Lmiui/view/SearchActionMode;

    invoke-interface {p1}, Lmiui/view/SearchActionMode;->getSearchInput()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->-get1(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->exitSearchMode()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->setSearchInput(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->setInSearch(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    invoke-static {v0, v2}, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->-set1(Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;Z)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAppList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAdapter:Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;

    iget-object v1, v1, Lcom/miui/networkassistant/ui/fragment/FirewallListFragment;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/adapter/BaseFirewallAdapter;->setData(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
