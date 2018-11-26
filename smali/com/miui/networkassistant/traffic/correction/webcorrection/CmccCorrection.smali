.class public Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/traffic/correction/IWebCorrection;


# static fields
.field private static final AUTO_LOGIN_URL:Ljava/lang/String; = "http://wx.10086.cn/website/bind/oneKeySignIn/login?checkCtrol=1"

.field private static final BACKGROUND_CORRECTION_FAILED:I = 0x0

.field private static final BACKGROUND_CORRECTION_SUCCESS:I = 0x1

.field private static final CMCC_URL:Ljava/lang/String; = "http://wx.10086.cn/website/personalHome/new/index?secondChannel=60018"

.field private static DEBUG:Z = false

.field private static final GET_ACCESS_TOKEN_URL:Ljava/lang/String; = "http://wx.10086.cn/website/bind/oneKeySignIn/getRzAccessToken?timeStr="

.field private static final GET_BALANCE_INFO_URL:Ljava/lang/String; = "http://wx.10086.cn/website/personalHome/fareBalance"

.field private static final GET_MOBILE_NUMBER_URL:Ljava/lang/String; = "http://wx.10086.cn/website/bind/oneKeySignIn/getMobileNumber"

.field private static final GET_MOBILE_R_URL:Ljava/lang/String; = "http://www.cmpassport.com/openapi/getMobileR?ver=1.0&appId=000023&msgId=%1$s&timestamp=%2$s&accessToken=%3$s&openType=1&message=%4$s&redirectUrl="

.field private static final GET_TRAFFIC_INFO_URL:Ljava/lang/String; = "http://wx.10086.cn/website/personalHome/planRemain"

.field private static final MANUAL_CORRECTION_FAILED:I = 0x2

.field private static final MANUAL_CORRECTION_SUCCESS:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;

