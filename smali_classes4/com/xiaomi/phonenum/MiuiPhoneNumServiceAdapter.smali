.class Lcom/xiaomi/phonenum/MiuiPhoneNumServiceAdapter;
.super Ljava/lang/Object;
.source "MiuiPhoneNumServiceAdapter.java"

# interfaces
.implements Lcom/xiaomi/phonenum/PhoneNumGetter;


# instance fields
.field private mPhoneNumService:Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;

.field private phoneNumStore:Lcom/xiaomi/phonenum/PhoneNumStore;


# direct methods
.method constructor <init>(Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;Lcom/xiaomi/phonenum/PhoneNumStore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceAdapter;->mPhoneNumService:Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;

    iput-object p2, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceAdapter;->phoneNumStore:Lcom/xiaomi/phonenum/PhoneNumStore;

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

    iget v0, p2, Lcom/xiaomi/phonenum/obtain/PhoneLevel;->value:I

    sget-object v1, Lcom/xiaomi/phonenum/obtain/PhoneLevel;->SMS_VERIFY:Lcom/xiaomi/phonenum/obtain/PhoneLevel;

    iget v1, v1, Lcom/xiaomi/phonenum/obtain/PhoneLevel;->value:I

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object p2, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceAdapter;->mPhoneNumService:Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->blockObtainPhoneNum(IZ)Lcom/xiaomi/phonenum/bean/PhoneNum;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    sget-object p1, Lcom/xiaomi/phonenum/bean/Error;->UNKNOW:Lcom/xiaomi/phonenum/bean/Error;

    const-string p2, "RemoteException"

    invoke-virtual {p1, p2}, Lcom/xiaomi/phonenum/bean/Error;->result(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/PhoneNum;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceAdapter;->phoneNumStore:Lcom/xiaomi/phonenum/PhoneNumStore;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/phonenum/PhoneNumStore;->blockObtainPhoneNum(ILcom/xiaomi/phonenum/obtain/PhoneLevel;)Lcom/xiaomi/phonenum/bean/PhoneNum;

    move-result-object p1
    :try_end_1
    .catch Lcom/xiaomi/phonenum/obtain/PhoneException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lcom/xiaomi/phonenum/obtain/PhoneException;->printStackTrace()V

    iget-object p1, p1, Lcom/xiaomi/phonenum/obtain/PhoneException;->error:Lcom/xiaomi/phonenum/bean/Error;

    invoke-virtual {p1}, Lcom/xiaomi/phonenum/bean/Error;->result()Lcom/xiaomi/phonenum/bean/PhoneNum;

    move-result-object p1

    return-object p1
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceAdapter;->mPhoneNumService:Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->dispose()V

    return-void
.end method

.method public invalidatePhoneNum(ILcom/xiaomi/phonenum/bean/PhoneNum;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceAdapter;->phoneNumStore:Lcom/xiaomi/phonenum/PhoneNumStore;

    invoke-virtual {v0, p2}, Lcom/xiaomi/phonenum/PhoneNumStore;->invalidatePhoneNum(Lcom/xiaomi/phonenum/bean/PhoneNum;)Z

    :try_start_0
    iget-object p2, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceAdapter;->mPhoneNumService:Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;

    invoke-virtual {p2, p1}, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->invalidatePhoneNum(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public peekPhoneNum(ILcom/xiaomi/phonenum/obtain/PhoneLevel;)Lcom/xiaomi/phonenum/bean/PhoneNum;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceAdapter;->phoneNumStore:Lcom/xiaomi/phonenum/PhoneNumStore;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/phonenum/PhoneNumStore;->peekPhoneNum(ILcom/xiaomi/phonenum/obtain/PhoneLevel;)Lcom/xiaomi/phonenum/bean/PhoneNum;

    move-result-object p1
    :try_end_0
    .catch Lcom/xiaomi/phonenum/obtain/PhoneException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/xiaomi/phonenum/obtain/PhoneException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setUp(Lcom/xiaomi/phonenum/PhoneNumKeeper$SetupFinishedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceAdapter;->mPhoneNumService:Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;

    invoke-virtual {v0, p1}, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->setUp(Lcom/xiaomi/phonenum/PhoneNumKeeper$SetupFinishedListener;)V

    return-void
.end method
