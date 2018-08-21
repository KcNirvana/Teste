.class Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage$3;
.super Ljava/lang/Object;
.source "FlybirdLocalViewNopwdSecondPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage$3;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage$3;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;->access$000(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage$3;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage$3;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;->access$100(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;)Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;->updateViewData(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    return-void
.end method
