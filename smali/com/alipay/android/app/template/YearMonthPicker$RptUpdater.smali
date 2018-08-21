.class Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;
.super Ljava/lang/Object;
.source "YearMonthPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/template/YearMonthPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RptUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/template/YearMonthPicker;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/YearMonthPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-wide/16 v4, 0x64

    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-static {v0}, Lcom/alipay/android/app/template/YearMonthPicker;->access$200(Lcom/alipay/android/app/template/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-static {v0}, Lcom/alipay/android/app/template/YearMonthPicker;->access$000(Lcom/alipay/android/app/template/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/YearMonthPicker;->incrementYear()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-static {v0}, Lcom/alipay/android/app/template/YearMonthPicker;->access$100(Lcom/alipay/android/app/template/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/YearMonthPicker;->incrementMonth()V

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/android/app/template/YearMonthPicker;

    iget-object v0, v0, Lcom/alipay/android/app/template/YearMonthPicker;->rptUpdateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;

    iget-object v2, p0, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;-><init>(Lcom/alipay/android/app/template/YearMonthPicker;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-static {v0}, Lcom/alipay/android/app/template/YearMonthPicker;->access$300(Lcom/alipay/android/app/template/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-static {v0}, Lcom/alipay/android/app/template/YearMonthPicker;->access$000(Lcom/alipay/android/app/template/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/YearMonthPicker;->decrementYear()V

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-static {v0}, Lcom/alipay/android/app/template/YearMonthPicker;->access$100(Lcom/alipay/android/app/template/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/YearMonthPicker;->decrementMonth()V

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/android/app/template/YearMonthPicker;

    iget-object v0, v0, Lcom/alipay/android/app/template/YearMonthPicker;->rptUpdateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;

    iget-object v2, p0, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;->this$0:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/template/YearMonthPicker$RptUpdater;-><init>(Lcom/alipay/android/app/template/YearMonthPicker;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method
