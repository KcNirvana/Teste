.class Lcom/miui/payment/ui/monthly/MonthRecordListActivity$ActionModeCallBack$1;
.super Ljava/lang/Object;
.source "MonthRecordListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/payment/ui/monthly/MonthRecordListActivity$ActionModeCallBack;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/payment/ui/monthly/MonthRecordListActivity$ActionModeCallBack;

.field final synthetic val$deleteItems:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/payment/ui/monthly/MonthRecordListActivity$ActionModeCallBack;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$ActionModeCallBack$1;->this$1:Lcom/miui/payment/ui/monthly/MonthRecordListActivity$ActionModeCallBack;

    iput-object p2, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$ActionModeCallBack$1;->val$deleteItems:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$ActionModeCallBack$1;->this$1:Lcom/miui/payment/ui/monthly/MonthRecordListActivity$ActionModeCallBack;

    iget-object v0, v0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$ActionModeCallBack;->this$0:Lcom/miui/payment/ui/monthly/MonthRecordListActivity;

    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$ActionModeCallBack$1;->val$deleteItems:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->access$900(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;Ljava/util/List;)V

    return-void
.end method
