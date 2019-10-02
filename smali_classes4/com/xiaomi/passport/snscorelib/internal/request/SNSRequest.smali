.class public Lcom/xiaomi/passport/snscorelib/internal/request/SNSRequest;
.super Ljava/lang/Object;
.source "SNSRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/snscorelib/internal/request/SNSRequest$NeedLoginForBindException;
    }
.end annotation


# static fields
.field private static final INVALID_RESPONSE_EXCEPTION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SNSRequest"

.field private static final URL_BIND_SNS_BY_CODE:Ljava/lang/String;

.field private static final URL_BIND_SNS_BY_TOKENE:Ljava/lang/String;

.field private static final URL_GET_SNS_ACCESS_TOKEN:Ljava/lang/String;

.field private static final URL_SNS_TOKEN_LOGIN:Ljava/lang/String;

.field public static final URL_UNBIND_SNS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/accountsdk/account/URLs;->URL_ACCOUNT_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/sns/login/load"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/passport/snscorelib/internal/request/SNSRequest;->URL_GET_SNS_ACCESS_TOKEN:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/accountsdk/account/URLs;->URL_ACCOUNT_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/sns/login/load/token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/passport/snscorelib/internal/request/SNSRequest;->URL_SNS_TOKEN_LOGIN:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/accountsdk/account/URLs;->URL_ACCOUNT_API_V2_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/safe/user/accessToken/full/delete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/passport/snscorelib/internal/request/SNSRequest;->URL_UNBIND_SNS:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/accountsdk/account/URLs;->URL_ACCOUNT_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/sns/bind/bindSns"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/passport/snscorelib/internal/request/SNSRequest;->URL_BIND_SNS_BY_CODE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/accountsdk/account/URLs;->URL_ACCOUNT_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/sns/token/bind/try"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/passport/snscorelib/internal/request/SNSRequest;->URL_BIND_SNS_BY_TOKENE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAccountInfo(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;,
            Lcom/xiaomi/passport/snscorelib/internal/request/SNSRequest$NeedLoginForBindException;
        }
    .end annotation

    iget v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->status:I

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown error:status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->snsBindTryUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->snsTokenPh:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->openId:Ljava/lang/String;

    iget-object p0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->sid:Ljava/lang/String;

    new-instance v3, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter$Builder;

    invoke-direct {v3}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter$Builder;-><init>()V

    invoke-virtual {v3, v0}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter$Builder;->snsBindUrl(Ljava/lang/String;)Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter$Builder;->sns_token_ph(Ljava/lang/String;)Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter$Builder;->sns_weixin_openId(Ljava/lang/String;)Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter$Builder;->snsSid(Ljava/lang/String;)Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter$Builder;->build()Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;

    move-result-object p0

    new-instance v0, Lcom/xiaomi/passport/snscorelib/internal/request/SNSRequest$NeedLoginForBindException;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/snscorelib/internal/request/SNSRequest$NeedLoginForBindException;-><init>(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->notificationUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->sid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->userId(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;->passToken:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->passToken(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->build()Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getAccountInfo(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;,
            Lcom/xiaomi/passport/snscorelib/internal/request/SNSRequest$NeedLoginForBindException;,
            Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "description"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;

    invoke-direct {v1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;-><init>()V

    const-string v2, "Status"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;->status(I)Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;

    move-result-object v1

    const-string v2, "Sid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;->sid(Ljava/lang/String;)Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;

    move-result-object v1

    const-string v2, "WebViewCallback"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;->webViewCallback(Ljava/lang/String;)Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;

    move-result-object v1

    const-string v2, "Callback"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;->callback(Ljava/lang/String;)Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;

    move-result-object v1

    const-string v2, "NotificationUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;->notificationUrl(Ljava/lang/String;)Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;

    move-result-object v1

    const-string v2, "userId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;->userId(Ljava/lang/String;)Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;

    move-result-object v1

    const-string v2, "passToken"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;->passToken(Ljava/lang/String;)Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;

    move-result-object v1

    const-string v2, "snsBindTryUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;->snsBindTryUrl(Ljava/lang/String;)Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;

    move-result-object v1

    const-string v2, "sns_token_ph"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;->snsTokenPh(Ljava/lang/String;)Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;

    move-result-object v1

    const-string v2, "openId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;->openId(Ljava/lang/String;)Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$Builder;->build()Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/passport/snscorelib/internal/request/SNSRequest;->getAccountInfo(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "SNSRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccountInfo :code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";message = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;

    invoke-virtual {p0}, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;->getCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;-><init>(ILjava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccountInfo:fail to parse JSONObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SNSRequest"

    invoke-static {v2, v1, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccountInfo:fail to parse JSONObject: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private static getSNSBindParameter(Ljava/lang/String;)Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "description"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter$Builder;

    invoke-direct {v1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter$Builder;-><init>()V

    const-string v2, "snsBindTryUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter$Builder;->snsBindUrl(Ljava/lang/String;)Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter$Builder;

    move-result-object v1

    const-string v2, "sns_token_ph"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter$Builder;->sns_token_ph(Ljava/lang/String;)Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter$Builder;

    move-result-object v1

    const-string v2, "openId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter$Builder;->sns_weixin_openId(Ljava/lang/String;)Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter$Builder;->build()Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "SNSRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSNSBindParameter :code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";message = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;

    invoke-virtual {p0}, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;->getCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;-><init>(ILjava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSNSBindParameter: fail to parse JSONObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SNSRequest"

    invoke-static {v1, p0, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSNSBindParameter: fail to parse JSONObject:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public static getSNSBindParameterByCode(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/InvalidResponseException;,
            Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    const-string v1, "passToken"

    iget-object v2, p1, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->passToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object v0

    const-string v1, "userId"

    iget-object v2, p1, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    const-string v2, "code"

    iget-object v3, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;->code:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPutOpt(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object v1

    const-string v2, "_json"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object v1

    const-string v2, "userId"

    iget-object p1, p1, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object p1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x3

    :try_start_0
    const-string v3, "sid"

    iget-object v4, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;->sid:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "callback"

    iget-object v4, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;->callback:Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v4, ""

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;->callback:Ljava/lang/String;

    :goto_0
    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "appid"

    iget-object p0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;->appid:Ljava/lang/String;

    invoke-virtual {v1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "state"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/passport/snscorelib/internal/utils/CodeUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPutOpt(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    const-string p0, "http.agent"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    const-string v3, "User-Agent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " AndroidSnsSDK/"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "1.0"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v3, p0}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object p0

    sget-object v1, Lcom/xiaomi/passport/snscorelib/internal/request/SNSRequest;->URL_BIND_SNS_BY_CODE:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, p1, p0, v0, v3}, Lcom/xiaomi/accountsdk/request/SimpleRequestForAccount;->getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->getBody()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/passport/snscorelib/internal/request/SNSRequest;->getSNSBindParameter(Ljava/lang/String;)Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;

    const-string p1, "failed to getSNSBindParameterByCode : stringContent is null"

    invoke-direct {p0, v2, p1}, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;-><init>(ILjava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, "SNSRequest"

    const-string v0, "getSNSBindParameterByCode :invalid state params"

    invoke-static {p1, v0, p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSNSBindParameterByCode:invalid state params:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v2, p0}, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public static getSNSBindParameterByToken(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/InvalidResponseException;,
            Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;
        }
    .end annotation

    const-string v0, "-1"

    iget-object v1, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;->expires_in:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;->expires_in:Ljava/lang/String;

    :cond_0
    new-instance v1, Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    const-string v2, "passToken"

    iget-object v3, p1, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->passToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object v1

    const-string v2, "userId"

    iget-object v3, p1, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-direct {v2}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    const-string v3, "enToken"

    iget-object v4, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;->enToken:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPutOpt(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object v2

    const-string v3, "token"

    iget-object v4, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;->token:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPutOpt(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object v2

    const-string v3, "expires_in"

    invoke-virtual {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPutOpt(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object v0

    const-string v2, "openId"

    iget-object v3, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;->openId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPutOpt(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object v0

    const-string v2, "userId"

    iget-object p1, p1, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->userId:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPutOpt(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object p1

    const-string v0, "_json"

    const-string v2, "true"

    invoke-virtual {p1, v0, v2}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x3

    :try_start_0
    const-string v3, "sid"

    iget-object v4, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;->sid:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "callback"

    iget-object v4, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;->callback:Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v4, ""

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;->callback:Ljava/lang/String;

    :goto_0
    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "appid"

    iget-object p0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;->appid:Ljava/lang/String;

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "state"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/passport/snscorelib/internal/utils/CodeUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPutOpt(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    const-string p0, "http.agent"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    const-string v3, "User-Agent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " AndroidSnsSDK/"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "1.0"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/passport/snscorelib/internal/request/SNSRequest;->URL_BIND_SNS_BY_TOKENE:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, p1, p0, v1, v3}, Lcom/xiaomi/accountsdk/request/SimpleRequestForAccount;->getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->getBody()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/passport/snscorelib/internal/request/SNSRequest;->getSNSBindParameter(Ljava/lang/String;)Lcom/xiaomi/passport/snscorelib/internal/entity/SNSBindParameter;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;

    const-string p1, "failed to getSNSBindParameterByToken : stringContent is null"

    invoke-direct {p0, v2, p1}, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;-><init>(ILjava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, "SNSRequest"

    const-string v0, "getSNSBindParameterByToken :invalid state params"

    invoke-static {p1, v0, p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSNSBindParameterByToken :invalid state params:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v2, p0}, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method private static getSNSTokenLoginUrl(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/InvalidResponseException;,
            Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    const-string v1, "code"

    iget-object v2, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;->code:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPutOpt(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object v0

    const-string v1, "_json"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x3

    :try_start_0
    const-string v3, "sid"

    iget-object v4, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;->sid:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "callback"

    iget-object v4, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;->callback:Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v4, ""

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;->callback:Ljava/lang/String;

    :goto_0
    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "appid"

    iget-object p0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;->appid:Ljava/lang/String;

    invoke-virtual {v1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    const-string p0, "state"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/passport/snscorelib/internal/utils/CodeUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPutOpt(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    const-string p0, "http.agent"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    const-string v3, "User-Agent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " AndroidSnsSDK/"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "1.0"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v3, p0}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object p0

    sget-object v1, Lcom/xiaomi/passport/snscorelib/internal/request/SNSRequest;->URL_GET_SNS_ACCESS_TOKEN:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v0, p0, v3, v4}, Lcom/xiaomi/accountsdk/request/SimpleRequestForAccount;->getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    if-eqz p0, :cond_2

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "description"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_1

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "SNSRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSNSTokenLoginUrl :code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ";message = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;

    invoke-virtual {p0}, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;->getCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;-><init>(ILjava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSNSTokenLoginUrl: fail to parse JSONObject "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SNSRequest"

    invoke-static {v1, p0, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSNSTokenLoginUrl: fail to parse JSONObject:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;

    const-string v0, "failed to getSNSTokenLoginUrl : stringContent is null"

    invoke-direct {p0, v2, v0}, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;-><init>(ILjava/lang/String;)V

    throw p0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v0, "SNSRequest"

    const-string v1, "getSNSTokenLoginUrl :invalid state params"

    invoke-static {v0, v1, p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSNSTokenLoginUrl:invalid state params:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static snsLoginByAccessToken(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/InvalidResponseException;,
            Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;,
            Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;,
            Lcom/xiaomi/passport/snscorelib/internal/request/SNSRequest$NeedLoginForBindException;
        }
    .end annotation

    const-string v0, "-1"

    iget-object v1, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;->expires_in:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;->expires_in:Ljava/lang/String;

    :cond_0
    new-instance v1, Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    const-string v2, "enToken"

    iget-object v3, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;->enToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPutOpt(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object v1

    const-string v2, "token"

    iget-object v3, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;->token:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPutOpt(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object v1

    const-string v2, "expires_in"

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPutOpt(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object v0

    const-string v1, "openId"

    iget-object v2, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;->openId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPutOpt(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object v0

    const-string v1, "_json"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object v0

    const-string v1, "_auto"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x3

    :try_start_0
    const-string v3, "sid"

    iget-object v4, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;->sid:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "callback"

    iget-object v4, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;->callback:Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v4, ""

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;->callback:Ljava/lang/String;

    :goto_0
    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "appid"

    iget-object p0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;->appid:Ljava/lang/String;

    invoke-virtual {v1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "state"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/passport/snscorelib/internal/utils/CodeUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPutOpt(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    const-string p0, "http.agent"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    const-string v3, "User-Agent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " AndroidSnsSDK/"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "1.0"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v3, p0}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object p0

    sget-object v1, Lcom/xiaomi/passport/snscorelib/internal/request/SNSRequest;->URL_SNS_TOKEN_LOGIN:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v0, p0, v3, v4}, Lcom/xiaomi/accountsdk/request/SimpleRequestForAccount;->getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->getBody()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/passport/snscorelib/internal/request/SNSRequest;->getAccountInfo(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;

    const-string v0, "failed to snsLoginByAccessToken : stringContent is null"

    invoke-direct {p0, v2, v0}, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;-><init>(ILjava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v0, "SNSRequest"

    const-string v1, "snsLoginByAccessToken :invalid state params"

    invoke-static {v0, v1, p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "snsLoginByAccessToken :invalid state params:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static snsLoginByCode(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/InvalidResponseException;,
            Lcom/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;,
            Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;,
            Lcom/xiaomi/passport/snscorelib/internal/request/SNSRequest$NeedLoginForBindException;
        }
    .end annotation

    invoke-static {p0}, Lcom/xiaomi/passport/snscorelib/internal/request/SNSRequest;->getSNSTokenLoginUrl(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_auto=true"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v0, v1}, Lcom/xiaomi/accountsdk/request/SimpleRequestForAccount;->getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->getBody()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/passport/snscorelib/internal/request/SNSRequest;->getAccountInfo(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0

    return-object p0
.end method
