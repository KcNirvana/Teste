.class public Lcom/miui/personalassistant/services/TransmissionService;
.super Landroid/app/Service;
.source "TransmissionService.java"


# instance fields
.field private mBinder:Lmiui/assistant/provider/ITransmissionService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/miui/personalassistant/services/TransmissionService$1;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/services/TransmissionService$1;-><init>(Lcom/miui/personalassistant/services/TransmissionService;)V

    iput-object v0, p0, Lcom/miui/personalassistant/services/TransmissionService;->mBinder:Lmiui/assistant/provider/ITransmissionService$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/services/TransmissionService;->mBinder:Lmiui/assistant/provider/ITransmissionService$Stub;

    return-object v0
.end method
