.class public Lcom/miui/video/player/service/utils/media/MiMediaSession;
.super Ljava/lang/Object;
.source "MiMediaSession.java"


# instance fields
.field private mCallBack:Lcom/miui/video/player/service/utils/media/MediaEventReceiver$MediaEventCallBack;

.field private mMediaSession:Landroid/media/session/MediaSession;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/video/player/service/utils/media/MediaEventReceiver$MediaEventCallBack;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/session/MediaSession;

    const-string v1, "Broadcast_receiver_tag"

    invoke-direct {v0, p1, v1}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/video/player/service/utils/media/MiMediaSession;->mMediaSession:Landroid/media/session/MediaSession;

    iget-object p1, p0, Lcom/miui/video/player/service/utils/media/MiMediaSession;->mMediaSession:Landroid/media/session/MediaSession;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSession;->setFlags(I)V

    invoke-virtual {p0, p2}, Lcom/miui/video/player/service/utils/media/MiMediaSession;->setCallBack(Lcom/miui/video/player/service/utils/media/MediaEventReceiver$MediaEventCallBack;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/utils/media/MiMediaSession;->setActive(Z)V

    return-void
.end method


# virtual methods
.method public getCallBack()Lcom/miui/video/player/service/utils/media/MediaEventReceiver$MediaEventCallBack;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/utils/media/MiMediaSession;->mCallBack:Lcom/miui/video/player/service/utils/media/MediaEventReceiver$MediaEventCallBack;

    return-object v0
.end method

.method public isActive()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/utils/media/MiMediaSession;->mMediaSession:Landroid/media/session/MediaSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/utils/media/MiMediaSession;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/player/service/utils/media/MiMediaSession;->getCallBack()Lcom/miui/video/player/service/utils/media/MediaEventReceiver$MediaEventCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/utils/media/MiMediaSession;->mMediaSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/utils/media/MiMediaSession;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->release()V

    :cond_0
    return-void
.end method

.method public setActive(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/utils/media/MiMediaSession;->mMediaSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/utils/media/MiMediaSession;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setActive(Z)V

    :cond_0
    return-void
.end method

.method public setCallBack(Lcom/miui/video/player/service/utils/media/MediaEventReceiver$MediaEventCallBack;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/player/service/utils/media/MiMediaSession;->mCallBack:Lcom/miui/video/player/service/utils/media/MediaEventReceiver$MediaEventCallBack;

    iget-object v0, p0, Lcom/miui/video/player/service/utils/media/MiMediaSession;->mMediaSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/utils/media/MiMediaSession;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    :cond_0
    return-void
.end method
