.class Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd$2;
.super Ljava/lang/Object;
.source "FlybirdLocalViewNoPwd.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;

.field final synthetic val$operation:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd$2;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd$2;->val$operation:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

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

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd$2;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;->access$000(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;)[I

    move-result-object v1

    aget v1, v1, p3

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/a;->b(I)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd$2;->val$operation:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;->preView(Ljava/lang/String;)V

    return-void
.end method
