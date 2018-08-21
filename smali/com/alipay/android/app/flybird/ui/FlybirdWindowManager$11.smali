.class Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$11;
.super Ljava/lang/Object;
.source "FlybirdWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

.field final synthetic val$bizId:I

.field final synthetic val$result:Ljava/lang/Object;

.field final synthetic val$type:I

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;IILjava/lang/Object;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$11;->this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    iput p2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$11;->val$bizId:I

    iput p3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$11;->val$what:I

    iput-object p4, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$11;->val$result:Ljava/lang/Object;

    iput p5, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$11;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$11;->this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->disposeUI()V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$11;->this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$11;->val$bizId:I

    iget v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$11;->val$what:I

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$11;->val$result:Ljava/lang/Object;

    iget v4, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$11;->val$type:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->access$2300(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;IILjava/lang/Object;I)V

    return-void
.end method
