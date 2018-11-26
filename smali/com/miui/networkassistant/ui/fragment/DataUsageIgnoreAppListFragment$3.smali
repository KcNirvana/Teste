.class final Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->-get9(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->-get7(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)Lmiui/view/SearchActionMode$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->startSearchMode(Lmiui/view/SearchActionMode$Callback;)V

    :cond_0
    return-void
.end method
