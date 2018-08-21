.class Lcom/ali/user/mobile/info/a;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/ali/user/mobile/info/AppInfo;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/info/AppInfo;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/info/a;->b:Lcom/ali/user/mobile/info/AppInfo;

    iput-object p2, p0, Lcom/ali/user/mobile/info/a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string/jumbo v0, "AppInfo"

    const-string/jumbo v1, "start to initUmidToken"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "utdid"

    invoke-static {}, Lcom/ali/user/mobile/info/e;->a()Lcom/ali/user/mobile/info/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ali/user/mobile/info/a;->b:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getTidInfo()Lcom/ali/user/mobile/info/g;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "tid"

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string/jumbo v0, "userId"

    invoke-static {}, Lcom/ali/user/mobile/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/ali/user/mobile/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/ali/user/mobile/info/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v2

    new-instance v3, Lcom/ali/user/mobile/info/b;

    invoke-direct {v3, p0}, Lcom/ali/user/mobile/info/b;-><init>(Lcom/ali/user/mobile/info/a;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->initToken(ILjava/util/Map;Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
