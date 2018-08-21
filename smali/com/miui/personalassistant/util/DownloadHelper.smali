.class public Lcom/miui/personalassistant/util/DownloadHelper;
.super Ljava/lang/Object;
.source "DownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/util/DownloadHelper$DownloadHelperHolder;
    }
.end annotation


# static fields
.field private static final MARKET_DOWNLOAD_URL:Ljava/lang/String; = "https://app.market.xiaomi.com/apm/download/"

.field private static final MARKET_URL:Ljava/lang/String; = "https://app.market.xiaomi.com/apm/download/"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.miui.personalassistant"

.field private static final SELF_UPGRADE_PREFIX:Ljava/lang/String; = "https://app.market.xiaomi.com/apm/app/package/"

.field private static final SELF_UPGRADE_URL:Ljava/lang/String; = "https://app.market.xiaomi.com/apm/app/package/com.miui.personalassistant"

.field private static final TAG:Ljava/lang/String; = "DownloadHelper"

.field private static mContext:Landroid/content/Context;

.field private static sRegister:Z


# instance fields
.field private mApkHash:Ljava/lang/String;

.field private mApkSize:Ljava/lang/String;

.field private mAppId:Ljava/lang/String;

.field private mChangeLog:Ljava/lang/String;

.field private mDownloadId:J

.field private mDownloadManager:Landroid/app/DownloadManager;

.field private mDownloadReceiver:Landroid/content/BroadcastReceiver;

.field private mFileName:Ljava/lang/String;

.field private mLock:Ljava/lang/Object;

.field private mMd5ime:Ljava/lang/String;

.field private mTargetVersionCode:I

.field private mVersionCodeLocal:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/personalassistant/util/DownloadHelper;->sRegister:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/personalassistant/util/DownloadHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/miui/personalassistant/util/DownloadHelper$1;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/util/DownloadHelper$1;-><init>(Lcom/miui/personalassistant/util/DownloadHelper;)V

    iput-object v0, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mDownloadReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/personalassistant/util/DownloadHelper$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/util/DownloadHelper;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/util/DownloadHelper;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mDownloadId:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/util/DownloadHelper;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/personalassistant/util/DownloadHelper;->validFilePass()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/miui/personalassistant/util/DownloadHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/personalassistant/util/DownloadHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mChangeLog:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/personalassistant/util/DownloadHelper;)I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mTargetVersionCode:I

    return v0
.end method

.method static synthetic access$700(Lcom/miui/personalassistant/util/DownloadHelper;)I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mVersionCodeLocal:I

    return v0
.end method

.method static synthetic access$800()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/miui/personalassistant/util/DownloadHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/personalassistant/util/DownloadHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/util/DownloadHelper;->analyEndDownload()V

    return-void
.end method

