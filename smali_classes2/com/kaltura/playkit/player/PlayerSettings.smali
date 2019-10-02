.class public Lcom/kaltura/playkit/player/PlayerSettings;
.super Ljava/lang/Object;
.source "PlayerSettings.java"

# interfaces
.implements Lcom/kaltura/playkit/Player$Settings;


# instance fields
.field private adAutoPlayOnResume:Z

.field private cea608CaptionsEnabled:Z

.field private contentRequestAdapter:Lcom/kaltura/playkit/PKRequestParams$Adapter;

.field private crossProtocolRedirectEnabled:Z

.field private isSurfaceSecured:Z

.field private licenseRequestAdapter:Lcom/kaltura/playkit/PKRequestParams$Adapter;

.field private loadControlBuffers:Lcom/kaltura/playkit/player/LoadControlBuffers;

.field private mpgaAudioFormatEnabled:Z

.field private preferredAudioTrackConfig:Lcom/kaltura/playkit/PKTrackConfig;

.field private preferredMediaFormat:Lcom/kaltura/playkit/PKMediaFormat;

.field private preferredTextTrackConfig:Lcom/kaltura/playkit/PKTrackConfig;

.field private useTextureView:Z

.field private vrPlayerEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaltura/playkit/player/PlayerSettings;->adAutoPlayOnResume:Z

    iput-boolean v0, p0, Lcom/kaltura/playkit/player/PlayerSettings;->vrPlayerEnabled:Z

    new-instance v0, Lcom/kaltura/playkit/player/LoadControlBuffers;

    invoke-direct {v0}, Lcom/kaltura/playkit/player/LoadControlBuffers;-><init>()V

    iput-object v0, p0, Lcom/kaltura/playkit/player/PlayerSettings;->loadControlBuffers:Lcom/kaltura/playkit/player/LoadControlBuffers;

    sget-object v0, Lcom/kaltura/playkit/PKMediaFormat;->dash:Lcom/kaltura/playkit/PKMediaFormat;

    iput-object v0, p0, Lcom/kaltura/playkit/player/PlayerSettings;->preferredMediaFormat:Lcom/kaltura/playkit/PKMediaFormat;

    return-void
.end method


# virtual methods
.method public cea608CaptionsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kaltura/playkit/player/PlayerSettings;->cea608CaptionsEnabled:Z

    return v0
.end method

.method public crossProtocolRedirectEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kaltura/playkit/player/PlayerSettings;->crossProtocolRedirectEnabled:Z

    return v0
.end method

.method public getContentRequestAdapter()Lcom/kaltura/playkit/PKRequestParams$Adapter;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerSettings;->contentRequestAdapter:Lcom/kaltura/playkit/PKRequestParams$Adapter;

    return-object v0
.end method

.method public getLicenseRequestAdapter()Lcom/kaltura/playkit/PKRequestParams$Adapter;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerSettings;->licenseRequestAdapter:Lcom/kaltura/playkit/PKRequestParams$Adapter;

    return-object v0
.end method

.method public getLoadControlBuffers()Lcom/kaltura/playkit/player/LoadControlBuffers;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerSettings;->loadControlBuffers:Lcom/kaltura/playkit/player/LoadControlBuffers;

    return-object v0
.end method

.method public getPreferredAudioTrackConfig()Lcom/kaltura/playkit/PKTrackConfig;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerSettings;->preferredAudioTrackConfig:Lcom/kaltura/playkit/PKTrackConfig;

    return-object v0
.end method

.method public getPreferredMediaFormat()Lcom/kaltura/playkit/PKMediaFormat;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerSettings;->preferredMediaFormat:Lcom/kaltura/playkit/PKMediaFormat;

    return-object v0
.end method

.method public getPreferredTextTrackConfig()Lcom/kaltura/playkit/PKTrackConfig;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerSettings;->preferredTextTrackConfig:Lcom/kaltura/playkit/PKTrackConfig;

    return-object v0
.end method

.method public isAdAutoPlayOnResume()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kaltura/playkit/player/PlayerSettings;->adAutoPlayOnResume:Z

    return v0
.end method

.method public isSurfaceSecured()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kaltura/playkit/player/PlayerSettings;->isSurfaceSecured:Z

    return v0
