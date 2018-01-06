.class Lcom/xiaomi/ad/feedback/DislikeManagerV2$2;
.super Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker",
        "<",
        "Ljava/lang/Void;",
        "Lcom/xiaomi/ad/feedback/IAdFeedbackService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/ad/feedback/DislikeManagerV2;

.field final synthetic val$adPassbackList:Ljava/util/List;

.field final synthetic val$configKey:Ljava/lang/String;

.field final synthetic val$listener:Lcom/xiaomi/ad/feedback/IAdFeedbackListener;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/ad/feedback/DislikeManagerV2;Landroid/content/Context;Ljava/lang/Class;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/ad/feedback/DislikeManagerV2$2;->this$0:Lcom/xiaomi/ad/feedback/DislikeManagerV2;

    iput-object p4, p0, Lcom/xiaomi/ad/feedback/DislikeManagerV2$2;->val$listener:Lcom/xiaomi/ad/feedback/IAdFeedbackListener;

    iput-object p5, p0, Lcom/xiaomi/ad/feedback/DislikeManagerV2$2;->val$packageName:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaomi/ad/feedback/DislikeManagerV2$2;->val$configKey:Ljava/lang/String;

    iput-object p7, p0, Lcom/xiaomi/ad/feedback/DislikeManagerV2$2;->val$adPassbackList:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic innerInvoke(Landroid/os/IInterface;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/xiaomi/ad/feedback/IAdFeedbackService;

    invoke-virtual {p0, p1}, Lcom/xiaomi/ad/feedback/DislikeManagerV2$2;->innerInvoke(Lcom/xiaomi/ad/feedback/IAdFeedbackService;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public innerInvoke(Lcom/xiaomi/ad/feedback/IAdFeedbackService;)Ljava/lang/Void;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/ad/feedback/DislikeManagerV2$2;->val$listener:Lcom/xiaomi/ad/feedback/IAdFeedbackListener;

    iget-object v1, p0, Lcom/xiaomi/ad/feedback/DislikeManagerV2$2;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/ad/feedback/DislikeManagerV2$2;->val$configKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/ad/feedback/DislikeManagerV2$2;->val$adPassbackList:Ljava/util/List;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/xiaomi/ad/feedback/IAdFeedbackService;->showFeedbackWindowAndTrackResultForMultiAds(Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "DislikeManagerV2"

    const-string v2, "showDislikeWindows: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
