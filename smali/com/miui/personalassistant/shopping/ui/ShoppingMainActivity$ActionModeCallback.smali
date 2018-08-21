.class Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;
.super Ljava/lang/Object;
.source "ShoppingMainActivity.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback"
.end annotation


# instance fields
.field private positionSelected:I

.field final synthetic this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;


# direct methods
.method public constructor <init>(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;I)V
    .locals 3

    iput-object p1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;->positionSelected:I

    const-string/jumbo v0, "ShoppingMainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "long click position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 13

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_0
    const/4 v7, 0x1

    return v7

    :sswitch_0
    iget-object v7, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    invoke-static {v7}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->access$700(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;)V

    goto :goto_0

    :sswitch_1
    iget-object v8, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    iget-object v7, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    invoke-static {v7}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->access$800(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x1

    :goto_1
    invoke-static {v8, v7}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->access$802(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;Z)Z

    check-cast p1, Lmiui/view/EditActionMode;

    const v8, 0x102001a

    iget-object v7, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    invoke-static {v7}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->access$800(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget v7, Lmiui/R$string;->deselect_all:I

    :goto_2
    invoke-interface {p1, v8, v7}, Lmiui/view/EditActionMode;->setButton(II)V

    iget-object v7, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    invoke-static {v7}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->access$600(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;)Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    invoke-static {v8}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->access$800(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;->selectAllCheckbox(Z)V

    iget-object v7, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    invoke-static {v7}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->access$600(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;)Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;->updateMenu()V

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    sget v7, Lmiui/R$string;->select_all:I

    goto :goto_2

    :sswitch_2
    iget-object v7, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    invoke-static {v7}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->access$600(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;)Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;->getCheckedData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    new-instance v7, Lmiui/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    invoke-direct {v7, v8}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    invoke-virtual {v8}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1b0b03c1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    invoke-virtual {v8}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1b0a000b

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v6, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    invoke-virtual {v8}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1b0b00c6

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback$2;

    invoke-direct {v9, p0, v6, v1, p1}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback$2;-><init>(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;ILjava/util/List;Landroid/view/ActionMode;)V

    invoke-virtual {v7, v8, v9}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    invoke-virtual {v8}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1b0b00c5

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback$1;

    invoke-direct {v9, p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback$1;-><init>(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;)V

    invoke-virtual {v7, v8, v9}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    goto/16 :goto_0

    :sswitch_3
    iget-object v7, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    invoke-static {v7}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->access$600(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;)Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;->getCheckedData()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    const/4 v7, 0x0

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/personalassistant/shopping/bean/Shopping;

    new-instance v2, Lcom/miui/personalassistant/ui/widget/EditDialog;

    iget-object v7, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    new-instance v8, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback$3;

    invoke-direct {v8, p0, v4}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback$3;-><init>(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;Lcom/miui/personalassistant/shopping/bean/Shopping;)V

    invoke-direct {v2, v7, v8}, Lcom/miui/personalassistant/ui/widget/EditDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v7, v2, Lcom/miui/personalassistant/ui/widget/EditDialog;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v4}, Lcom/miui/personalassistant/shopping/bean/Shopping;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Lcom/miui/personalassistant/ui/widget/EditDialog;->show()V

    goto/16 :goto_0

    :sswitch_4
    iget-object v7, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    invoke-static {v7}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->access$600(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;)Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;->getCheckedData()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/personalassistant/shopping/bean/Shopping;

    iget-object v7, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    invoke-virtual {v4}, Lcom/miui/personalassistant/shopping/bean/Shopping;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/miui/personalassistant/shopping/bean/Shopping;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/miui/personalassistant/favorite/util/ShareUtil;->shareText(Lmiui/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1020019 -> :sswitch_0
        0x102001a -> :sswitch_1
        0x1b090319 -> :sswitch_2
        0x1b0903d6 -> :sswitch_3
        0x1b0903d7 -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    invoke-static {v1, p1}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->access$002(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->access$000(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;)Landroid/view/ActionMode;

    move-result-object v1

    const v2, 0x1b0b025d

    invoke-virtual {v1, v2}, Landroid/view/ActionMode;->setTitle(I)V

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    invoke-virtual {v1}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x1b100003

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    const v2, 0x1b090319

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->access$102(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    const v2, 0x1b0903d6

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->access$202(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    const v2, 0x1b0903d7

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->access$302(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;

    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->access$700(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;)V

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->access$002(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->access$400(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->access$500(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->access$400(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->access$500(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;->this$0:Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->access$600(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;)Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;->positionSelected:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;->onCheckBoxClick(Landroid/view/View;I)V

    const/4 v0, 0x1

    return v0
.end method
