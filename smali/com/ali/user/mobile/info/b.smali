.class Lcom/ali/user/mobile/info/b;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/info/a;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/info/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/info/b;->a:Lcom/ali/user/mobile/info/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;)V
    .locals 5

    const-string/jumbo v0, "AppInfo"

    const-string/jumbo v1, "apdid:%s, apdidToken:%s, umidToken:%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdidToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->umidToken:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/info/b;->a:Lcom/ali/user/mobile/info/a;

    iget-object v0, v0, Lcom/ali/user/mobile/info/a;->b:Lcom/ali/user/mobile/info/AppInfo;

    iget-object v1, p1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/info/AppInfo;->access$002(Lcom/ali/user/mobile/info/AppInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/info/b;->a:Lcom/ali/user/mobile/info/a;

    iget-object v0, v0, Lcom/ali/user/mobile/info/a;->b:Lcom/ali/user/mobile/info/AppInfo;

    iget-object v1, p1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdidToken:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/info/AppInfo;->access$102(Lcom/ali/user/mobile/info/AppInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/info/b;->a:Lcom/ali/user/mobile/info/a;

    iget-object v0, v0, Lcom/ali/user/mobile/info/a;->b:Lcom/ali/user/mobile/info/AppInfo;

    iget-object v1, p1, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->umidToken:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/info/AppInfo;->access$202(Lcom/ali/user/mobile/info/AppInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/info/b;->a:Lcom/ali/user/mobile/info/a;

    iget-object v0, v0, Lcom/ali/user/mobile/info/a;->b:Lcom/ali/user/mobile/info/AppInfo;

    invoke-static {v0}, Lcom/ali/user/mobile/info/AppInfo;->access$300(Lcom/ali/user/mobile/info/AppInfo;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v0, p0, Lcom/ali/user/mobile/info/b;->a:Lcom/ali/user/mobile/info/a;

    iget-object v0, v0, Lcom/ali/user/mobile/info/a;->b:Lcom/ali/user/mobile/info/AppInfo;

    invoke-static {v0}, Lcom/ali/user/mobile/info/AppInfo;->access$400(Lcom/ali/user/mobile/info/AppInfo;)V

    return-void
.end method
