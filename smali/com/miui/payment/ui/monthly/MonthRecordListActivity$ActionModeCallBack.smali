.class Lcom/miui/payment/ui/monthly/MonthRecordListActivity$ActionModeCallBack;
.super Ljava/lang/Object;
.source "MonthRecordListActivity.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/payment/ui/monthly/MonthRecordListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/payment/ui/monthly/MonthRecordListActivity;


# direct methods
.method private constructor <init>(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$ActionModeCallBack;->this$0:Lcom/miui/payment/ui/monthly/MonthRecordListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;Lcom/miui/payment/ui/monthly/MonthRecordListActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$ActionModeCallBack;-><init>(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 11

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    check-cast v1, Lmiui/view/EditActionMode;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_0
    return v6

    :sswitch_0
    iget-object v7, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$ActionModeCallBack;->this$0:Lcom/miui/payment/ui/monthly/MonthRecordListActivity;

    invoke-static {v7}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->access$300(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;)Lcom/miui/payment/ui/monthly/MonthRecordListAdapter;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/miui/payment/ui/monthly/MonthRecordListAdapter;->setMultiChoice(ZZ)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v7, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$ActionModeCallBack;->this$0:Lcom/miui/payment/ui/monthly/MonthRecordListActivity;

    iget-object v8, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$ActionModeCallBack;->this$0:Lcom/miui/payment/ui/monthly/MonthRecordListActivity;

    invoke-static {v8}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->access$700(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;)Z

    move-result v8

    if-nez v8, :cond_1

    move v5, v6

    :cond_1
    invoke-static {v7, v5}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->access$702(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;Z)Z

    const v7, 0x102001a

    iget-object v5, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$ActionModeCallBack;->this$0:Lcom/miui/payment/ui/monthly/MonthRecordListActivity;

    invoke-static {v5}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->access$700(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget v5, Lmiui/R$string;->deselect_all:I

    :goto_1
    invoke-interface {v1, v7, v5}, Lmiui/view/EditActionMode;->setButton(II)V

    iget-object v5, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$ActionModeCallBack;->this$0:Lcom/miui/payment/ui/monthly/MonthRecordListActivity;

    invoke-static {v5}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->access$300(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;)Lcom/miui/payment/ui/monthly/MonthRecordListAdapter;

    move-result-object v5

    iget-object v7, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$ActionModeCallBack;->this$0:Lcom/miui/payment/ui/monthly/MonthRecordListActivity;

    invoke-static {v7}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->access$700(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;)Z

    move-result v7

    invoke-virtual {v5, v7}, Lcom/miui/payment/ui/monthly/MonthRecordListAdapter;->setAllItemChecked(Z)V

    iget-object v5, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$ActionModeCallBack;->this$0:Lcom/miui/payment/ui/monthly/MonthRecordListActivity;

    invoke-static {v5}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->access$300(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;)Lcom/miui/payment/ui/monthly/MonthRecordListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/payment/ui/monthly/MonthRecordListAdapter;->updateMenu()V

    goto :goto_0

    :cond_2
    sget v5, Lmiui/R$string;->select_all:I

    goto :goto_1

    :sswitch_2
    iget-object v7, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$ActionModeCallBack;->this$0:Lcom/miui/payment/ui/monthly/MonthRecordListActivity;

    invoke-static {v7}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->access$300(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;)Lcom/miui/payment/ui/monthly/MonthRecordListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/payment/ui/monthly/MonthRecordListAdapter;->getCheckedItemIds()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iget-object v7, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$ActionModeCallBack;->this$0:Lcom/miui/payment/ui/monthly/MonthRecordListActivity;

    const v8, 0x1b0b0324

    invoke-virtual {v7, v8}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$ActionModeCallBack;->this$0:Lcom/miui/payment/ui/monthly/MonthRecordListActivity;

    invoke-virtual {v7}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1b0a0009

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-virtual {v7, v8, v3, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$ActionModeCallBack;->this$0:Lcom/miui/payment/ui/monthly/MonthRecordListActivity;

    invoke-virtual {v5}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    new-instance v7, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$ActionModeCallBack$1;

    invoke-direct {v7, p0, v0}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$ActionModeCallBack$1;-><init>(Lcom/miui/payment/ui/monthly/MonthRecordListActivity$ActionModeCallBack;Ljava/util/List;)V

    invoke-static {v5, v4, v2, v7}, Lcom/miui/payment/ui/dialog/BaseDialogFragment;->showSimpleDialog(Landroid/app/FragmentManager;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1020019 -> :sswitch_0
        0x102001a -> :sswitch_1
        0x1b0903de -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$ActionModeCallBack;->this$0:Lcom/miui/payment/ui/monthly/MonthRecordListActivity;

    invoke-static {v1, p1}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->access$402(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$ActionModeCallBack;->this$0:Lcom/miui/payment/ui/monthly/MonthRecordListActivity;

    invoke-static {v1}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->access$400(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;)Landroid/view/ActionMode;

    move-result-object v1

    const v2, 0x1b0b0329

    invoke-virtual {v1, v2}, Landroid/view/ActionMode;->setTitle(I)V

    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$ActionModeCallBack;->this$0:Lcom/miui/payment/ui/monthly/MonthRecordListActivity;

    invoke-virtual {v1}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x1b100008

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$ActionModeCallBack;->this$0:Lcom/miui/payment/ui/monthly/MonthRecordListActivity;

    const v2, 0x1b0903de

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->access$802(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;

    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$ActionModeCallBack;->this$0:Lcom/miui/payment/ui/monthly/MonthRecordListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->access$402(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
