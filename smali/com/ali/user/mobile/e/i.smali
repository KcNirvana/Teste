.class public Lcom/ali/user/mobile/e/i;
.super Ljava/lang/Object;
.source "RpcLogUtil.java"


# direct methods
.method public static a(Lcom/alipay/android/phone/inside/log/api/behavior/a;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/mdap/vo/pb/UnifyCustomMdapReqPb;
    .locals 4

    invoke-static {}, Lcom/ali/user/mobile/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobileapp/biz/rpc/mdap/vo/pb/UnifyCustomMdapReqPb;

    invoke-direct {v2}, Lcom/alipay/mobileapp/biz/rpc/mdap/vo/pb/UnifyCustomMdapReqPb;-><init>()V

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/mobileapp/biz/rpc/mdap/vo/pb/UnifyCustomMdapReqPb;->alipayproductid:Ljava/lang/String;

    iput-object v1, v2, Lcom/alipay/mobileapp/biz/rpc/mdap/vo/pb/UnifyCustomMdapReqPb;->alipayproductversion:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getChannel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/mobileapp/biz/rpc/mdap/vo/pb/UnifyCustomMdapReqPb;->app_channel:Ljava/lang/String;

    iput-object p1, v2, Lcom/alipay/mobileapp/biz/rpc/mdap/vo/pb/UnifyCustomMdapReqPb;->behaviortype:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/b/b;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/mobileapp/biz/rpc/mdap/vo/pb/UnifyCustomMdapReqPb;->device_model:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->g:Ljava/lang/String;

    iput-object v1, v2, Lcom/alipay/mobileapp/biz/rpc/mdap/vo/pb/UnifyCustomMdapReqPb;->exinfo1:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->h:Ljava/lang/String;

    iput-object v1, v2, Lcom/alipay/mobileapp/biz/rpc/mdap/vo/pb/UnifyCustomMdapReqPb;->exinfo2:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->i:Ljava/lang/String;

    iput-object v1, v2, Lcom/alipay/mobileapp/biz/rpc/mdap/vo/pb/UnifyCustomMdapReqPb;->exinfo3:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->j:Ljava/util/Map;

    invoke-static {v1}, Lcom/ali/user/mobile/e/i;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/mobileapp/biz/rpc/mdap/vo/pb/UnifyCustomMdapReqPb;->exinfo4:Ljava/lang/String;

    invoke-static {v0}, Lcom/ali/user/mobile/info/f;->a(Landroid/content/Context;)Lcom/ali/user/mobile/info/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/f;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/mobileapp/biz/rpc/mdap/vo/pb/UnifyCustomMdapReqPb;->ip:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->a:Ljava/lang/String;

    iput-object v1, v2, Lcom/alipay/mobileapp/biz/rpc/mdap/vo/pb/UnifyCustomMdapReqPb;->lbslocation:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/e/i;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/mobileapp/biz/rpc/mdap/vo/pb/UnifyCustomMdapReqPb;->logtime:Ljava/lang/String;

    invoke-static {v0}, Lcom/ali/user/mobile/info/f;->a(Landroid/content/Context;)Lcom/ali/user/mobile/info/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/info/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/mobileapp/biz/rpc/mdap/vo/pb/UnifyCustomMdapReqPb;->network:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/b/b;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/mobileapp/biz/rpc/mdap/vo/pb/UnifyCustomMdapReqPb;->os_version:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->c:Ljava/lang/String;

    iput-object v1, v2, Lcom/alipay/mobileapp/biz/rpc/mdap/vo/pb/UnifyCustomMdapReqPb;->seed:Ljava/lang/String;

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getAuthService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/AuthService;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/mobile/accountbiz/extservice/AuthService;->getLastLoginedUserInfo()Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/mdap/vo/pb/UnifyCustomMdapReqPb;->userid:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/ali/user/mobile/info/e;->a()Lcom/ali/user/mobile/info/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/e;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/mdap/vo/pb/UnifyCustomMdapReqPb;->utdid:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->e:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/mdap/vo/pb/UnifyCustomMdapReqPb;->viewid:Ljava/lang/String;

    return-object v2
.end method

.method public static a()Ljava/lang/String;
    .locals 10

    const/16 v9, 0xa

    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v8, 0xe

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v8, 0x2d

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ge v3, v9, :cond_0

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ge v4, v9, :cond_1

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ge v5, v9, :cond_2

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ge v6, v9, :cond_3

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ge v7, v9, :cond_4

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    if-ge v0, v2, :cond_5

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    if-ge v0, v9, :cond_6

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "^"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
