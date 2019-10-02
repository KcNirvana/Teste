.class public Lcom/milink/api/v1/McsDelegate;
.super Lcom/milink/api/v1/aidl/IMcsDelegate$Stub;
.source "McsDelegate.java"


# instance fields
.field private mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/milink/api/v1/aidl/IMcsDelegate$Stub;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    return-void
.end method

.method static synthetic access$000(Lcom/milink/api/v1/McsDelegate;)Lcom/milink/api/v1/MilinkClientManagerDelegate;
    .locals 0

    iget-object p0, p0, Lcom/milink/api/v1/McsDelegate;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    return-object p0
.end method


# virtual methods
.method public onConnected()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/milink/api/v1/McsDelegate$1;

    invoke-direct {v1, p0}, Lcom/milink/api/v1/McsDelegate$1;-><init>(Lcom/milink/api/v1/McsDelegate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConnectedFailed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/milink/api/v1/McsDelegate$2;

    invoke-direct {v1, p0}, Lcom/milink/api/v1/McsDelegate$2;-><init>(Lcom/milink/api/v1/McsDelegate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDisconnected()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/milink/api/v1/McsDelegate$3;

    invoke-direct {v1, p0}, Lcom/milink/api/v1/McsDelegate$3;-><init>(Lcom/milink/api/v1/McsDelegate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLoading()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/milink/api/v1/McsDelegate$4;

    invoke-direct {v1, p0}, Lcom/milink/api/v1/McsDelegate$4;-><init>(Lcom/milink/api/v1/McsDelegate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onNextAudio(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/milink/api/v1/McsDelegate$9;

    invoke-direct {v1, p0, p1}, Lcom/milink/api/v1/McsDelegate$9;-><init>(Lcom/milink/api/v1/McsDelegate;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPaused()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/milink/api/v1/McsDelegate$7;

    invoke-direct {v1, p0}, Lcom/milink/api/v1/McsDelegate$7;-><init>(Lcom/milink/api/v1/McsDelegate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPlaying()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/milink/api/v1/McsDelegate$5;

    invoke-direct {v1, p0}, Lcom/milink/api/v1/McsDelegate$5;-><init>(Lcom/milink/api/v1/McsDelegate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPrevAudio(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/milink/api/v1/McsDelegate$10;

    invoke-direct {v1, p0, p1}, Lcom/milink/api/v1/McsDelegate$10;-><init>(Lcom/milink/api/v1/McsDelegate;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStopped()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/milink/api/v1/McsDelegate$6;

    invoke-direct {v1, p0}, Lcom/milink/api/v1/McsDelegate$6;-><init>(Lcom/milink/api/v1/McsDelegate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVolume(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/milink/api/v1/McsDelegate$8;

    invoke-direct {v1, p0, p1}, Lcom/milink/api/v1/McsDelegate$8;-><init>(Lcom/milink/api/v1/McsDelegate;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDelegate(Lcom/milink/api/v1/MilinkClientManagerDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/milink/api/v1/McsDelegate;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    return-void
.end method
