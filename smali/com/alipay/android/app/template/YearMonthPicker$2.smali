.class Lcom/alipay/android/app/template/YearMonthPicker$2;
.super Ljava/lang/Object;
.source "YearMonthPicker.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/template/YearMonthPicker;

.field final synthetic val$isUp:Z

.field final synthetic val$isYear:Z


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/YearMonthPicker;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/template/YearMonthPicker$2;->this$0:Lcom/alipay/android/app/template/YearMonthPicker;

    iput-boolean p2, p0, Lcom/alipay/android/app/template/YearMonthPicker$2;->val$isYear:Z

    iput-boolean p3, p0, Lcom/alipay/android/app/template/YearMonthPicker$2;->val$isUp:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$2;->this$0:Lcom/alipay/android/app/template/YearMonthPicker;

    iget-boolean v3, p0, Lcom/alipay/android/app/template/YearMonthPicker$2;->val$isYear:Z

    invoke-static {v0, v3}, Lcom/alipay/android/app/template/YearMonthPicker;->access$002(Lcom/alipay/android/app/template/YearMonthPicker;Z)Z

    iget-object v3, p0, Lcom/alipay/android/app/template/YearMonthPicker$2;->this$0:Lcom/alipay/android/app/template/YearMonthPicker;

    iget-boolean v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$2;->val$isYear:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/alipay/android/app/template/YearMonthPicker;->access$102(Lcom/alipay/android/app/template/YearMonthPicker;Z)Z

    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$2;->this$0:Lcom/alipay/android/app/template/YearMonthPicker;

    iget-boolean v3, p0, Lcom/alipay/android/app/template/YearMonthPicker$2;->val$isUp:Z

    invoke-static {v0, v3}, Lcom/alipay/android/app/template/YearMonthPicker;->access$202(Lcom/alipay/android/app/template/YearMonthPicker;Z)Z

    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$2;->this$0:Lcom/alipay/android/app/template/YearMonthPicker;

    iget-boolean v3, p0, Lcom/alipay/android/app/template/YearMonthPicker$2;->val$isUp:Z

    if-nez v3, :cond_1

    :goto_1
    invoke-static {v0, v1}, Lcom/alipay/android/app/template/YearMonthPicker;->access$302(Lcom/alipay/android/app/template/YearMonthPicker;Z)Z

    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$2;->this$0:Lcom/alipay/android/app/template/YearMonthPicker;

    iget-object v0, v0, Lcom/alipay/android/app/template/YearMonthPicker;->rptUpdateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;

    iget-object v3, p0, Lcom/alipay/android/app/template/YearMonthPicker$2;->this$0:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-direct {v1, v3}, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;-><init>(Lcom/alipay/android/app/template/YearMonthPicker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
