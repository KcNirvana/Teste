.class Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$2;
.super Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;
.source "ActivatorPhoneController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;->getLocalActivatorPhone(Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$PhoneNumCallback;Z)Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback<",
        "Ljava/util/List<",
        "Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;

.field final synthetic val$phoneNumCallback:Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$PhoneNumCallback;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$PhoneNumCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$2;->this$0:Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$2;->val$phoneNumCallback:Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$PhoneNumCallback;

    invoke-direct {p0}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/uicontroller/SimpleFutureTask<",
            "Ljava/util/List<",
            "Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;",
            ">;>;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/RuntimeException;

    goto :goto_0

    :pswitch_0
    const-string v0, "ActivatorPhoneController"

    const-string v2, "two activator phone"

    invoke-static {v0, v2}, Lcom/xiaomi/accountsdk/utils/AccountLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$2;->val$phoneNumCallback:Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$PhoneNumCallback;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    invoke-interface {v0, v1, p1}, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$PhoneNumCallback;->onDualSIM(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    goto :goto_2

    :pswitch_1
    const-string v0, "ActivatorPhoneController"

    const-string v2, "one activator phone"

    invoke-static {v0, v2}, Lcom/xiaomi/accountsdk/utils/AccountLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$2;->val$phoneNumCallback:Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$PhoneNumCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$PhoneNumCallback;->onSingleSIM(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    goto :goto_2

    :pswitch_2
    const-string p1, "ActivatorPhoneController"

    const-string v0, "no activator phone"

    invoke-static {p1, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$2;->val$phoneNumCallback:Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$PhoneNumCallback;

    invoke-interface {p1}, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$PhoneNumCallback;->onNone()V

    goto :goto_2

    :goto_0
    const-string v0, "should not happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    const-string p1, "ActivatorPhoneController"

    const-string v0, "no inserted phone"

    invoke-static {p1, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$2;->val$phoneNumCallback:Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$PhoneNumCallback;

    invoke-interface {p1}, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$PhoneNumCallback;->onNone()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "ActivatorPhoneController"

    const-string v1, "getLocalActivatorPhone"

    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$2;->val$phoneNumCallback:Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$PhoneNumCallback;

    invoke-interface {p1}, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$PhoneNumCallback;->onNone()V

    goto :goto_2

    :catch_1
    move-exception p1

    const-string v0, "ActivatorPhoneController"

    const-string v1, "getLocalActivatorPhone"

    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$2;->val$phoneNumCallback:Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$PhoneNumCallback;

    invoke-interface {p1}, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$PhoneNumCallback;->onNone()V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
