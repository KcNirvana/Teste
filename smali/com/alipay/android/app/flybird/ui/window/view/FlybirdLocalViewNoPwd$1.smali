.class Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd$1;
.super Ljava/lang/Object;
.source "FlybirdLocalViewNoPwd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;

.field final synthetic val$operation:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd$1;->val$operation:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd$1;->val$operation:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;->preView(Ljava/lang/String;)V

    return-void
.end method
