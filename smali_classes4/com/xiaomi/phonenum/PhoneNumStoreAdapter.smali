.class Lcom/xiaomi/phonenum/PhoneNumStoreAdapter;
.super Ljava/lang/Object;
.source "PhoneNumStoreAdapter.java"

# interfaces
.implements Lcom/xiaomi/phonenum/PhoneNumGetter;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mPhoneNumStore:Lcom/xiaomi/phonenum/PhoneNumStore;


# direct methods
.method constructor <init>(Lcom/xiaomi/phonenum/PhoneNumStore;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PhoneNumStoreAdapter"

    iput-object v0, p0, Lcom/xiaomi/phonenum/PhoneNumStoreAdapter;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/phonenum/PhoneNumStoreAdapter;->mPhoneNumStore:Lcom/xiaomi/phonenum/PhoneNumStore;

    return-void
.end method


# virtual methods
.method public blockObtainPhoneNum(ILcom/xiaomi/phonenum/obtain/PhoneLevel;)Lcom/xiaomi/phonenum/bean/PhoneNum;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/phonenum/PhoneNumStoreAdapter;->mPhoneNumStore:Lcom/xiaomi/phonenum/PhoneNumStore;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/phonenum/PhoneNumStore;->blockObtainPhoneNum(ILcom/xiaomi/phonenum/obtain/PhoneLevel;)Lcom/xiaomi/phonenum/bean/PhoneNum;

    move-result-object p1
    :try_end_0
    .catch Lcom/xiaomi/phonenum/obtain/PhoneException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/xiaomi/phonenum/utils/LoggerManager;->getLogger()Lcom/xiaomi/phonenum/utils/Logger;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaomi/phonenum/PhoneNumStoreAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/phonenum/obtain/PhoneException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/xiaomi/phonenum/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/xiaomi/phonenum/obtain/PhoneException;->error:Lcom/xiaomi/phonenum/bean/Error;

    invoke-virtual {p1}, Lcom/xiaomi/phonenum/bean/Error;->result()Lcom/xiaomi/phonenum/bean/PhoneNum;

    move-result-object p1

    return-object p1
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public invalidatePhoneNum(ILcom/xiaomi/phonenum/bean/PhoneNum;)Z
    .locals 0

    iget-object p1, p0, Lcom/xiaomi/phonenum/PhoneNumStoreAdapter;->mPhoneNumStore:Lcom/xiaomi/phonenum/PhoneNumStore;

    invoke-virtual {p1, p2}, Lcom/xiaomi/phonenum/PhoneNumStore;->invalidatePhoneNum(Lcom/xiaomi/phonenum/bean/PhoneNum;)Z

    move-result p1

    return p1
.end method

.method public peekPhoneNum(ILcom/xiaomi/phonenum/obtain/PhoneLevel;)Lcom/xiaomi/phonenum/bean/PhoneNum;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/phonenum/PhoneNumStoreAdapter;->mPhoneNumStore:Lcom/xiaomi/phonenum/PhoneNumStore;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/phonenum/PhoneNumStore;->peekPhoneNum(ILcom/xiaomi/phonenum/obtain/PhoneLevel;)Lcom/xiaomi/phonenum/bean/PhoneNum;

    move-result-object p1
    :try_end_0
    .catch Lcom/xiaomi/phonenum/obtain/PhoneException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/xiaomi/phonenum/utils/LoggerManager;->getLogger()Lcom/xiaomi/phonenum/utils/Logger;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaomi/phonenum/PhoneNumStoreAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/phonenum/obtain/PhoneException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/xiaomi/phonenum/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setUp(Lcom/xiaomi/phonenum/PhoneNumKeeper$SetupFinishedListener;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/phonenum/bean/Error;->NONE:Lcom/xiaomi/phonenum/bean/Error;

    invoke-interface {p1, v0}, Lcom/xiaomi/phonenum/PhoneNumKeeper$SetupFinishedListener;->onSetupFinished(Lcom/xiaomi/phonenum/bean/Error;)V

    return-void
.end method
