.class Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogOneBtn$1;
.super Ljava/lang/Object;
.source "FlybirdDialogOneBtn.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogOneBtn;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogOneBtn;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogOneBtn$1;->this$0:Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogOneBtn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogOneBtn$1;->this$0:Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogOneBtn;

    invoke-static {v2}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogOneBtn;->access$000(Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogOneBtn;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogOneBtn$1;->this$0:Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogOneBtn;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogOneBtn;->access$002(Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogOneBtn;J)J

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogOneBtn$1;->this$0:Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogOneBtn;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogOneBtn;->access$100(Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogOneBtn;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogOneBtn$1;->this$0:Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogOneBtn;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogOneBtn;->access$100(Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogOneBtn;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogOneBtn$1;->this$0:Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogOneBtn;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogOneBtn$1;->this$0:Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogOneBtn;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogOneBtn;->access$200(Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogOneBtn;)V

    goto :goto_0
.end method
