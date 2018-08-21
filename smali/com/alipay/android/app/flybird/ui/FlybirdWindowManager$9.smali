.class Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$9;
.super Ljava/lang/Object;
.source "FlybirdWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

.field final synthetic val$frameData:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$9;->this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$9;->val$frameData:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$9;->val$frameData:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmTpId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$9;->val$frameData:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmTpId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "QUICKPAY@cashier-activity-flex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/flybird/ui/FlyBirdUiMessageHandlerAdapter;->getPayProgressListener()Lcom/alipay/android/app/flybird/ui/FlyBirdPayProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$9;->val$frameData:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmBizId()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$9;->val$frameData:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {v2}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getEndCode()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$9;->val$frameData:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {v3}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getMemo()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$9;->val$frameData:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {v4}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getResult()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/flybird/ui/FlyBirdPayProgressListener;->onPayProgress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
