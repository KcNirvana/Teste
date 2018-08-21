.class public Lcom/ali/user/mobile/biz/a$a;
.super Ljava/lang/Object;
.source "AliUserSdkLoginBiz.java"

# interfaces
.implements Lcom/ali/user/mobile/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ali/user/mobile/biz/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/biz/a$a;->b:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/biz/a;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getDeviceService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/biz/a$a;->a:Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Lcom/ali/user/mobile/info/g;
    .locals 3

    new-instance v0, Lcom/ali/user/mobile/info/g;

    invoke-direct {v0}, Lcom/ali/user/mobile/info/g;-><init>()V

    iget-object v1, p0, Lcom/ali/user/mobile/biz/a$a;->a:Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;

    invoke-interface {v1}, Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;->queryCertification()Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/info/g;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getMspkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/info/g;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/info/g;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/info/g;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getVimei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/info/g;->e(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getVimsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/info/g;->f(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/common/b/a;->a()Lcom/alipay/mobile/common/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/a;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/common/b/a;->a()Lcom/alipay/mobile/common/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/a;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/b;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->alipay_application_name:I

    invoke-static {v0}, Lcom/ali/user/mobile/i/d;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/common/b/a;->a()Lcom/alipay/mobile/common/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/a;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/biz/a$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ALIPAY_INSIDE_HUAWEI"

    invoke-static {}, Lcom/alipay/mobile/common/b/a;->a()Lcom/alipay/mobile/common/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/b/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    const-string/jumbo v0, "23699722"

    iput-object v0, p0, Lcom/ali/user/mobile/biz/a$a;->b:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/biz/a$a;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_2
    const-string/jumbo v0, "23699722"

    goto :goto_0
.end method
