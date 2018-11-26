.class final Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$6;
.super Lcom/miui/common/a/b/b;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;Landroid/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$6;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    invoke-direct {p0, p2}, Lcom/miui/common/a/b/b;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public runOnUiThread()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "%s-%s"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$6;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->-wrap0(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$6;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    iget v0, v0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->mSlotNum:I

    if-nez v0, :cond_0

    const v0, 0x7f0702fa

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$6;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment$6;->this$0:Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    invoke-static {v1, v0}, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;->-wrap3(Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;Ljava/lang/String;)V

    return-void

    :cond_0
    const v0, 0x7f0702fb

    goto :goto_0
.end method
