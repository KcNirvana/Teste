.class Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn$1;
.super Ljava/lang/Object;
.source "FlybirdDialogMultiBtn.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;

.field final synthetic val$desc:Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn$1;->this$0:Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn$1;->val$desc:Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;

    iput p3, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn$1;->this$0:Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;

    invoke-static {v2}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->access$000(Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn$1;->this$0:Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->access$002(Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;J)J

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn$1;->val$desc:Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;->mListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn$1;->val$desc:Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;->mListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn$1;->this$0:Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;

    iget v2, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn$1;->val$index:I

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn$1;->this$0:Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;->access$100(Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogMultiBtn;)V

    goto :goto_0
.end method
