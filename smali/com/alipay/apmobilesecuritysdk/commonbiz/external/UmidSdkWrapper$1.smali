.class final Lcom/alipay/apmobilesecuritysdk/commonbiz/external/UmidSdkWrapper$1;
.super Ljava/lang/Object;
.source "UmidSdkWrapper.java"

# interfaces
.implements Lcom/taobao/dp/client/IInitResultListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFinished(Ljava/lang/String;I)V
    .locals 4

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/external/UmidSdkWrapper;->access$002(Z)Z

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/commonbiz/external/UmidSdkWrapper;->access$100()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "APSecuritySdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "umidToken = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", errorCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