.end method

.method public isVRPlayerEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kaltura/playkit/player/PlayerSettings;->vrPlayerEnabled:Z

    return v0
.end method

.method public mpgaAudioFormatEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kaltura/playkit/player/PlayerSettings;->mpgaAudioFormatEnabled:Z

    return v0
.end method

.method public setAdAutoPlayOnResume(Z)Lcom/kaltura/playkit/Player$Settings;
    .locals 0

    iput-boolean p1, p0, Lcom/kaltura/playkit/player/PlayerSettings;->adAutoPlayOnResume:Z

    return-object p0
.end method

.method public setAllowCrossProtocolRedirect(Z)Lcom/kaltura/playkit/Player$Settings;
    .locals 0

    iput-boolean p1, p0, Lcom/kaltura/playkit/player/PlayerSettings;->crossProtocolRedirectEnabled:Z

    return-object p0
.end method

.method public setCea608CaptionsEnabled(Z)Lcom/kaltura/playkit/Player$Settings;
    .locals 0

    iput-boolean p1, p0, Lcom/kaltura/playkit/player/PlayerSettings;->cea608CaptionsEnabled:Z

    return-object p0
.end method

.method public setContentRequestAdapter(Lcom/kaltura/playkit/PKRequestParams$Adapter;)Lcom/kaltura/playkit/Player$Settings;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/player/PlayerSettings;->contentRequestAdapter:Lcom/kaltura/playkit/PKRequestParams$Adapter;

    return-object p0
.end method

.method public setLicenseRequestAdapter(Lcom/kaltura/playkit/PKRequestParams$Adapter;)Lcom/kaltura/playkit/Player$Settings;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/player/PlayerSettings;->licenseRequestAdapter:Lcom/kaltura/playkit/PKRequestParams$Adapter;

    return-object p0
.end method

.method public setMpgaAudioFormatEnabled(Z)Lcom/kaltura/playkit/Player$Settings;
    .locals 0

    iput-boolean p1, p0, Lcom/kaltura/playkit/player/PlayerSettings;->mpgaAudioFormatEnabled:Z

    return-object p0
.end method

.method public setPlayerBuffers(Lcom/kaltura/playkit/player/LoadControlBuffers;)Lcom/kaltura/playkit/Player$Settings;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/player/PlayerSettings;->loadControlBuffers:Lcom/kaltura/playkit/player/LoadControlBuffers;

    return-object p0
.end method

.method public setPreferredAudioTrack(Lcom/kaltura/playkit/PKTrackConfig;)Lcom/kaltura/playkit/Player$Settings;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/player/PlayerSettings;->preferredAudioTrackConfig:Lcom/kaltura/playkit/PKTrackConfig;

    return-object p0
.end method

.method public setPreferredMediaFormat(Lcom/kaltura/playkit/PKMediaFormat;)Lcom/kaltura/playkit/Player$Settings;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/player/PlayerSettings;->preferredMediaFormat:Lcom/kaltura/playkit/PKMediaFormat;

    return-object p0
.end method

.method public setPreferredTextTrack(Lcom/kaltura/playkit/PKTrackConfig;)Lcom/kaltura/playkit/Player$Settings;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/player/PlayerSettings;->preferredTextTrackConfig:Lcom/kaltura/playkit/PKTrackConfig;

    return-object p0
.end method

.method public setSecureSurface(Z)Lcom/kaltura/playkit/Player$Settings;
    .locals 0

    iput-boolean p1, p0, Lcom/kaltura/playkit/player/PlayerSettings;->isSurfaceSecured:Z

    return-object p0
.end method

.method public setVRPlayerEnabled(Z)Lcom/kaltura/playkit/Player$Settings;
    .locals 0

    iput-boolean p1, p0, Lcom/kaltura/playkit/player/PlayerSettings;->vrPlayerEnabled:Z

    return-object p0
.end method

.method public useTextureView(Z)Lcom/kaltura/playkit/Player$Settings;
    .locals 0

    iput-boolean p1, p0, Lcom/kaltura/playkit/player/PlayerSettings;->useTextureView:Z

    return-object p0
.end method

.method public useTextureView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kaltura/playkit/player/PlayerSettings;->useTextureView:Z

    return v0
.end method
