.class final Lcom/miui/common/card/models/AdvCardModel$2;
.super Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/common/card/models/AdvCardModel;

.field final synthetic val$context:Lcom/miui/securityscan/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/common/card/models/AdvCardModel;Lcom/miui/securityscan/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvCardModel$2;->this$0:Lcom/miui/common/card/models/AdvCardModel;

    iput-object p2, p0, Lcom/miui/common/card/models/AdvCardModel$2;->val$context:Lcom/miui/securityscan/MainActivity;

    invoke-direct {p0}, Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(I)V
    .locals 3

    if-lez p1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/miui/common/card/models/AdvCardModel$2$1;

    iget-object v2, p0, Lcom/miui/common/card/models/AdvCardModel$2;->val$context:Lcom/miui/securityscan/MainActivity;

    invoke-direct {v1, p0, v2}, Lcom/miui/common/card/models/AdvCardModel$2$1;-><init>(Lcom/miui/common/card/models/AdvCardModel$2;Lcom/miui/securityscan/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-static {}, Lcom/miui/applicationlock/utils/d;->getInstance()Lcom/miui/applicationlock/utils/d;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/card/models/AdvCardModel$2;->val$context:Lcom/miui/securityscan/MainActivity;

    invoke-virtual {v1}, Lcom/miui/securityscan/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/utils/d;->aeg(Landroid/content/Context;)V

    return-void
.end method
