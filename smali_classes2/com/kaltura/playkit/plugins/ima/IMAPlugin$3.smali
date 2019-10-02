.class Lcom/kaltura/playkit/plugins/ima/IMAPlugin$3;
.super Landroid/os/CountDownTimer;
.source "IMAPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->getCountDownTimer()Landroid/os/CountDownTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;


# direct methods
.method constructor <init>(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$3;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    invoke-static {}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$000()Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adManagerTimer.onFinish, adsManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$3;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {v2}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$1100(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$3;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$1100(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$3;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$1200(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Lcom/kaltura/playkit/plugins/ima/IMAConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->getAdLoadTimeOut()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$3;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {v0, v1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$1302(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;Z)Z

    :cond_0
    invoke-static {}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$000()Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    const-string v2, "adsManager is null, will play content"

    invoke-virtual {v0, v2}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$3;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$1400(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;Z)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$3;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$1500(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Lcom/kaltura/playkit/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->play()V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$3;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$1600(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Lcom/kaltura/playkit/MessageBus;

    move-result-object v0

    new-instance v2, Lcom/kaltura/playkit/plugins/ads/AdEvent;

    sget-object v3, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_BREAK_IGNORED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-direct {v2, v3}, Lcom/kaltura/playkit/plugins/ads/AdEvent;-><init>(Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;)V

    invoke-virtual {v0, v2}, Lcom/kaltura/playkit/MessageBus;->post(Lcom/kaltura/playkit/PKEvent;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$3;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$1300(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$3;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {v0, v1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$1702(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;Z)Z

    :cond_1
    return-void
.end method

.method public onTick(J)V
    .locals 1

    invoke-static {}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$000()Lcom/kaltura/playkit/PKLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "adManagerTimer.onTick, adsManager="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$3;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {v0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$1100(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$3;->this$0:Lcom/kaltura/playkit/plugins/ima/IMAPlugin;

    invoke-static {p1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$1100(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->access$000()Lcom/kaltura/playkit/PKLog;

    move-result-object p1

    const-string p2, "cancelling adManagerTimer"

    invoke-virtual {p1, p2}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$3;->cancel()V

    :cond_0
    return-void
.end method
