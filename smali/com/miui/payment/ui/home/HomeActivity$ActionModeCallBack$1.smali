.class Lcom/miui/payment/ui/home/HomeActivity$ActionModeCallBack$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/payment/ui/home/HomeActivity$ActionModeCallBack;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/payment/ui/home/HomeActivity$ActionModeCallBack;

.field final synthetic val$deleteItems:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/payment/ui/home/HomeActivity$ActionModeCallBack;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/home/HomeActivity$ActionModeCallBack$1;->this$1:Lcom/miui/payment/ui/home/HomeActivity$ActionModeCallBack;

    iput-object p2, p0, Lcom/miui/payment/ui/home/HomeActivity$ActionModeCallBack$1;->val$deleteItems:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeActivity$ActionModeCallBack$1;->this$1:Lcom/miui/payment/ui/home/HomeActivity$ActionModeCallBack;

    iget-object v0, v0, Lcom/miui/payment/ui/home/HomeActivity$ActionModeCallBack;->this$0:Lcom/miui/payment/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/miui/payment/ui/home/HomeActivity;->access$700(Lcom/miui/payment/ui/home/HomeActivity;)Lcom/miui/payment/ui/home/HomePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeActivity$ActionModeCallBack$1;->this$1:Lcom/miui/payment/ui/home/HomeActivity$ActionModeCallBack;

    iget-object v0, v0, Lcom/miui/payment/ui/home/HomeActivity$ActionModeCallBack;->this$0:Lcom/miui/payment/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/miui/payment/ui/home/HomeActivity;->access$700(Lcom/miui/payment/ui/home/HomeActivity;)Lcom/miui/payment/ui/home/HomePresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/payment/ui/home/HomeActivity$ActionModeCallBack$1;->val$deleteItems:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/miui/payment/ui/home/HomePresenter;->deleteRecords(Ljava/util/List;)V

    :cond_0
    return-void
.end method
