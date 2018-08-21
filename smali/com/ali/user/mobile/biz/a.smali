.class public Lcom/ali/user/mobile/biz/a;
.super Ljava/lang/Object;
.source "AliUserSdkLoginBiz.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/user/mobile/biz/a$a;,
        Lcom/ali/user/mobile/biz/a$b;
    }
.end annotation


# static fields
.field private static a:Lcom/ali/user/mobile/biz/a;

.field private static g:Landroid/content/Context;


# instance fields
.field private b:Lcom/ali/user/mobile/login/f;

.field private c:Lcom/ali/user/mobile/g/b;

.field private d:Lcom/ali/user/mobile/biz/a$a;

.field private e:Lcom/ali/user/mobile/common/a/a;

.field private f:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "AliUserSdkLoginBiz"

    const-string/jumbo v1, "AliUserSdkLoginBiz constructor"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/ali/user/mobile/biz/a;->g:Landroid/content/Context;

    sget-object v0, Lcom/ali/user/mobile/biz/a;->g:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/biz/a;->b(Landroid/content/Context;)V

    return-void
.end method

.method private a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    sget-object v0, Lcom/ali/user/mobile/biz/a;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$layout;->alipay_layout_language:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->switchLanguage:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->alipay_language_switch:I

    invoke-static {v2}, Lcom/ali/user/mobile/i/d;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/ali/user/mobile/biz/c;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/biz/c;-><init>(Lcom/ali/user/mobile/biz/a;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method static synthetic a(Lcom/ali/user/mobile/biz/a;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/ali/user/mobile/biz/a;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)Lcom/ali/user/mobile/account/model/UserLoginResult;
    .locals 7

    new-instance v1, Lcom/ali/user/mobile/account/model/UserLoginResult;

    invoke-direct {v1}, Lcom/ali/user/mobile/account/model/UserLoginResult;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->data:Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "bindCard"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/biz/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->bindCard:Z

    const-string/jumbo v0, "extern_token"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/biz/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->extern_token:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->headImg:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->headImg:Ljava/lang/String;

    const-string/jumbo v0, "isCertified"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/biz/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->isCertified:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->alipayLoginId:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->loginId:Ljava/lang/String;

    const-string/jumbo v0, "loginServerTime"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/biz/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->loginServerTime:Ljava/lang/String;

    const-string/jumbo v0, "loginToken"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/biz/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->loginToken:Ljava/lang/String;

    const-string/jumbo v0, "mobileNo"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/biz/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->mobileNo:Ljava/lang/String;

    const-string/jumbo v0, "resultStatus"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/biz/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->resultStatus:I

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->checkCodeId:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->tbCheckCodeId:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->checkCodeUrl:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->tbCheckCodeUrl:Ljava/lang/String;

    const-string/jumbo v0, "userName"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/biz/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->userName:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->userId:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->userId:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->extMap:Ljava/util/Map;

    const-string/jumbo v3, "sessionId"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->sessionId:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->extMap:Ljava/util/Map;

    const-string/jumbo v3, "customerType"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->customerType:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->extResAttrs:Ljava/util/Map;

    iget-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->extResAttrs:Ljava/util/Map;

    const-string/jumbo v3, "havanaId"

    iget-wide v4, p0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->hid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "extResAttrs"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->extResAttrs:Ljava/util/Map;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AliUserSdkLoginBiz"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v1

    :cond_0
    :try_start_1
    const-string/jumbo v0, "memo"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/biz/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->memo:Ljava/lang/String;

    const-string/jumbo v0, "currentProductVersion"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/biz/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->currentProductVersion:Ljava/lang/String;

    const-string/jumbo v0, "existNewVersion"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/biz/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->existNewVersion:Ljava/lang/String;

    const-string/jumbo v0, "downloadURL"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/biz/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->downloadURL:Ljava/lang/String;

    const-string/jumbo v0, "taobaoSid"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/biz/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->taobaoSid:Ljava/lang/String;

    const-string/jumbo v0, "barcodePayToken"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/biz/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->barcodePayToken:Ljava/lang/String;

    const-string/jumbo v0, "iconUrl"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/biz/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->iconUrl:Ljava/lang/String;

    const-string/jumbo v0, "loginCheckCodeImg"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/biz/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->loginCheckCodeImg:Ljava/lang/String;

    const-string/jumbo v0, "loginCheckCodeUrl"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/biz/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->loginCheckCodeUrl:Ljava/lang/String;

    const-string/jumbo v0, "loginContext"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/biz/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->loginContext:Ljava/lang/String;

    const-string/jumbo v0, "wirelessUser"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/biz/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->wirelessUser:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/ali/user/mobile/biz/a;
    .locals 2

    const-class v1, Lcom/ali/user/mobile/biz/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/biz/a;->a:Lcom/ali/user/mobile/biz/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/biz/a;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/biz/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/biz/a;->a:Lcom/ali/user/mobile/biz/a;

    :cond_0
    sget-object v0, Lcom/ali/user/mobile/biz/a;->a:Lcom/ali/user/mobile/biz/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/biz/a;->f:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/biz/a;->f:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "AliUserSdkLoginBiz"

    const-string/jumbo v1, "can not get: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private a(Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;Lcom/ali/user/mobile/account/bean/UserInfo;)V
    .locals 3

    const-string/jumbo v0, "AliUserSdkLoginBiz"

    const-string/jumbo v1, "processAlipayLoginResult"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/16 v0, 0x3e8

    :try_start_0
    invoke-virtual {p1}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->getResultStatus()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/ali/user/mobile/biz/a;->b(Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;Lcom/ali/user/mobile/account/bean/UserInfo;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/ali/user/mobile/biz/a;->g:Landroid/content/Context;

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_security_connect_network_fail:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ali/user/mobile/ui/widget/e/a;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AliUserSdkLoginBiz"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ali/user/mobile/biz/a;Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;Lcom/ali/user/mobile/login/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ali/user/mobile/biz/a;->a(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;Lcom/ali/user/mobile/login/a;)V

    return-void
.end method

.method private a(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;Lcom/ali/user/mobile/login/a;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/ali/user/mobile/biz/a;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getLoginService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/LoginService;

    move-result-object v3

    sget-object v0, Lcom/ali/user/mobile/biz/a;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getAuthService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/AuthService;

    move-result-object v0

    sget-object v4, Lcom/ali/user/mobile/biz/a;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getAccountService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

    move-result-object v4

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    const-string/jumbo v5, "AliUserSdkLoginBiz"

    const-string/jumbo v6, "processSdkLoginResult"

    invoke-static {v5, v6}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ali/user/mobile/biz/a;->a(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)Lcom/ali/user/mobile/account/model/UserLoginResult;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/biz/a;->b(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)Lcom/ali/user/mobile/account/model/UserLoginReq;

    move-result-object v6

    new-instance v7, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;

    invoke-direct {v7}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;-><init>()V

    invoke-interface {v0}, Lcom/ali/user/mobile/accountbiz/extservice/AuthService;->getLastLoginedUserInfo()Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object v8

    invoke-interface {v4}, Lcom/ali/user/mobile/accountbiz/extservice/AccountService;->getCurrentLoginUserId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v5}, Lcom/ali/user/mobile/biz/a;->a(Lcom/ali/user/mobile/account/model/UserLoginResult;)Z

    move-result v9

    if-nez v9, :cond_2

    move v0, v1

    :goto_0
    invoke-interface {v3, v5, v7, v6, v0}, Lcom/ali/user/mobile/accountbiz/extservice/LoginService;->processLoginResult(Lcom/ali/user/mobile/account/model/UserLoginResult;Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;Lcom/ali/user/mobile/account/model/UserLoginReq;Z)Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;

    if-eqz v9, :cond_3

    invoke-virtual {p2, v10}, Lcom/ali/user/mobile/login/a;->a(Landroid/os/Parcelable;)V

    sget-object v0, Lcom/ali/user/mobile/biz/a;->g:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getLoginId()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "login"

    invoke-virtual {p0, v0, v5, v9}, Lcom/ali/user/mobile/biz/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "AliUserSdkLoginBiz"

    const-string/jumbo v5, "\u8865\u5bc6\u5904\u7406\u5b8c\u6210\uff0c\u5f00\u59cb\u53d1\u9001\u767b\u5f55\u5e7f\u64ad"

    invoke-static {v0, v5}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v7}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-interface {v3, v2, v6, v7}, Lcom/ali/user/mobile/accountbiz/extservice/LoginService;->sendLoginBroadcast(ZLcom/ali/user/mobile/account/model/UserLoginReq;Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;)V

    invoke-direct {p0, v7, v8}, Lcom/ali/user/mobile/biz/a;->a(Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;Lcom/ali/user/mobile/account/bean/UserInfo;)V

    :goto_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-direct {p0, v7, v8}, Lcom/ali/user/mobile/biz/a;->a(Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;Lcom/ali/user/mobile/account/bean/UserInfo;)V

    invoke-virtual {p2, v10}, Lcom/ali/user/mobile/login/a;->a(Landroid/os/Parcelable;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "AliUserSdkLoginBiz"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loginService:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",authService:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Z)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v0, "AliUserSdkLoginBiz"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6, v5}, Lcom/ali/user/mobile/biz/a;->a(ZZ)V

    sget-object v0, Lcom/ali/user/mobile/biz/a;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/d/a;->a(Landroid/content/Context;)Lcom/alipay/mobile/common/d/a;

    move-result-object v0

    const-string/jumbo v1, "isValidScheme"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/ali/user/mobile/biz/a;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v3, Lcom/ali/user/mobile/biz/a;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v1}, Lcom/ali/user/mobile/util/c;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "alipays://platformapi/startapp?appId=20000009"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v3, "AliUserSdkLoginBiz"

    invoke-static {v3, v1}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "registBindToCard"

    invoke-direct {p0, v0, v5}, Lcom/ali/user/mobile/biz/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "AliUserSdkLoginBiz"

    const-string/jumbo v1, "Constants.REGISTBINDTOCARD, false"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "source_accountSelectAccount"

    invoke-direct {p0, v0, v5}, Lcom/ali/user/mobile/biz/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "source_login"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p1, :cond_1

    const-string/jumbo v1, "source_switchUser"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "source_gesture"

    invoke-direct {p0, v0, v5}, Lcom/ali/user/mobile/biz/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "isGoMain"

    invoke-direct {p0, v0, v5}, Lcom/ali/user/mobile/biz/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "AliUserSdkLoginBiz"

    const-string/jumbo v1, " goMain()"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "registbindToFundBao"

    invoke-direct {p0, v0, v5}, Lcom/ali/user/mobile/biz/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "AliUserSdkLoginBiz"

    const-string/jumbo v1, "Constants.REGISTBINDTOFUNDBAO, false()"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string/jumbo v0, "loginout"

    invoke-direct {p0, v0, v5}, Lcom/ali/user/mobile/biz/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "deviceLock"

    const-string/jumbo v1, "LoginSource"

    invoke-direct {p0, v1}, Lcom/ali/user/mobile/biz/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    const-string/jumbo v0, "AliUserSdkLoginBiz"

    const-string/jumbo v1, "\u8bbe\u5907\u9501\u88ab\u8e22\u540e\u5207\u6362\u8d26\u6237\u767b\u5f55\uff0c\u56de\u9996\u9875"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v0, "AliUserSdkLoginBiz"

    const-string/jumbo v1, "toDefaultApp()"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private a(ZZ)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/biz/a;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getAuthService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/AuthService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/ali/user/mobile/accountbiz/extservice/AuthService;->notifyUnlockLoginApp(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AliUserSdkLoginBiz"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lcom/ali/user/mobile/account/model/UserLoginResult;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getExtResAttrs()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "noQueryPwdUser"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v4, "needSupplyQueryPwd"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v4, "AliUserSdkLoginBiz"

    const-string/jumbo v5, "\u662f\u5426\u65e0\u5bc6\u8d26\u6237:%s\uff0c\u662f\u5426\u9700\u8981\u8865\u5168:%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v3

    aput-object v1, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/biz/a;->f:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/biz/a;->f:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)Lcom/ali/user/mobile/account/model/UserLoginReq;
    .locals 3

    new-instance v1, Lcom/ali/user/mobile/account/model/UserLoginReq;

    invoke-direct {v1}, Lcom/ali/user/mobile/account/model/UserLoginReq;-><init>()V

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->alipayLoginId:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginReq;->loginId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->extMap:Ljava/util/Map;

    const-string/jumbo v2, "lp"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginReq;->loginPassword:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->extMap:Ljava/util/Map;

    const-string/jumbo v2, "loginType"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginReq;->loginType:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->extMap:Ljava/util/Map;

    const-string/jumbo v2, "validateTpye"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginReq;->loginWthPwd:Ljava/lang/String;

    return-object v1
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/ali/user/mobile/biz/a;->g()Lcom/ali/user/mobile/g/b;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/a/a;->a(Lcom/ali/user/mobile/g/b;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/biz/a;->h()Lcom/ali/user/mobile/b/a;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/a;->a(Lcom/ali/user/mobile/b/a;)V

    invoke-static {p1}, Lcom/ali/user/mobile/a;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/b/a;->a()Lcom/alipay/mobile/common/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/b/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/info/AppInfo;->setChannel(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/biz/a;->a()V

    invoke-direct {p0}, Lcom/ali/user/mobile/biz/a;->f()V

    invoke-direct {p0}, Lcom/ali/user/mobile/biz/a;->e()V

    invoke-direct {p0}, Lcom/ali/user/mobile/biz/a;->d()V

    return-void
.end method

.method private b(Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;Lcom/ali/user/mobile/account/bean/UserInfo;)V
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "AliUserSdkLoginBiz"

    const-string/jumbo v2, "processAlipayLoginSuccess"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v0}, Lcom/ali/user/mobile/biz/a;->a(Z)V

    return-void
.end method

.method private static b(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v1, "AliUserSdkLoginBiz"

    const-string/jumbo v2, "can not get: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/ali/user/mobile/biz/a;->g:Landroid/content/Context;

    return-object v0
.end method

.method private d()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "VIEW_CUSTOMISE_ADAPTER"

    new-instance v2, Lcom/ali/user/mobile/biz/b;

    invoke-direct {v2, p0}, Lcom/ali/user/mobile/biz/b;-><init>(Lcom/ali/user/mobile/biz/a;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/ali/user/mobile/common/a/d;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method private e()V
    .locals 2

    const-string/jumbo v0, "AliUserSdkLoginBiz"

    const-string/jumbo v1, "registerLoginFragment"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "com.ali.user.mobile.login.ui.AlipayUserLoginActivity"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/a/a;->a(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AliUserSdkLoginBiz"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private f()V
    .locals 1

    new-instance v0, Lcom/ali/user/mobile/biz/d;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/biz/d;-><init>(Lcom/ali/user/mobile/biz/a;)V

    invoke-static {v0}, Lcom/ali/user/mobile/a/a;->a(Lcom/ali/user/mobile/login/a/a;)V

    return-void
.end method

.method private g()Lcom/ali/user/mobile/g/b;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/biz/a;->c:Lcom/ali/user/mobile/g/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/biz/a$b;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/biz/a$b;-><init>(Lcom/ali/user/mobile/biz/a;)V

    iput-object v0, p0, Lcom/ali/user/mobile/biz/a;->c:Lcom/ali/user/mobile/g/b;

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/biz/a;->c:Lcom/ali/user/mobile/g/b;

    return-object v0
.end method

.method private h()Lcom/ali/user/mobile/b/a;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/biz/a;->d:Lcom/ali/user/mobile/biz/a$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/biz/a$a;

    invoke-direct {v0}, Lcom/ali/user/mobile/biz/a$a;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/biz/a;->d:Lcom/ali/user/mobile/biz/a$a;

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/biz/a;->d:Lcom/ali/user/mobile/biz/a$a;

    return-object v0
.end method

.method private i()Lcom/ali/user/mobile/common/a/a;
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/biz/a;->e:Lcom/ali/user/mobile/common/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/common/a/a;

    sget-object v1, Lcom/ali/user/mobile/biz/a;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ali/user/mobile/common/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ali/user/mobile/biz/a;->e:Lcom/ali/user/mobile/common/a/a;

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/biz/a;->e:Lcom/ali/user/mobile/common/a/a;

    return-object v0
.end method

.method private j()Lcom/ali/user/mobile/login/f;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/biz/a;->b:Lcom/ali/user/mobile/login/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/biz/e;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/biz/e;-><init>(Lcom/ali/user/mobile/biz/a;)V

    iput-object v0, p0, Lcom/ali/user/mobile/biz/a;->b:Lcom/ali/user/mobile/login/f;

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/biz/a;->b:Lcom/ali/user/mobile/login/f;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-object v0, Lcom/ali/user/mobile/biz/a;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/ali/user/mobile/biz/a;->j()Lcom/ali/user/mobile/login/f;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/common/a/a;->a(Landroid/content/Context;Lcom/ali/user/mobile/login/f;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/biz/a;->f:Landroid/os/Bundle;

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0}, Lcom/ali/user/mobile/biz/a;->i()Lcom/ali/user/mobile/common/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/ali/user/mobile/common/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "AliUserSdkLoginBiz"

    const-string/jumbo v2, "\u8865\u5bc6\u6210\u529f\uff0c\u66f4\u65b0\u7528\u6237\u6570\u636e"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ali/user/mobile/login/g;->a()Lcom/ali/user/mobile/login/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/login/g;->b()V

    sget-object v1, Lcom/ali/user/mobile/biz/a;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getAuthService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/AuthService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/ali/user/mobile/accountbiz/extservice/AuthService;->getUserInfo()Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "false"

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/account/bean/UserInfo;->setNoQueryPwdUser(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ali/user/mobile/c/c;->a(Landroid/content/Context;)Lcom/ali/user/mobile/c/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ali/user/mobile/c/c;->a(Lcom/ali/user/mobile/account/bean/UserInfo;)Z

    const-string/jumbo v1, "AliUserSdkLoginBiz"

    const-string/jumbo v2, "\u66f4\u65b0userInfo\u6570\u636e\u6210\u529f"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public b()V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string/jumbo v0, "AliUserSdkLoginBiz"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startLoginSdk - param:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ali/user/mobile/biz/a;->f:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/biz/a;->f:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "AliUserSdkLoginBiz"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "source_accountSelectAccount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "source_accountSelectAccount"

    invoke-direct {p0, v4, v2}, Lcom/ali/user/mobile/biz/a;->a(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/ali/user/mobile/login/LoginParam;

    invoke-direct {v3}, Lcom/ali/user/mobile/login/LoginParam;-><init>()V

    iget-object v0, p0, Lcom/ali/user/mobile/biz/a;->f:Landroid/os/Bundle;

    const-string/jumbo v4, "loginInfo"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/account/bean/LoginInfo;

    if-eqz v0, :cond_5

    const-string/jumbo v2, "AliUserSdkLoginBiz"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "has userinfo, account:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/bean/LoginInfo;->getAccount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/bean/LoginInfo;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/ali/user/mobile/biz/a;->f:Landroid/os/Bundle;

    const-string/jumbo v4, "logonId"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/biz/a;->f:Landroid/os/Bundle;

    const-string/jumbo v2, "logonId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "AliUserSdkLoginBiz"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "has logonId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v3, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    move v0, v1

    :cond_0
    iget-object v2, p0, Lcom/ali/user/mobile/biz/a;->f:Landroid/os/Bundle;

    const-string/jumbo v4, "loginId"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/biz/a;->f:Landroid/os/Bundle;

    const-string/jumbo v2, "loginId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "AliUserSdkLoginBiz"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "has loginId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v3, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    move v0, v1

    :cond_1
    iget-object v2, p0, Lcom/ali/user/mobile/biz/a;->f:Landroid/os/Bundle;

    const-string/jumbo v4, "token"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/biz/a;->f:Landroid/os/Bundle;

    const-string/jumbo v2, "token"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/ali/user/mobile/login/LoginParam;->token:Ljava/lang/String;

    move v0, v1

    :cond_2
    iget-object v2, p0, Lcom/ali/user/mobile/biz/a;->f:Landroid/os/Bundle;

    const-string/jumbo v4, "validateType"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v0, p0, Lcom/ali/user/mobile/biz/a;->f:Landroid/os/Bundle;

    const-string/jumbo v2, "validateType"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    :goto_1
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/ali/user/mobile/biz/a;->f:Landroid/os/Bundle;

    const-string/jumbo v1, "login_param"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_3
    invoke-direct {p0}, Lcom/ali/user/mobile/biz/a;->e()V

    invoke-direct {p0}, Lcom/ali/user/mobile/biz/a;->i()Lcom/ali/user/mobile/common/a/a;

    move-result-object v0

    sget-object v1, Lcom/ali/user/mobile/biz/a;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/ali/user/mobile/biz/a;->f:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/common/a/a;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void

    :cond_4
    move v1, v0

    goto :goto_1

    :cond_5
    move v0, v2

    goto/16 :goto_0
.end method
