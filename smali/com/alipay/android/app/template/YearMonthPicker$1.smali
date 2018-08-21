.class Lcom/alipay/android/app/template/YearMonthPicker$1;
.super Ljava/lang/Object;
.source "YearMonthPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/template/YearMonthPicker;

.field final synthetic val$isUp:Z

.field final synthetic val$isYear:Z


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/YearMonthPicker;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/template/YearMonthPicker$1;->this$0:Lcom/alipay/android/app/template/YearMonthPicker;

    iput-boolean p2, p0, Lcom/alipay/android/app/template/YearMonthPicker$1;->val$isUp:Z

    iput-boolean p3, p0, Lcom/alipay/android/app/template/YearMonthPicker$1;->val$isYear:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$1;->val$isUp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$1;->this$0:Lcom/alipay/android/app/template/YearMonthPicker;

    iget-boolean v1, p0, Lcom/alipay/android/app/template/YearMonthPicker$1;->val$isYear:Z

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/YearMonthPicker;->increment(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker$1;->this$0:Lcom/alipay/android/app/template/YearMonthPicker;

    iget-boolean v1, p0, Lcom/alipay/android/app/template/YearMonthPicker$1;->val$isYear:Z

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/YearMonthPicker;->decrement(Z)V

    goto :goto_0
.end method
