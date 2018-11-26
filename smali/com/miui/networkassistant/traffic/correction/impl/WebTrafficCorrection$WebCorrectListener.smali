.class Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection$WebCorrectListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;


# instance fields
.field private mIsBackground:Z

.field private mType:I

.field final synthetic this$0:Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection$WebCorrectListener;->this$0:Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection$WebCorrectListener;->mIsBackground:Z

    iput p3, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection$WebCorrectListener;->mType:I

    return-void
.end method


# virtual methods
.method public onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection$WebCorrectListener;->this$0:Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;

    iget v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection$WebCorrectListener;->mType:I

    invoke-static {v0, p1, v1}, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->-wrap1(Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;Lcom/miui/networkassistant/model/TrafficUsedStatus;I)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getReturnCode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection$WebCorrectListener;->this$0:Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->-wrap0(Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection$WebCorrectListener;->this$0:Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;

    invoke-static {v0, v3}, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->-wrap3(Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;Z)V

    const-string/jumbo v0, "WebTrafficCorrection"

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection$WebCorrectListener;->this$0:Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;

    invoke-static {v0, v3}, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->-wrap4(Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection$WebCorrectListener;->this$0:Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;

    iget-boolean v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection$WebCorrectListener;->mIsBackground:Z

    iget v2, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection$WebCorrectListener;->mType:I

    invoke-static {v0, v1, v2}, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->-wrap2(Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;ZI)V

    goto :goto_0
.end method
