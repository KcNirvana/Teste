.class Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl$2;
.super Ljava/lang/Object;
.source "SecurityInitServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;

.field final synthetic val$userIdList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl$2;->this$0:Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;

    iput-object p2, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl$2;->val$userIdList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl$2;->this$0:Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;

    iget-object v0, v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->mDeviceService:Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl$2;->this$0:Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;

    iget-object v0, v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->mDeviceService:Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;

    invoke-interface {v0}, Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;->queryDeviceInfo()Lcom/ali/user/mobile/account/bean/DeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/bean/DeviceInfoBean;->getWalletTid()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SecurityInitServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "walletTid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl$2;->this$0:Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;

    iget-object v1, v1, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->mDeviceService:Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;

    invoke-interface {v1}, Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;->queryCertification()Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/d/c;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl$2;->this$0:Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;

    iget-object v2, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl$2;->val$userIdList:Ljava/util/List;

    invoke-static {v0, v2, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->access$200(Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;Ljava/util/List;Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;)V

    goto :goto_0
.end method
