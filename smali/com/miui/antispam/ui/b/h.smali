.class public Lcom/miui/antispam/ui/b/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# instance fields
.field private Xi:I

.field final synthetic Xj:Lcom/miui/antispam/ui/b/g;


# direct methods
.method public constructor <init>(Lcom/miui/antispam/ui/b/g;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/b/h;->Xj:Lcom/miui/antispam/ui/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return v3

    :sswitch_0
    iget-object v0, p0, Lcom/miui/antispam/ui/b/h;->Xj:Lcom/miui/antispam/ui/b/g;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/antispam/ui/b/g;->VF(Landroid/view/ActionMode;Z)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/miui/antispam/ui/b/h;->Xj:Lcom/miui/antispam/ui/b/g;

    invoke-virtual {v0, p1, v3}, Lcom/miui/antispam/ui/b/g;->VF(Landroid/view/ActionMode;Z)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/miui/antispam/ui/b/h;->Xj:Lcom/miui/antispam/ui/b/g;

    iget-object v1, p0, Lcom/miui/antispam/ui/b/h;->Xj:Lcom/miui/antispam/ui/b/g;

    iget-boolean v1, v1, Lcom/miui/antispam/ui/b/g;->Xg:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/miui/antispam/ui/b/g;->Xg:Z

    check-cast p1, Lmiui/view/EditActionMode;

    iget-object v0, p0, Lcom/miui/antispam/ui/b/h;->Xj:Lcom/miui/antispam/ui/b/g;

    iget-boolean v0, v0, Lcom/miui/antispam/ui/b/g;->Xg:Z

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

    nop

    :sswitch_data_0
    .sparse-switch
        0x102001a -> :sswitch_2
        0x7f0a0425 -> :sswitch_1
        0x7f0a0426 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/antispam/ui/b/h;->Xj:Lcom/miui/antispam/ui/b/g;

    iget-object v0, v0, Lcom/miui/antispam/ui/b/g;->Xb:Lcom/miui/antispam/ui/a/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/antispam/ui/a/d;->Vj(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/h;->Xj:Lcom/miui/antispam/ui/b/g;

    iget-object v0, v0, Lcom/miui/antispam/ui/b/g;->WZ:Lmiui/app/Activity;

    invoke-virtual {v0}, Lmiui/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100004

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a0425

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/b/h;->Xj:Lcom/miui/antispam/ui/b/g;

    iget-object v1, v1, Lcom/miui/antispam/ui/b/g;->WZ:Lmiui/app/Activity;

    invoke-virtual {v1}, Lmiui/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    sget-object v0, Landroid/provider/MiuiSettings$AntiSpam;->ACTION_SOURCE_OTHER:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/antispam/ui/b/h;->Xj:Lcom/miui/antispam/ui/b/g;

    iget-object v1, v1, Lcom/miui/antispam/ui/b/g;->Xe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/b/h;->Xj:Lcom/miui/antispam/ui/b/g;

    iget-object v0, v0, Lcom/miui/antispam/ui/b/g;->WZ:Lmiui/app/Activity;

    invoke-virtual {v0}, Lmiui/app/Activity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v0

    iput v0, p0, Lcom/miui/antispam/ui/b/h;->Xi:I

    iget-object v0, p0, Lcom/miui/antispam/ui/b/h;->Xj:Lcom/miui/antispam/ui/b/g;

    iget-object v0, v0, Lcom/miui/antispam/ui/b/g;->WZ:Lmiui/app/Activity;

    invoke-virtual {v0}, Lmiui/app/Activity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    iget v1, p0, Lcom/miui/antispam/ui/b/h;->Xi:I

    rsub-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->removeFragmentTabAt(I)V

    :cond_0
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
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/miui/antispam/ui/b/h;->Xj:Lcom/miui/antispam/ui/b/g;

    iget-object v0, v0, Lcom/miui/antispam/ui/b/g;->Xb:Lcom/miui/antispam/ui/a/d;

    invoke-virtual {v0, v6}, Lcom/miui/antispam/ui/a/d;->Vj(Z)V

    sget-object v0, Landroid/provider/MiuiSettings$AntiSpam;->ACTION_SOURCE_OTHER:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/antispam/ui/b/h;->Xj:Lcom/miui/antispam/ui/b/g;

    iget-object v1, v1, Lcom/miui/antispam/ui/b/g;->Xe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/b/h;->Xj:Lcom/miui/antispam/ui/b/g;

    iget-object v0, v0, Lcom/miui/antispam/ui/b/g;->WZ:Lmiui/app/Activity;

    invoke-virtual {v0}, Lmiui/app/Activity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    iget v1, p0, Lcom/miui/antispam/ui/b/h;->Xi:I

    if-nez v1, :cond_1

    const-string/jumbo v1, "call"

    :goto_0
    iget v2, p0, Lcom/miui/antispam/ui/b/h;->Xi:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/miui/antispam/ui/b/h;->Xj:Lcom/miui/antispam/ui/b/g;

    iget-object v2, v2, Lcom/miui/antispam/ui/b/g;->WZ:Lmiui/app/Activity;

    invoke-virtual {v2}, Lmiui/app/Activity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f07002f

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v2

    :goto_1
    iget v3, p0, Lcom/miui/antispam/ui/b/h;->Xi:I

    rsub-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/miui/antispam/ui/b/h;->Xi:I

    if-nez v4, :cond_3

    const-class v4, Lcom/miui/antispam/ui/b/b;

    :goto_2
    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lmiui/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;ILjava/lang/Class;Landroid/os/Bundle;Z)I

    iget-object v0, p0, Lcom/miui/antispam/ui/b/h;->Xj:Lcom/miui/antispam/ui/b/g;

    iget-object v0, v0, Lcom/miui/antispam/ui/b/g;->WZ:Lmiui/app/Activity;

    invoke-virtual {v0}, Lmiui/app/Activity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    iget v1, p0, Lcom/miui/antispam/ui/b/h;->Xi:I

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setSelectedNavigationItem(I)V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v1, "msg"

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/miui/antispam/ui/b/h;->Xj:Lcom/miui/antispam/ui/b/g;

    iget-object v2, v2, Lcom/miui/antispam/ui/b/g;->WZ:Lmiui/app/Activity;

    invoke-virtual {v2}, Lmiui/app/Activity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f07002e

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v2

    goto :goto_1

    :cond_3
    const-class v4, Lcom/miui/antispam/ui/b/c;

    goto :goto_2
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 4

    const/4 v3, 0x0

    const v2, 0x102001a

    iget-object v0, p0, Lcom/miui/antispam/ui/b/h;->Xj:Lcom/miui/antispam/ui/b/g;

    iget-object v0, v0, Lcom/miui/antispam/ui/b/g;->WW:Lmiui/widget/EditableListView;

    invoke-virtual {v0}, Lmiui/widget/EditableListView;->getCheckedItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/miui/antispam/ui/b/h;->Xj:Lcom/miui/antispam/ui/b/g;

    iget-object v1, v1, Lcom/miui/antispam/ui/b/g;->WW:Lmiui/widget/EditableListView;

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
