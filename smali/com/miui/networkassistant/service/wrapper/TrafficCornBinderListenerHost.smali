.class public abstract Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost;
.super Ljava/lang/Object;
.source ""


# instance fields
.field mTrafficCornBinderListener:Lcom/miui/networkassistant/service/ITrafficCornBinderListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost$TrafficCornBinderListenerStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost$TrafficCornBinderListenerStub;-><init>(Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost;Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost$TrafficCornBinderListenerStub;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost;->mTrafficCornBinderListener:Lcom/miui/networkassistant/service/ITrafficCornBinderListener;

    return-void
.end method


# virtual methods
.method public getStub()Lcom/miui/networkassistant/service/ITrafficCornBinderListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost;->mTrafficCornBinderListener:Lcom/miui/networkassistant/service/ITrafficCornBinderListener;

    return-object v0
.end method

.method public abstract onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
.end method
