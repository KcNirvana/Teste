.class Lcom/alipay/android/app/template/YearMonthPicker$3;
.super Ljava/lang/Object;
.source "YearMonthPicker.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/template/YearMonthPicker;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/YearMonthPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/template/YearMonthPicker$3;->this$0:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$3;->this$0:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-static {v0}, Lcom/alipay/android/app/template/YearMonthPicker;->access$200(Lcom/alipay/android/app/template/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$3;->this$0:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-static {v0, v2}, Lcom/alipay/android/app/template/YearMonthPicker;->access$202(Lcom/alipay/android/app/template/YearMonthPicker;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$3;->this$0:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-static {v0}, Lcom/alipay/android/app/template/YearMonthPicker;->access$300(Lcom/alipay/android/app/template/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$3;->this$0:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-static {v0, v2}, Lcom/alipay/android/app/template/YearMonthPicker;->access$302(Lcom/alipay/android/app/template/YearMonthPicker;Z)Z

    :cond_2
    return v2
.end method
