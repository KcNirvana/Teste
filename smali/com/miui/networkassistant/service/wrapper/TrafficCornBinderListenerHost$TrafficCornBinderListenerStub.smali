.class Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost$TrafficCornBinderListenerStub;
.super Lcom/miui/networkassistant/service/ITrafficCornBinderListener$Stub;
.source ""


# instance fields
.field private mHost:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/service/ITrafficCornBinderListener$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost$TrafficCornBinderListenerStub;->mHost:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost;Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost$TrafficCornBinderListenerStub;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost$TrafficCornBinderListenerStub;-><init>(Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost;)V

    return-void
.end method


# virtual methods
.method public onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost$TrafficCornBinderListenerStub;->mHost:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost$TrafficCornBinderListenerStub;->mHost:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost;->onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    :cond_0
    return-void
.end method
