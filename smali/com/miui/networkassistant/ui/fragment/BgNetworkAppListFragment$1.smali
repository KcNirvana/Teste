.class final Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->-get9(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->-get7(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;)Lmiui/view/SearchActionMode$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->startSearchMode(Lmiui/view/SearchActionMode$Callback;)V

    :cond_0
    return-void
.end method
