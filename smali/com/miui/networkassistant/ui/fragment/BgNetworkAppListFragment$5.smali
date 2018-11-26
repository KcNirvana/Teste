.class final Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/MessageDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f07021a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f07021e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
