.class Lcom/miui/personalassistant/express/fragment/HistoryFragment$ActionModeCallBack;
.super Ljava/lang/Object;
.source "HistoryFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/express/fragment/HistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;


# direct methods
.method private constructor <init>(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$ActionModeCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/personalassistant/express/fragment/HistoryFragment;Lcom/miui/personalassistant/express/fragment/HistoryFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/express/fragment/HistoryFragment$ActionModeCallBack;-><init>(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 5

    const v4, 0x102001a

    move-object v0, p1

    check-cast v0, Lmiui/view/EditActionMode;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    const/4 v2, 0x1

    return v2

    :sswitch_0
    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$ActionModeCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v2, p1}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$2200(Lcom/miui/personalassistant/express/fragment/HistoryFragment;Landroid/view/ActionMode;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$ActionModeCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$2300(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$ActionModeCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$300(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    sget v2, Lmiui/R$string;->select_all:I

    invoke-interface {v0, v4, v2}, Lmiui/view/EditActionMode;->setButton(II)V

    :goto_1
    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$ActionModeCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$400(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->notifyDataSetChanged()V

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$ActionModeCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$500(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$ActionModeCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$600(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$ActionModeCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$300(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    sget v2, Lmiui/R$string;->deselect_all:I

    invoke-interface {v0, v4, v2}, Lmiui/view/EditActionMode;->setButton(II)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1020019 -> :sswitch_1
        0x102001a -> :sswitch_2
        0x1b090319 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x1

    const v0, 0x1b0b025d

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$ActionModeCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v0, p1}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$2102(Lcom/miui/personalassistant/express/fragment/HistoryFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$ActionModeCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v0, v2}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$202(Lcom/miui/personalassistant/express/fragment/HistoryFragment;Z)Z

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$ActionModeCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    iget-object v0, v0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->mActivity:Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x1b100002

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return v2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$ActionModeCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$202(Lcom/miui/personalassistant/express/fragment/HistoryFragment;Z)Z

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$ActionModeCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$400(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->exitEditMode()V

    iget-object v0, p0, Lcom/miui/personalassistant/express/fragment/HistoryFragment$ActionModeCallBack;->this$0:Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;->access$300(Lcom/miui/personalassistant/express/fragment/HistoryFragment;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    check-cast p1, Lmiui/view/EditActionMode;

    const v0, 0x102001a

    sget v1, Lmiui/R$string;->select_all:I

    invoke-interface {p1, v0, v1}, Lmiui/view/EditActionMode;->setButton(II)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
