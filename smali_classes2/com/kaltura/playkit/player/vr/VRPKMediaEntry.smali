.class public Lcom/kaltura/playkit/player/vr/VRPKMediaEntry;
.super Lcom/kaltura/playkit/PKMediaEntry;
.source "VRPKMediaEntry.java"


# instance fields
.field private vrSettings:Lcom/kaltura/playkit/player/vr/VRSettings;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/kaltura/playkit/PKMediaEntry;-><init>()V

    new-instance v0, Lcom/kaltura/playkit/player/vr/VRSettings;

    invoke-direct {v0}, Lcom/kaltura/playkit/player/vr/VRSettings;-><init>()V

    iput-object v0, p0, Lcom/kaltura/playkit/player/vr/VRPKMediaEntry;->vrSettings:Lcom/kaltura/playkit/player/vr/VRSettings;

    return-void
.end method


# virtual methods
.method public getVrSettings()Lcom/kaltura/playkit/player/vr/VRSettings;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/vr/VRPKMediaEntry;->vrSettings:Lcom/kaltura/playkit/player/vr/VRSettings;

    return-object v0
.end method

.method public hasVRParams()Z
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/vr/VRPKMediaEntry;->vrSettings:Lcom/kaltura/playkit/player/vr/VRSettings;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setVRParams(Lcom/kaltura/playkit/player/vr/VRSettings;)Lcom/kaltura/playkit/player/vr/VRPKMediaEntry;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/player/vr/VRPKMediaEntry;->vrSettings:Lcom/kaltura/playkit/player/vr/VRSettings;

    return-object p0
.end method
