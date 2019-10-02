.class Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy$1;
.super Ljava/lang/Object;
.source "MiuiPhoneNumServiceProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->setUp(Lcom/xiaomi/phonenum/PhoneNumKeeper$SetupFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;

.field final synthetic val$listener:Lcom/xiaomi/phonenum/PhoneNumKeeper$SetupFinishedListener;


# direct methods
.method constructor <init>(Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;Lcom/xiaomi/phonenum/PhoneNumKeeper$SetupFinishedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy$1;->this$0:Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;

    iput-object p2, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy$1;->val$listener:Lcom/xiaomi/phonenum/PhoneNumKeeper$SetupFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy$1;->this$0:Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;

    invoke-static {p2}, Lcom/xiaomi/simactivate/service/IPhoneNumService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/simactivate/service/IPhoneNumService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->access$002(Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;Lcom/xiaomi/simactivate/service/IPhoneNumService;)Lcom/xiaomi/simactivate/service/IPhoneNumService;

    iget-object p1, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy$1;->this$0:Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->access$102(Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;Z)Z

    iget-object p1, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy$1;->this$0:Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;

    invoke-static {p1}, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->access$200(Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object p1, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy$1;->val$listener:Lcom/xiaomi/phonenum/PhoneNumKeeper$SetupFinishedListener;

    sget-object p2, Lcom/xiaomi/phonenum/bean/Error;->NONE:Lcom/xiaomi/phonenum/bean/Error;

    invoke-interface {p1, p2}, Lcom/xiaomi/phonenum/PhoneNumKeeper$SetupFinishedListener;->onSetupFinished(Lcom/xiaomi/phonenum/bean/Error;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object p1, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy$1;->this$0:Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;

    invoke-static {p1}, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->access$300(Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;)Lcom/xiaomi/phonenum/utils/Logger;

    move-result-object p1

    const-string v0, "MiuiPhoneNumKeeper"

    const-string v1, "onServiceDisconnected"

    invoke-interface {p1, v0, v1}, Lcom/xiaomi/phonenum/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy$1;->this$0:Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->access$002(Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;Lcom/xiaomi/simactivate/service/IPhoneNumService;)Lcom/xiaomi/simactivate/service/IPhoneNumService;

    return-void
.end method
