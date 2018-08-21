.class Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage$2;
.super Ljava/lang/Object;
.source "FlybirdLocalViewNopwdSecondPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage$2;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage$2;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;->onBack()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage$2;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;->mOperation:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    invoke-interface {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;->finish()V

    :cond_0
    return-void
.end method
