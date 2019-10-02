.class public Lcom/kaltura/playkit/player/vr/VRSettings;
.super Ljava/lang/Object;
.source "VRSettings.java"


# instance fields
.field private flingEnabled:Z

.field private interactionMode:Lcom/kaltura/playkit/player/vr/VRInteractionMode;

.field private vrModeEnabled:Z

.field private zoomWithPinchEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/kaltura/playkit/player/vr/VRInteractionMode;->Touch:Lcom/kaltura/playkit/player/vr/VRInteractionMode;

    iput-object v0, p0, Lcom/kaltura/playkit/player/vr/VRSettings;->interactionMode:Lcom/kaltura/playkit/player/vr/VRInteractionMode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaltura/playkit/player/vr/VRSettings;->zoomWithPinchEnabled:Z

    return-void
.end method


# virtual methods
.method public getInteractionMode()Lcom/kaltura/playkit/player/vr/VRInteractionMode;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/vr/VRSettings;->interactionMode:Lcom/kaltura/playkit/player/vr/VRInteractionMode;

    return-object v0
.end method

.method public isFlingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kaltura/playkit/player/vr/VRSettings;->flingEnabled:Z

    return v0
.end method

.method public isVrModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kaltura/playkit/player/vr/VRSettings;->vrModeEnabled:Z

    return v0
.end method

.method public isZoomWithPinchEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kaltura/playkit/player/vr/VRSettings;->zoomWithPinchEnabled:Z

    return v0
.end method

.method public setFlingEnabled(Z)Lcom/kaltura/playkit/player/vr/VRSettings;
    .locals 0

    iput-boolean p1, p0, Lcom/kaltura/playkit/player/vr/VRSettings;->flingEnabled:Z

    return-object p0
.end method

.method public setInteractionMode(Lcom/kaltura/playkit/player/vr/VRInteractionMode;)Lcom/kaltura/playkit/player/vr/VRSettings;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/player/vr/VRSettings;->interactionMode:Lcom/kaltura/playkit/player/vr/VRInteractionMode;

    return-object p0
.end method

.method public setVrModeEnabled(Z)Lcom/kaltura/playkit/player/vr/VRSettings;
    .locals 0

    iput-boolean p1, p0, Lcom/kaltura/playkit/player/vr/VRSettings;->vrModeEnabled:Z

    return-object p0
.end method

.method public setZoomWithPinchEnabled(Z)Lcom/kaltura/playkit/player/vr/VRSettings;
    .locals 0

    iput-boolean p1, p0, Lcom/kaltura/playkit/player/vr/VRSettings;->zoomWithPinchEnabled:Z

    return-object p0
.end method