.method private addArgValueForMarket(Landroid/net/Uri;Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mMd5ime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/miui/personalassistant/util/Util;->getMD5Imei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mMd5ime:Ljava/lang/String;

    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "clientId"

    iget-object v2, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mMd5ime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "co"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "imei"

    iget-object v2, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mMd5ime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "la"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "miuiBigVersionCode"

    sget v2, Lcom/miui/personalassistant/util/Util;->MIUI_VERSION_CODE:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "miuiBigVersionName"

    invoke-static {}, Lcom/miui/personalassistant/util/Util;->getMiuiBigBuildVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "os"

    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "ro"

    const-string/jumbo v2, "unknown"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "pageRef"

    const-string/jumbo v2, "com.miui.personalassistant"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "ref"

    const-string/jumbo v2, "personalassistant"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "sdk"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addArgValueForMarket2(Landroid/net/Uri;Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mMd5ime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/miui/personalassistant/util/Util;->getMD5Imei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mMd5ime:Ljava/lang/String;

    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "clientId"

    iget-object v2, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mMd5ime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "co"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "imei"

    iget-object v2, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mMd5ime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "targetVersionCode"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "la"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "miuiBigVersionCode"

    sget v2, Lcom/miui/personalassistant/util/Util;->MIUI_VERSION_CODE:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "miuiBigVersionName"

    invoke-static {}, Lcom/miui/personalassistant/util/Util;->getMiuiBigBuildVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "os"

    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "ro"

    const-string/jumbo v2, "unknown"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "pageRef"

    const-string/jumbo v2, "com.miui.personalassistant"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "ref"

    const-string/jumbo v2, "personalassistant"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "sdk"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private analyEndDownload()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "download_version"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mTargetVersionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Upgrade"

    const-string/jumbo v2, "update_download_success"

    invoke-static {v1, v2, v0}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method private analyStartDownload()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "download_version"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mTargetVersionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Upgrade"

    const-string/jumbo v2, "update_download_start"

    invoke-static {v1, v2, v0}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method private checkVersionUpgrade()Z
    .locals 14

    const/4 v7, 0x0

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mChangeLog:Ljava/lang/String;

    sget-object v0, Lcom/miui/personalassistant/util/DownloadHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/personalassistant/util/Util;->getAppVersionCode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mVersionCodeLocal:I

    const-string/jumbo v0, "https://app.market.xiaomi.com/apm/app/package/com.miui.personalassistant"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    sget-object v0, Lcom/miui/personalassistant/util/DownloadHelper;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mVersionCodeLocal:I

    invoke-direct {p0, v12, v0, v1}, Lcom/miui/personalassistant/util/DownloadHelper;->addArgValueForMarket(Landroid/net/Uri;Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v0, "DownloadHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " checkVersionUpgrade url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v11, Lcom/miui/personalassistant/request/UpdateRequest;

    sget-object v0, Lcom/miui/personalassistant/util/DownloadHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "GET"

    invoke-direct {v11, v0, v13, v1}, Lcom/miui/personalassistant/request/UpdateRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/miui/personalassistant/request/UpdateRequest;->getStatus()I

    move-result v0

    if-eqz v0, :cond_0

    move v8, v7

    :goto_0
    return v8

    :cond_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-virtual {v11}, Lcom/miui/personalassistant/request/UpdateRequest;->requestData()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "app"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "app"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v0, "fitness"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v0, "appId"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mAppId:Ljava/lang/String;

    const-string/jumbo v0, "versionCode"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mTargetVersionCode:I

    const-string/jumbo v0, "DownloadHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mVersionCodeLocal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mVersionCodeLocal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "--mTargetVersionCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mTargetVersionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mVersionCodeLocal:I

    iget v1, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mTargetVersionCode:I

    if-le v0, v1, :cond_2

    sget-object v0, Lcom/miui/personalassistant/util/DownloadHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    iget v4, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mTargetVersionCode:I

    iget v5, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mVersionCodeLocal:I

    invoke-static/range {v0 .. v5}, Lcom/miui/personalassistant/util/DownloadHelper;->notifyBroadcast(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;II)V

    :cond_1
    :goto_1
    move v8, v7

    goto :goto_0

    :cond_2
    if-nez v9, :cond_1

    iget v0, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mVersionCodeLocal:I

    iget v1, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mTargetVersionCode:I

    if-ge v0, v1, :cond_1

    const/4 v7, 0x1

    const-string/jumbo v0, "changeLog"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mChangeLog:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private download(Ljava/lang/String;)V
    .locals 10

    iget-object v6, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/miui/personalassistant/util/DownloadHelper;->mContext:Landroid/content/Context;

    if-nez v5, :cond_1

    :cond_0
    const-string/jumbo v5, "DownloadHelper"

    const-string/jumbo v7, "download Url is empty or mContext is null"

    invoke-static {v5, v7}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v5, "DownloadHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startdownload       "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/personalassistant/util/DownloadHelper;->registerReceiver()V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd-HHmmss"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v5, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    new-instance v2, Landroid/app/DownloadManager$Request;

    invoke-direct {v2, v4}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/app/DownloadManager$Request;->setAllowedOverMetered(Z)Landroid/app/DownloadManager$Request;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v5, "Download"

    invoke-virtual {v2, v5, v1}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Download"

    invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mFileName:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v5, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mDownloadId:J

    const-string/jumbo v5, "DownloadHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "start download file path:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mFileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "DownloadHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "download start: url="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mDownloadId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/personalassistant/util/DownloadHelper;->analyStartDownload()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v6

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v5, "DownloadHelper"

    const-string/jumbo v7, "IllegalStateException"

    invoke-static {v5, v7, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private getDownloadUrl()Ljava/lang/String;
    .locals 10

    const-string/jumbo v1, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "https://app.market.xiaomi.com/apm/download/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mAppId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sget-object v7, Lcom/miui/personalassistant/util/DownloadHelper;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mTargetVersionCode:I

    invoke-direct {p0, v5, v7, v8}, Lcom/miui/personalassistant/util/DownloadHelper;->addArgValueForMarket2(Landroid/net/Uri;Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "DownloadHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " getDownloadUrl url "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v4, Lcom/miui/personalassistant/request/UpdateRequest;

    sget-object v7, Lcom/miui/personalassistant/util/DownloadHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "GET"

    invoke-direct {v4, v7, v6, v8}, Lcom/miui/personalassistant/request/UpdateRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/miui/personalassistant/request/UpdateRequest;->getStatus()I

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v4}, Lcom/miui/personalassistant/request/UpdateRequest;->requestData()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "host"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "apk"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "host"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "apk"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "apkHash"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mApkHash:Ljava/lang/String;

    const-string/jumbo v7, "apkSize"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mApkSize:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_1
    :goto_1
    move-object v7, v1

    goto :goto_0

    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public static getInstance()Lcom/miui/personalassistant/util/DownloadHelper;
    .locals 1

    invoke-static {}, Lcom/miui/personalassistant/util/DownloadHelper$DownloadHelperHolder;->access$100()Lcom/miui/personalassistant/util/DownloadHelper;

    move-result-object v0

    return-object v0
.end method

.method public static notifyBroadcast(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;II)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "miui.intent.action.MINUS_SCREEN_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "FileName"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "ChangeLog"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "DownloadFinish"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private validFilePass()Z
    .locals 2

    iget-object v1, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mFileName:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/personalassistant/util/FileUtils;->getFileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mApkHash:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public registerReceiver()V
    .locals 3

    sget-boolean v1, Lcom/miui/personalassistant/util/DownloadHelper;->sRegister:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/miui/personalassistant/util/DownloadHelper;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/miui/personalassistant/util/DownloadHelper;->sRegister:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/personalassistant/util/DownloadHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mDownloadReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public upgrade(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/miui/personalassistant/util/DownloadHelper;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/miui/personalassistant/util/DownloadHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "download"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    iput-object v1, p0, Lcom/miui/personalassistant/util/DownloadHelper;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-direct {p0}, Lcom/miui/personalassistant/util/DownloadHelper;->checkVersionUpgrade()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/miui/personalassistant/util/DownloadHelper;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/util/DownloadHelper;->download(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
