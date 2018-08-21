.class Lcom/miui/personalassistant/express/fragment/HistoryFragment$2;
.super Ljava/lang/Object;
.source "HistoryFragment.java"

# interfaces
.implements Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/express/fragment/HistoryFragment;->initListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$2;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 4

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$2;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$200(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$2;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$300(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Ljava/util/Set;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$2;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$300(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Ljava/util/Set;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$2;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$400(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->notifyItemChanged(I)V

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$2;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$500(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$2;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$300(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Ljava/util/Set;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$2;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$600(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/express/bean/ExpressEntry;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "express"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v2, "express_detail_view"

    const-string/jumbo v3, "list"

    invoke-static {v2, v3}, Lcom/miui/personalassistant/express/util/StatUtil;->recordViewEvent(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$2;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$700(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Lcom/miui/personalassistant/express/fragment/ExpressInquiryListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$2;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$700(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Lcom/miui/personalassistant/express/fragment/ExpressInquiryListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/miui/personalassistant/express/fragment/ExpressInquiryListener;->inquiry(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public onItemLongClick(Landroid/view/View;I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$2;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$200(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$2;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    iget-object v0, v0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    new-instance v1, Lcom/miui/personalassistant/express/fragment/HistoryFragment$ActionModeCallBack;

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$2;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/miui/personalassistant/express/fragment/HistoryFragment$ActionModeCallBack;-><init>(Lcom/miui/personalassistant/express/fragment/HistoryFragment;Lcom/miui/personalassistant/express/fragment/HistoryFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$2;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$300(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$2;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0, v1}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$302(Lcom/miui/personalassistant/express/fragment/HistoryFragment;Ljava/util/Set;)Ljava/util/Set;

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$2;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$300(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$2;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$400(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$2;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$300(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->enterEditMode(Ljava/util/Set;)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$2;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$500(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)V

    return-void
.end method
