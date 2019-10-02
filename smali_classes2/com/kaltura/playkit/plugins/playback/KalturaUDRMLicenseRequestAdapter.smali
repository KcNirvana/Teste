.class public Lcom/kaltura/playkit/plugins/playback/KalturaUDRMLicenseRequestAdapter;
.super Ljava/lang/Object;
.source "KalturaUDRMLicenseRequestAdapter.java"

# interfaces
.implements Lcom/kaltura/playkit/PKRequestParams$Adapter;


# instance fields
.field private final applicationName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/kaltura/playkit/Player;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/playback/KalturaUDRMLicenseRequestAdapter;->applicationName:Ljava/lang/String;

    return-void
.end method

.method public static install(Lcom/kaltura/playkit/Player;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/kaltura/playkit/plugins/playback/KalturaUDRMLicenseRequestAdapter;

    invoke-direct {v0, p1, p0}, Lcom/kaltura/playkit/plugins/playback/KalturaUDRMLicenseRequestAdapter;-><init>(Ljava/lang/String;Lcom/kaltura/playkit/Player;)V

    invoke-interface {p0}, Lcom/kaltura/playkit/Player;->getSettings()Lcom/kaltura/playkit/Player$Settings;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/kaltura/playkit/Player$Settings;->setLicenseRequestAdapter(Lcom/kaltura/playkit/PKRequestParams$Adapter;)Lcom/kaltura/playkit/Player$Settings;

    return-void
.end method


# virtual methods
.method public adapt(Lcom/kaltura/playkit/PKRequestParams;)Lcom/kaltura/playkit/PKRequestParams;
    .locals 3

    iget-object v0, p1, Lcom/kaltura/playkit/PKRequestParams;->headers:Ljava/util/Map;

    const-string v1, "Referrer"

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/playback/KalturaUDRMLicenseRequestAdapter;->applicationName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/playback/KalturaUDRMLicenseRequestAdapter;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public updateParams(Lcom/kaltura/playkit/Player;)V
    .locals 0

    return-void
.end method
