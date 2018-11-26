.class Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$TimeOutTask;
.super Ljava/util/TimerTask;
.source ""


# instance fields
.field private mListener:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$TimeOutTask;->mListener:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$TimeOutTask;->mListener:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;

    new-instance v1, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;->onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    return-void
.end method
