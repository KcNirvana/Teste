.class Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage$4;
.super Ljava/lang/Object;
.source "FlybirdLocalViewNopwdSecondPage.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage$4;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage$4;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;->mLocalView:Landroid/view/View;

    const-string/jumbo v1, "nopwd_value_item"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage$4;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;

    invoke-static {v1, p2}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;->access$200(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;Z)V

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage$4;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;->access$300(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;)V

    :goto_0
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alipay/android/app/ui/quickpay/util/a;->c(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage$4;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;->saveChangeData(I)V

    return-void

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage$4;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;->access$400(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/a;->b(I)V

    goto :goto_0
.end method