.field private static final synthetic td:[I


# instance fields
.field private mAsyncTask:Landroid/os/AsyncTask;

.field private mContext:Landroid/content/Context;

.field private mIsBackground:Z

.field private mSlotNum:I

.field private mStatus:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

.field private mTrafficUsedStatus:Lcom/miui/networkassistant/model/TrafficUsedStatus;

.field private mWebCorrectionListener:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;


# direct methods
.method static synthetic -wrap0(Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->processStatus(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->sInstance:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->STATUS_GET_ACCESS_TOKEN:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->mStatus:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/net/CookieManager;

    sget-object v1, Ljava/net/CookiePolicy;->ACCEPT_ALL:Ljava/net/CookiePolicy;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    return-void
.end method

.method private checkPackageItem(Lorg/json/JSONObject;Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string/jumbo v0, "resourcesLeftInfo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "secResourcesName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->isValidPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "totalRes"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "usedRes"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "remainRes"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "unit"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    const-string/jumbo v5, "03"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v0, 0x400

    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    int-to-long v6, v0

    mul-long/2addr v4, v6

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    int-to-long v8, v0

    mul-long/2addr v6, v8

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    int-to-long v0, v0

    mul-long/2addr v0, v2

    invoke-virtual {p2}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getTotalTrafficB()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-virtual {p2, v2, v3}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setTotalTrafficB(J)V

    invoke-virtual {p2}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getUsedTrafficB()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {p2, v2, v3}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setUsedTrafficB(J)V

    invoke-virtual {p2}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getRemainTrafficB()J

    move-result-wide v2

    sub-long v0, v2, v0

    invoke-virtual {p2, v0, v1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setRemainTrafficB(J)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string/jumbo v5, "05"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private filterTrafficResult(Ljava/lang/String;Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "planRemain"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v3, v0

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_3

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v5, "04"

    const-string/jumbo v6, "resourcesCode"

    const-string/jumbo v7, ""

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_1
    if-nez v1, :cond_1

    return-void

    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "secResourcesInfo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->checkPackageItem(Lorg/json/JSONObject;Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void

    :cond_3
    move-object v1, v2

    goto :goto_1
.end method

.method private finishCorrection()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->mWebCorrectionListener:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->mWebCorrectionListener:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->mTrafficUsedStatus:Lcom/miui/networkassistant/model/TrafficUsedStatus;

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;->onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    :cond_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->mIsBackground:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackCmccWebCorrect(I)V

    return-void

    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;
    .locals 2

    const-class v1, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->sInstance:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->sInstance:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->sInstance:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleStateGetAccess(Ljava/lang/String;)V
    .locals 7

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "resultCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMddhhmmssSSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "msgId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "accessToken"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "message"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "http://www.cmpassport.com/openapi/getMobileR?ver=1.0&appId=000023&msgId=%1$s&timestamp=%2$s&accessToken=%3$s&openType=1&message=%4$s&redirectUrl="

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v1, v5, v2

    const/4 v1, 0x2

    aput-object v3, v5, v1

    const/4 v1, 0x3

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "http://wx.10086.cn/website/bind/oneKeySignIn/getMobileNumber"

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get mobile num:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->STATUS_GET_MOBILE_NUMBER:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    iput-object v1, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->mStatus:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->httpGet(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    invoke-direct {p0}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->notifyCorrectionFailure()V

    sget-boolean v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fail to get access token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private handleStateGetBalanceInfo(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->STATUS_FINISH:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->mStatus:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    sget-boolean v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "STATUS_GET_BALANCE_INFO:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->mTrafficUsedStatus:Lcom/miui/networkassistant/model/TrafficUsedStatus;

    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->parseBalanceResult(Ljava/lang/String;Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    return-void
.end method

.method private handleStateGetMobileNum(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "STATUS_GET_MOBILE_NUMBER:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->STATUS_LOGIN:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->mStatus:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    const-string/jumbo v0, "http://wx.10086.cn/website/bind/oneKeySignIn/login?checkCtrol=1"

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->httpGet(Ljava/lang/String;)V

    return-void
.end method

.method private handleStateGetTrafficInfo(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "STATUS_GET_TRAFFIC_INFO:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->mTrafficUsedStatus:Lcom/miui/networkassistant/model/TrafficUsedStatus;

    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->parseTrafficResult(Ljava/lang/String;Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    sget-object v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->STATUS_GET_BALANCE_INFO:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->mStatus:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    const-string/jumbo v0, "http://wx.10086.cn/website/personalHome/fareBalance"

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->httpGet(Ljava/lang/String;)V

    return-void
.end method

.method private handleStateLogin(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->STATUS_GET_TRAFFIC_INFO:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->mStatus:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    const-string/jumbo v0, "http://wx.10086.cn/website/personalHome/planRemain"

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->httpGet(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->notifyCorrectionFailure()V

    sget-boolean v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fail to login:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private httpGet(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$1;-><init>(Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;)V

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->mAsyncTask:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->mAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private isValidPackage(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private notifyCorrectionFailure()V
    .locals 3

    sget-object v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->STATUS_ERROR:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->mStatus:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->mWebCorrectionListener:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    iget v1, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->mSlotNum:I

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(II)V

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->mWebCorrectionListener:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;

    invoke-interface {v1, v0}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;->onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    iget-boolean v0, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->mIsBackground:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackCmccWebCorrect(I)V

    return-void

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private parseBalanceResult(Ljava/lang/String;Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setFromWeb(Z)V

    const-string/jumbo v1, "remainTelFee"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setBillEnabled(Z)V

    const-string/jumbo v1, "remainTelFee"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setBillRemained(J)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setReturnCode(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private parseTrafficResult(Ljava/lang/String;Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 6

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setFromWeb(Z)V

    const-string/jumbo v1, "totalIsuse"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "totalIsuse"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v1, v2

    const-string/jumbo v2, "flowIsuse"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v2, v2

    const-string/jumbo v3, "unit"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getBytesByUnit(FLjava/lang/String;)J

    move-result-wide v4

    invoke-static {v2, v0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getBytesByUnit(FLjava/lang/String;)J

    move-result-wide v0

    sub-long v2, v4, v0

    invoke-virtual {p2, v4, v5}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setTotalTrafficB(J)V

    invoke-virtual {p2, v0, v1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setRemainTrafficB(J)V

    invoke-virtual {p2, v2, v3}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setUsedTrafficB(J)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setNormalStable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setReturnCode(I)V

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->filterTrafficResult(Ljava/lang/String;Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private processStatus(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->uZ()[I

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->mStatus:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    invoke-virtual {v1}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->notifyCorrectionFailure()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->handleStateGetAccess(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->handleStateGetMobileNum(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->handleStateLogin(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->handleStateGetTrafficInfo(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->handleStateGetBalanceInfo(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->finishCorrection()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private startCorrection()V
    .locals 4

    sget-object v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->STATUS_GET_ACCESS_TOKEN:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->mStatus:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://wx.10086.cn/website/bind/oneKeySignIn/getRzAccessToken?timeStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startCorrection:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->httpGet(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic uZ()[I
    .locals 3

    sget-object v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->td:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->td:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->values()[Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->STATUS_ERROR:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    invoke-virtual {v1}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->STATUS_FINISH:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    invoke-virtual {v1}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->STATUS_GET_ACCESS_TOKEN:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    invoke-virtual {v1}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->STATUS_GET_BALANCE_INFO:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    invoke-virtual {v1}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->STATUS_GET_MOBILE_NUMBER:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    invoke-virtual {v1}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->STATUS_GET_TRAFFIC_INFO:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    invoke-virtual {v1}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->STATUS_LOGIN:Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;

    invoke-virtual {v1}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection$STATUS;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->td:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public queryDataUsage(Ljava/lang/String;JZLcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;)V
    .locals 6

    const/4 v5, 0x1

    sget-object v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start cmcc correction"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p4, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->mIsBackground:Z

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/dual/SimCardHelper;->getSlotNumByImsi(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->mSlotNum:I

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->mAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->mAsyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v5}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    iput-object p5, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->mWebCorrectionListener:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;

    new-instance v0, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    iget v1, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->mSlotNum:I

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(II)V

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->mTrafficUsedStatus:Lcom/miui/networkassistant/model/TrafficUsedStatus;

    invoke-direct {p0}, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->startCorrection()V

    if-nez p4, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "http://wx.10086.cn/website/personalHome/new/index?secondChannel=60018&slotid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/CmccCorrection;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lmiui/provider/ExtraNetwork;->navigateToRichWebActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    invoke-static {}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackShowCmccWebsite()V

    :cond_1
    return-void
.end method
