.class Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage$2;
.super Ljava/lang/Object;
.source "FlybirdLocalViewNoPwdValuePage.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage$2;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage$2;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;->access$000(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;)[I

    move-result-object v1

    aget v1, v1, p3

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/a;->b(I)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage$2;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;->saveChangeData(I)V

    return-void
.end method
