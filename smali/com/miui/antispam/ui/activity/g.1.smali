.class Lcom/miui/antispam/ui/activity/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# instance fields
.field final synthetic SB:Lcom/miui/antispam/ui/activity/KeywordListActivity;


# direct methods
.method private constructor <init>(Lcom/miui/antispam/ui/activity/KeywordListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/g;->SB:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/antispam/ui/activity/KeywordListActivity;Lcom/miui/antispam/ui/activity/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antispam/ui/activity/g;-><init>(Lcom/miui/antispam/ui/activity/KeywordListActivity;)V

    return-void
.end method

.method private TN([JLandroid/util/SparseBooleanArray;)V
    .locals 3

    new-instance v0, Lcom/miui/antispam/ui/activity/F;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/antispam/ui/activity/F;-><init>(Lcom/miui/antispam/ui/activity/g;Landroid/util/SparseBooleanArray;[J)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/antispam/ui/activity/F;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private TO(Landroid/view/ActionMode;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/g;->SB:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->TH(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Lmiui/widget/EditableListView;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/widget/EditableListView;->getCheckedItemIds()[J

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/g;->SB:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->TH(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Lmiui/widget/EditableListView;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/widget/EditableListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/g;->SB:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f07005c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/miui/antispam/ui/activity/E;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/miui/antispam/ui/activity/E;-><init>(Lcom/miui/antispam/ui/activity/g;Landroid/view/ActionMode;[JLandroid/util/SparseBooleanArray;)V

    const v0, 0x7f07004a

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic TP(Lcom/miui/antispam/ui/activity/g;[JLandroid/util/SparseBooleanArray;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/antispam/ui/activity/g;->TN([JLandroid/util/SparseBooleanArray;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :sswitch_0
    invoke-direct {p0, p1}, Lcom/miui/antispam/ui/activity/g;->TO(Landroid/view/ActionMode;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/g;->SB:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/g;->SB:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    iget-boolean v1, v1, Lcom/miui/antispam/ui/activity/KeywordListActivity;->St:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->St:Z

    check-cast p1, Lmiui/view/EditActionMode;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/g;->SB:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    iget-boolean v0, v0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->St:Z

    if-eqz v0, :cond_0

    sget v0, Lmiui/R$drawable;->action_mode_title_button_select_all_light:I

    :goto_1
    const v1, 0x102001a

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lmiui/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    goto :goto_0

    :cond_0
    sget v0, Lmiui/R$drawable;->action_mode_title_button_deselect_all_light:I

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x102001a -> :sswitch_1
        0x7f0a0426 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/g;->SB:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100004

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a0425

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-object v0, p1

    check-cast v0, Lmiui/view/EditActionMode;

    sget v1, Lmiui/R$drawable;->action_mode_title_button_cancel_light:I

    const v2, 0x1020019

    invoke-interface {v0, v2, v3, v1}, Lmiui/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    check-cast p1, Lmiui/view/EditActionMode;

    sget v0, Lmiui/R$drawable;->action_mode_title_button_select_all_light:I

    const v1, 0x102001a

    invoke-interface {p1, v1, v3, v0}, Lmiui/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 4

    const/4 v3, 0x0

    const v2, 0x102001a

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/g;->SB:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->TH(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Lmiui/widget/EditableListView;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/widget/EditableListView;->getCheckedItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/g;->SB:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->TH(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Lmiui/widget/EditableListView;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/widget/EditableListView;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    check-cast p1, Lmiui/view/EditActionMode;

    sget v0, Lmiui/R$drawable;->action_mode_title_button_deselect_all_light:I

    invoke-interface {p1, v2, v3, v0}, Lmiui/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    :goto_0
    return-void

    :cond_0
    check-cast p1, Lmiui/view/EditActionMode;

    sget v0, Lmiui/R$drawable;->action_mode_title_button_select_all_light:I

    invoke-interface {p1, v2, v3, v0}, Lmiui/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
