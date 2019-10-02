.class public Lcom/kaltura/playkit/drm/WidevineClassicDrm;
.super Ljava/lang/Object;
.source "WidevineClassicDrm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kaltura/playkit/drm/WidevineClassicDrm$EventListener;,
        Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo;
    }
.end annotation


# static fields
.field private static final DEVICE_IS_NOT_PROVISIONED:Ljava/lang/String; = "1"

.field private static final DEVICE_IS_PROVISIONED:Ljava/lang/String; = "0"

.field private static final DEVICE_IS_PROVISIONED_SD_ONLY:Ljava/lang/String; = "2"

.field public static PORTAL_NAME:Ljava/lang/String; = null

.field public static WIDEVINE_MIME_TYPE:Ljava/lang/String; = null

.field private static final WV_ASSET_URI_KEY:Ljava/lang/String; = "WVAssetURIKey"

.field private static final WV_DEVICE_ID_KEY:Ljava/lang/String; = "WVDeviceIDKey"

.field private static final WV_DRM_INFO_REQUEST_STATUS_KEY:Ljava/lang/String; = "WVDrmInfoRequestStatusKey"

.field private static final WV_DRM_SERVER_KEY:Ljava/lang/String; = "WVDRMServerKey"

.field private static final WV_PORTAL_KEY:Ljava/lang/String; = "WVPortalKey"

.field private static final log:Lcom/kaltura/playkit/PKLog;


# instance fields
.field private mDeviceId:Ljava/lang/String;

.field private mDrmManager:Landroid/drm/DrmManagerClient;

.field private mEventListener:Lcom/kaltura/playkit/drm/WidevineClassicDrm$EventListener;

.field private mWVDrmInfoRequestStatusKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WidevineClassicDrm"

    invoke-static {v0}, Lcom/kaltura/playkit/PKLog;->get(Ljava/lang/String;)Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    sput-object v0, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "video/wvm"

    sput-object v0, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->WIDEVINE_MIME_TYPE:Ljava/lang/String;

    const-string v0, "kaltura"

    sput-object v0, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->PORTAL_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->mWVDrmInfoRequestStatusKey:Ljava/lang/String;

    new-instance v0, Lcom/kaltura/playkit/drm/WidevineClassicDrm$1;

    invoke-direct {v0, p0, p1}, Lcom/kaltura/playkit/drm/WidevineClassicDrm$1;-><init>(Lcom/kaltura/playkit/drm/WidevineClassicDrm;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->mDrmManager:Landroid/drm/DrmManagerClient;

    iget-object v0, p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->mDrmManager:Landroid/drm/DrmManagerClient;

    const-string v1, ""

    sget-object v2, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->WIDEVINE_MIME_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/kaltura/playkit/drm/DeviceUuidFactory;->getDeviceUuid(Landroid/content/Context;)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->mDeviceId:Ljava/lang/String;

    iget-object p1, p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->mDrmManager:Landroid/drm/DrmManagerClient;

    new-instance v0, Lcom/kaltura/playkit/drm/WidevineClassicDrm$2;

    invoke-direct {v0, p0}, Lcom/kaltura/playkit/drm/WidevineClassicDrm$2;-><init>(Lcom/kaltura/playkit/drm/WidevineClassicDrm;)V

    invoke-virtual {p1, v0}, Landroid/drm/DrmManagerClient;->setOnInfoListener(Landroid/drm/DrmManagerClient$OnInfoListener;)V

    iget-object p1, p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->mDrmManager:Landroid/drm/DrmManagerClient;

    new-instance v0, Lcom/kaltura/playkit/drm/WidevineClassicDrm$3;

    invoke-direct {v0, p0}, Lcom/kaltura/playkit/drm/WidevineClassicDrm$3;-><init>(Lcom/kaltura/playkit/drm/WidevineClassicDrm;)V

    invoke-virtual {p1, v0}, Landroid/drm/DrmManagerClient;->setOnEventListener(Landroid/drm/DrmManagerClient$OnEventListener;)V

    iget-object p1, p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->mDrmManager:Landroid/drm/DrmManagerClient;

    new-instance v0, Lcom/kaltura/playkit/drm/WidevineClassicDrm$4;

    invoke-direct {v0, p0}, Lcom/kaltura/playkit/drm/WidevineClassicDrm$4;-><init>(Lcom/kaltura/playkit/drm/WidevineClassicDrm;)V

    invoke-virtual {p1, v0}, Landroid/drm/DrmManagerClient;->setOnErrorListener(Landroid/drm/DrmManagerClient$OnErrorListener;)V

    invoke-virtual {p0}, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->registerPortal()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Widevine Classic is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000()Lcom/kaltura/playkit/PKLog;
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->log:Lcom/kaltura/playkit/PKLog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kaltura/playkit/drm/WidevineClassicDrm;Landroid/drm/DrmEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->logEvent(Landroid/drm/DrmEvent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/kaltura/playkit/drm/WidevineClassicDrm;)Lcom/kaltura/playkit/drm/WidevineClassicDrm$EventListener;
    .locals 0

    iget-object p0, p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->mEventListener:Lcom/kaltura/playkit/drm/WidevineClassicDrm$EventListener;

    return-object p0
.end method

.method private createDrmInfoRequest(Ljava/lang/String;)Landroid/drm/DrmInfoRequest;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->createDrmInfoRequest(Ljava/lang/String;Ljava/lang/String;)Landroid/drm/DrmInfoRequest;

    move-result-object p1

    return-object p1
.end method

.method private createDrmInfoRequest(Ljava/lang/String;Ljava/lang/String;)Landroid/drm/DrmInfoRequest;
    .locals 3

    new-instance v0, Landroid/drm/DrmInfoRequest;

    sget-object v1, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->WIDEVINE_MIME_TYPE:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v1, "WVDRMServerKey"

    invoke-virtual {v0, v1, p2}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string p2, "WVAssetURIKey"

    invoke-virtual {v0, p2, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "WVDeviceIDKey"

    iget-object p2, p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "WVPortalKey"

    sget-object p2, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->PORTAL_NAME:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method private extractDrmInfo(Landroid/drm/DrmInfo;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_2

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/drm/DrmInfo;->keyIterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "{"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private fdToString(Ljava/io/FileDescriptor;)Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/kaltura/playkit/drm/WidevineClassicCompat;->fdToString23(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private logEvent(Landroid/drm/DrmEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/drm/DrmEvent;->getType()I

    move-result v0

    instance-of v1, p1, Landroid/drm/DrmInfoEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "info"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v2, "TYPE_RIGHTS_REMOVED"

    goto :goto_1

    :pswitch_1
    const-string v2, "TYPE_ACCOUNT_ALREADY_REGISTERED"

    goto :goto_1

    :pswitch_2
    const-string v2, "TYPE_WAIT_FOR_RIGHTS"

    goto :goto_1

    :pswitch_3
    const-string v2, "TYPE_RIGHTS_INSTALLED"

    goto :goto_1

    :pswitch_4
    const-string v2, "TYPE_REMOVE_RIGHTS"

    goto :goto_1

    :pswitch_5
    const-string v2, "TYPE_ALREADY_REGISTERED_BY_ANOTHER_ACCOUNT"

    goto :goto_1

    :cond_0
    instance-of v1, p1, Landroid/drm/DrmErrorEvent;

    if-eqz v1, :cond_1

    const-string v1, "error"

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    :pswitch_6
    const-string v0, "TYPE_ACQUIRE_DRM_INFO_FAILED"

    goto :goto_0

    :pswitch_7
    const-string v0, "TYPE_REMOVE_ALL_RIGHTS_FAILED"

    goto :goto_0

    :pswitch_8
    const-string v0, "TYPE_PROCESS_DRM_INFO_FAILED"

    goto :goto_0

    :pswitch_9
    const-string v0, "TYPE_NO_INTERNET_CONNECTION"

    goto :goto_0

    :pswitch_a
    const-string v0, "TYPE_OUT_OF_MEMORY"

    goto :goto_0

    :pswitch_b
    const-string v0, "TYPE_NOT_SUPPORTED"

    goto :goto_0

    :pswitch_c
    const-string v0, "TYPE_RIGHTS_RENEWAL_NOT_ALLOWED"

    goto :goto_0

    :pswitch_d
    const-string v0, "TYPE_RIGHTS_NOT_INSTALLED"

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_1
    const-string v1, "generic"

    packed-switch v0, :pswitch_data_2

    goto :goto_1

    :pswitch_e
    const-string v2, "TYPE_DRM_INFO_PROCESSED"

    goto :goto_1

    :pswitch_f
    const-string v2, "TYPE_ALL_RIGHTS_REMOVED"

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x32

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "DrmEvent class="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " message={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/drm/DrmEvent;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "drm_info_status_object"

    invoke-virtual {p1, v1}, Landroid/drm/DrmEvent;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/drm/DrmInfoStatus;

    if-eqz v1, :cond_3

    const-string v2, " status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/drm/DrmInfoStatus;->statusCode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const-string v1, "OK"

    goto :goto_2

    :cond_2
    const-string v1, "ERROR"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "drm_info_object"

    invoke-virtual {p1, v1}, Landroid/drm/DrmEvent;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/drm/DrmInfo;

    const-string v1, "info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->extractDrmInfo(Landroid/drm/DrmInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->log:Lcom/kaltura/playkit/PKLog;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7d1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3e9
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method private logMessage(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->log:Lcom/kaltura/playkit/PKLog;

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private static safeClose(Ljava/io/FileInputStream;)V
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "Failed to close file"

    invoke-virtual {v0, v1, p0}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public acquireLocalAssetRights(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->createDrmInfoRequest(Ljava/lang/String;Ljava/lang/String;)Landroid/drm/DrmInfoRequest;

    move-result-object p2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "FileDescriptorKey"

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->fdToString(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->mDrmManager:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p2}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->mDrmManager:Landroid/drm/DrmManagerClient;

    invoke-virtual {p1, p2}, Landroid/drm/DrmManagerClient;->processDrmInfo(Landroid/drm/DrmInfo;)I

    move-result p1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DrmManagerClient couldn\'t prepare request for asset "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->safeClose(Ljava/io/FileInputStream;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v1, v0

    goto :goto_3

    :catch_1
    move-exception p1

    :goto_1
    :try_start_2
    sget-object p2, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "Error opening local file:"

    invoke-virtual {p2, v1, p1}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 p1, -0x1

    invoke-static {v0}, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->safeClose(Ljava/io/FileInputStream;)V

    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "acquireRights = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->logMessage(Ljava/lang/String;)V

    return p1

    :goto_3
    invoke-static {v1}, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->safeClose(Ljava/io/FileInputStream;)V

    throw p1
.end method

.method public acquireRights(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->acquireLocalAssetRights(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->createDrmInfoRequest(Ljava/lang/String;Ljava/lang/String;)Landroid/drm/DrmInfoRequest;

    move-result-object p1

    iget-object p2, p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->mDrmManager:Landroid/drm/DrmManagerClient;

    invoke-virtual {p2, p1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object p1

    if-nez p1, :cond_1

    const/16 p1, -0x7d0

    return p1

    :cond_1
    iget-object p2, p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->mDrmManager:Landroid/drm/DrmManagerClient;

    invoke-virtual {p2, p1}, Landroid/drm/DrmManagerClient;->processDrmInfo(Landroid/drm/DrmInfo;)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "acquireRights = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->logMessage(Ljava/lang/String;)V

    return p1
.end method

.method public getRightsInfo(Ljava/lang/String;)Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo;
    .locals 3

    iget-object v0, p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->mDrmManager:Landroid/drm/DrmManagerClient;

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->createDrmInfoRequest(Ljava/lang/String;)Landroid/drm/DrmInfoRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    iget-object v0, p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->mDrmManager:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRightsInfo  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->logMessage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->mDrmManager:Landroid/drm/DrmManagerClient;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p1

    new-instance v1, Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lcom/kaltura/playkit/drm/WidevineClassicDrm$RightsInfo;-><init>(ILandroid/content/ContentValues;Lcom/kaltura/playkit/drm/WidevineClassicDrm$1;)V

    return-object v1
.end method

.method public needToAcquireRights(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->mDrmManager:Landroid/drm/DrmManagerClient;

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->createDrmInfoRequest(Ljava/lang/String;)Landroid/drm/DrmInfoRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    iget-object v0, p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->mDrmManager:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->mDrmManager:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, p1}, Landroid/drm/DrmManagerClient;->removeRights(Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public registerPortal()V
    .locals 4

    sget-object v0, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->PORTAL_NAME:Ljava/lang/String;

    new-instance v1, Landroid/drm/DrmInfoRequest;

    sget-object v2, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->WIDEVINE_MIME_TYPE:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    const-string v2, "WVPortalKey"

    invoke-virtual {v1, v2, v0}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->mDrmManager:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, v1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    sget-object v1, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Widevine Plugin Info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->extractDrmInfo(Landroid/drm/DrmInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kaltura/playkit/PKLog;->i(Ljava/lang/String;)V

    const-string v1, "WVDrmInfoRequestStatusKey"

    invoke-virtual {v0, v1}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Widevine provision status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kaltura/playkit/PKLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public removeAllRights()I
    .locals 3

    iget-object v0, p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->mDrmManager:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->removeAllRights()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeAllRights = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->logMessage(Ljava/lang/String;)V

    return v0
.end method

.method public removeRights(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->mDrmManager:Landroid/drm/DrmManagerClient;

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->createDrmInfoRequest(Ljava/lang/String;)Landroid/drm/DrmInfoRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    iget-object v0, p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->mDrmManager:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->removeRights(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeRights = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->logMessage(Ljava/lang/String;)V

    return p1
.end method

.method public setEventListener(Lcom/kaltura/playkit/drm/WidevineClassicDrm$EventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->mEventListener:Lcom/kaltura/playkit/drm/WidevineClassicDrm$EventListener;

    return-void
.end method
