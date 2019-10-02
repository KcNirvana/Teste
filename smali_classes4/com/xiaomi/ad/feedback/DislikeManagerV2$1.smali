.class Lcom/xiaomi/ad/feedback/DislikeManagerV2$1;
.super Lcom/miui/b/a/a;
.source "DislikeManagerV2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/b/a/a<",
        "Ljava/lang/Void;",
        "Lcom/xiaomi/ad/feedback/IAdFeedbackService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/ad/feedback/DislikeManagerV2;

.field final synthetic val$adPassback:Ljava/lang/String;

.field final synthetic val$configKey:Ljava/lang/String;

.field final synthetic val$listener:Lcom/xiaomi/ad/feedback/IAdFeedbackListener;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/ad/feedback/DislikeManagerV2;Landroid/content/Context;Ljava/lang/Class;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/ad/feedback/DislikeManagerV2$1;->this$0:Lcom/xiaomi/ad/feedback/DislikeManagerV2;

    iput-object p4, p0, Lcom/xiaomi/ad/feedback/DislikeManagerV2$1;->val$listener:Lcom/xiaomi/ad/feedback/IAdFeedbackListener;

    iput-object p5, p0, Lcom/xiaomi/ad/feedback/DislikeManagerV2$1;->val$packageName:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaomi/ad/feedback/DislikeManagerV2$1;->val$configKey:Ljava/lang/String;

    iput-object p7, p0, Lcom/xiaomi/ad/feedback/DislikeManagerV2$1;->val$adPassback:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/miui/b/a/a;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic innerInvoke(Landroid/os/IInterface;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/xiaomi/ad/feedback/IAdFeedbackService;

    invoke-virtual {p0, p1}, Lcom/xiaomi/ad/feedback/DislikeManagerV2$1;->innerInvoke(Lcom/xiaomi/ad/feedback/IAdFeedbackService;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public innerInvoke(Lcom/xiaomi/ad/feedback/IAdFeedbackService;)Ljava/lang/Void;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/ad/feedback/DislikeManagerV2$1;->val$listener:Lcom/xiaomi/ad/feedback/IAdFeedbackListener;

    iget-object v1, p0, Lcom/xiaomi/ad/feedback/DislikeManagerV2$1;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/ad/feedback/DislikeManagerV2$1;->val$configKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/ad/feedback/DislikeManagerV2$1;->val$adPassback:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/xiaomi/ad/feedback/IAdFeedbackService;->showFeedbackWindowAndTrackResult(Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "DislikeManagerV2"

    const-string v1, "showDislikeWindows: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
