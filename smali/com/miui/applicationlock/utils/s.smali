.class final Lcom/miui/applicationlock/utils/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic abD:Lcom/miui/applicationlock/utils/d;

.field final synthetic abE:Lcom/xiaomi/ad/feedback/IAdFeedbackListener;

.field final synthetic abF:Ljava/lang/String;

.field final synthetic abG:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/utils/d;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/utils/s;->abD:Lcom/miui/applicationlock/utils/d;

    iput-object p2, p0, Lcom/miui/applicationlock/utils/s;->abE:Lcom/xiaomi/ad/feedback/IAdFeedbackListener;

    iput-object p3, p0, Lcom/miui/applicationlock/utils/s;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/applicationlock/utils/s;->abF:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/applicationlock/utils/s;->abG:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/miui/applicationlock/utils/s;->abD:Lcom/miui/applicationlock/utils/d;

    invoke-static {p2}, Lcom/xiaomi/ad/feedback/IAdFeedbackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/ad/feedback/IAdFeedbackService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/applicationlock/utils/d;->aen(Lcom/miui/applicationlock/utils/d;Lcom/xiaomi/ad/feedback/IAdFeedbackService;)Lcom/xiaomi/ad/feedback/IAdFeedbackService;

    iget-object v0, p0, Lcom/miui/applicationlock/utils/s;->abD:Lcom/miui/applicationlock/utils/d;

    invoke-static {v0}, Lcom/miui/applicationlock/utils/d;->ael(Lcom/miui/applicationlock/utils/d;)Lcom/xiaomi/ad/feedback/IAdFeedbackService;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/utils/s;->abE:Lcom/xiaomi/ad/feedback/IAdFeedbackListener;

    iget-object v2, p0, Lcom/miui/applicationlock/utils/s;->val$packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/applicationlock/utils/s;->abF:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/applicationlock/utils/s;->abG:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/xiaomi/ad/feedback/IAdFeedbackService;->showFeedbackWindowAndTrackResult(Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/applicationlock/utils/d;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "service connected exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/utils/s;->abD:Lcom/miui/applicationlock/utils/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/applicationlock/utils/d;->aen(Lcom/miui/applicationlock/utils/d;Lcom/xiaomi/ad/feedback/IAdFeedbackService;)Lcom/xiaomi/ad/feedback/IAdFeedbackService;

    return-void
.end method
