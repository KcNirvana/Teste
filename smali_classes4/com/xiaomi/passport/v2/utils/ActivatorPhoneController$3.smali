.class Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$3;
.super Ljava/lang/Object;
.source "ActivatorPhoneController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


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
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;

.field final synthetic val$useLocalCathe:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;Z)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$3;->this$0:Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;

    iput-boolean p2, p0, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$3;->val$useLocalCathe:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$3;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$3;->this$0:Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;

    iget-object v0, v0, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;->mPhoneNumKeeper:Lcom/xiaomi/phonenum/PhoneNumKeeper;

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/PhoneNumKeeper;->getSlotCount()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-boolean v3, p0, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$3;->val$useLocalCathe:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$3;->this$0:Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;

    iget-object v3, v3, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;->mPhoneNumKeeper:Lcom/xiaomi/phonenum/PhoneNumKeeper;

    invoke-virtual {v3, v2}, Lcom/xiaomi/phonenum/PhoneNumKeeper;->invalidatePhoneNum(I)Z

    :cond_0
    iget-object v3, p0, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$3;->this$0:Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;

    iget-object v3, v3, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;->mPhoneNumKeeper:Lcom/xiaomi/phonenum/PhoneNumKeeper;

    invoke-virtual {v3, v2}, Lcom/xiaomi/phonenum/PhoneNumKeeper;->obtainPhoneNum(I)Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/phonenum/bean/PhoneNum;

    iget v4, v3, Lcom/xiaomi/phonenum/bean/PhoneNum;->errorCode:I

    if-nez v4, :cond_1

    new-instance v4, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;

    invoke-direct {v4}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;-><init>()V

    iget-object v5, v3, Lcom/xiaomi/phonenum/bean/PhoneNum;->number:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->phone(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;

    move-result-object v4

    iget-object v5, v3, Lcom/xiaomi/phonenum/bean/PhoneNum;->numberHash:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->phoneHash(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;

    move-result-object v4

    iget-object v5, v3, Lcom/xiaomi/phonenum/bean/PhoneNum;->token:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->activatorToken(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->slotId(I)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;

    move-result-object v4

    iget-object v5, v3, Lcom/xiaomi/phonenum/bean/PhoneNum;->copywriter:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->copyWriter(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;

    move-result-object v4

    iget-object v3, v3, Lcom/xiaomi/phonenum/bean/PhoneNum;->operatorLink:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->operatorLink(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->build()Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v4, "ActivatorPhoneController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLocalActivatorPhone: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method
