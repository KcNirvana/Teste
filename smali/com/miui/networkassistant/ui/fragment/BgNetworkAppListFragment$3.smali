.class final Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->-get1(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;)Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;->setSearchInput(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->-get1(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;)Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->-get3(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->-get10(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/adapter/PinnedListAdapter;->updateData(Ljava/util/Map;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;

    invoke-static {v1, v0}, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->-wrap3(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;Ljava/lang/String;)V

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
