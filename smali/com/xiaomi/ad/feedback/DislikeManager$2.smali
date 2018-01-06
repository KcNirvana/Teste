.class final Lcom/xiaomi/ad/feedback/DislikeManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic val$adPassbacks:Ljava/util/List;

.field final synthetic val$configKey:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/xiaomi/ad/feedback/IAdFeedbackListener;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/ad/feedback/DislikeManager$2;->val$listener:Lcom/xiaomi/ad/feedback/IAdFeedbackListener;

    iput-object p2, p0, Lcom/xiaomi/ad/feedback/DislikeManager$2;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/ad/feedback/DislikeManager$2;->val$configKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/ad/feedback/DislikeManager$2;->val$adPassbacks:Ljava/util/List;

    iput-object p5, p0, Lcom/xiaomi/ad/feedback/DislikeManager$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    :try_start_0
    invoke-static {p2}, Lcom/xiaomi/ad/feedback/IAdFeedbackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/ad/feedback/IAdFeedbackService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/ad/feedback/DislikeManager$2;->val$listener:Lcom/xiaomi/ad/feedback/IAdFeedbackListener;

    iget-object v2, p0, Lcom/xiaomi/ad/feedback/DislikeManager$2;->val$packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/ad/feedback/DislikeManager$2;->val$configKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/ad/feedback/DislikeManager$2;->val$adPassbacks:Ljava/util/List;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/xiaomi/ad/feedback/IAdFeedbackService;->showFeedbackWindowAndTrackResultForMultiAds(Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/ad/feedback/DislikeManager$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "DislikeManager"

    const-string v2, "show dislike window with passbacks exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/ad/feedback/DislikeManager$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/ad/feedback/DislikeManager$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
