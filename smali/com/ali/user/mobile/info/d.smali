.class Lcom/ali/user/mobile/info/d;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/info/AppInfo;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/info/AppInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/info/d;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ali/user/mobile/info/d;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-static {v0}, Lcom/ali/user/mobile/info/AppInfo;->access$100(Lcom/ali/user/mobile/info/AppInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ".alipay.com"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "devKeySet="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/info/d;->a:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/AppInfo;->getDeviceKeySet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
