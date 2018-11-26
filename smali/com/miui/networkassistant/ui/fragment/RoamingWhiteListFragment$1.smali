.class final Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/view/SearchActionMode$Callback;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;

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
    .locals 2

    check-cast p1, Lmiui/view/SearchActionMode;

    const-string/jumbo v0, "is_mediatek"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->-get9(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Lmiui/view/SearchActionMode;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->-get3(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)Lcom/miui/common/expandableview/PinnedHeaderListView;

    move-result-object v0

    invoke-interface {p1, v0}, Lmiui/view/SearchActionMode;->setAnimateView(Landroid/view/View;)V

    :cond_0
    invoke-interface {p1}, Lmiui/view/SearchActionMode;->getSearchInput()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->-get8(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3

    check-cast p1, Lmiui/view/SearchActionMode;

    invoke-interface {p1}, Lmiui/view/SearchActionMode;->getSearchInput()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->-get8(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->exitSearchMode()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;->setSearchInput(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->-get11(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->-get6(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->-wrap3(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;II)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->-get1(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;->-get10(Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;->updateData(Ljava/util/Map;I)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
