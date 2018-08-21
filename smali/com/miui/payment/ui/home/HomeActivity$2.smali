.class Lcom/miui/payment/ui/home/HomeActivity$2;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/miui/payment/ui/recordlist/RecordsAdapter$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/payment/ui/home/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/payment/ui/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/miui/payment/ui/home/HomeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/home/HomeActivity$2;->this$0:Lcom/miui/payment/ui/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClicked(Landroid/view/View;Lcom/miui/payment/ui/recordlist/ItemVH;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeActivity$2;->this$0:Lcom/miui/payment/ui/home/HomeActivity;

    new-instance v1, Lcom/miui/payment/ui/home/HomeActivity$ActionModeCallBack;

    iget-object v2, p0, Lcom/miui/payment/ui/home/HomeActivity$2;->this$0:Lcom/miui/payment/ui/home/HomeActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/miui/payment/ui/home/HomeActivity$ActionModeCallBack;-><init>(Lcom/miui/payment/ui/home/HomeActivity;Lcom/miui/payment/ui/home/HomeActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/payment/ui/home/HomeActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    return-void
.end method

.method public onUpdateMenu(IZ)V
    .locals 8

    const v7, 0x102001a

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/miui/payment/ui/home/HomeActivity$2;->this$0:Lcom/miui/payment/ui/home/HomeActivity;

    invoke-static {v1, p2}, Lcom/miui/payment/ui/home/HomeActivity;->access$202(Lcom/miui/payment/ui/home/HomeActivity;Z)Z

    if-lez p1, :cond_1

    iget-object v1, p0, Lcom/miui/payment/ui/home/HomeActivity$2;->this$0:Lcom/miui/payment/ui/home/HomeActivity;

    invoke-virtual {v1}, Lcom/miui/payment/ui/home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0a000a

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/payment/ui/home/HomeActivity$2;->this$0:Lcom/miui/payment/ui/home/HomeActivity;

    invoke-static {v1}, Lcom/miui/payment/ui/home/HomeActivity;->access$300(Lcom/miui/payment/ui/home/HomeActivity;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/payment/ui/home/HomeActivity$2;->this$0:Lcom/miui/payment/ui/home/HomeActivity;

    invoke-static {v1}, Lcom/miui/payment/ui/home/HomeActivity;->access$400(Lcom/miui/payment/ui/home/HomeActivity;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/miui/payment/ui/home/HomeActivity$2;->this$0:Lcom/miui/payment/ui/home/HomeActivity;

    invoke-static {v1}, Lcom/miui/payment/ui/home/HomeActivity;->access$300(Lcom/miui/payment/ui/home/HomeActivity;)Landroid/view/ActionMode;

    move-result-object v1

    check-cast v1, Lmiui/view/EditActionMode;

    if-eqz p2, :cond_0

    sget v2, Lmiui/R$string;->deselect_all:I

    :goto_0
    invoke-interface {v1, v7, v2}, Lmiui/view/EditActionMode;->setButton(II)V

    :goto_1
    return-void

    :cond_0
    sget v2, Lmiui/R$string;->select_all:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/payment/ui/home/HomeActivity$2;->this$0:Lcom/miui/payment/ui/home/HomeActivity;

    invoke-static {v1}, Lcom/miui/payment/ui/home/HomeActivity;->access$300(Lcom/miui/payment/ui/home/HomeActivity;)Landroid/view/ActionMode;

    move-result-object v1

    const v2, 0x1b0b0329

    invoke-virtual {v1, v2}, Landroid/view/ActionMode;->setTitle(I)V

    iget-object v1, p0, Lcom/miui/payment/ui/home/HomeActivity$2;->this$0:Lcom/miui/payment/ui/home/HomeActivity;

    invoke-static {v1}, Lcom/miui/payment/ui/home/HomeActivity;->access$400(Lcom/miui/payment/ui/home/HomeActivity;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/miui/payment/ui/home/HomeActivity$2;->this$0:Lcom/miui/payment/ui/home/HomeActivity;

    invoke-static {v1}, Lcom/miui/payment/ui/home/HomeActivity;->access$300(Lcom/miui/payment/ui/home/HomeActivity;)Landroid/view/ActionMode;

    move-result-object v1

    check-cast v1, Lmiui/view/EditActionMode;

    sget v2, Lmiui/R$string;->select_all:I

    invoke-interface {v1, v7, v2}, Lmiui/view/EditActionMode;->setButton(II)V

    goto :goto_1
.end method
