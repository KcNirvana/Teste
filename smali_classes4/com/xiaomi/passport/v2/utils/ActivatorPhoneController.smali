.class public Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;
.super Ljava/lang/Object;
.source "ActivatorPhoneController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$PhoneNumCallback;
    }
.end annotation


# static fields
.field private static final APP_ID:Ljava/lang/String; = "2882303761517565051"

.field private static final TAG:Ljava/lang/String; = "ActivatorPhoneController"


# instance fields
.field protected mGetActivatorPhoneTask:Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/passport/uicontroller/SimpleFutureTask<",
            "Ljava/util/List<",
            "Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mPhoneNumKeeper:Lcom/xiaomi/phonenum/PhoneNumKeeper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/phonenum/PhoneNumKeeperFactory;

    invoke-direct {v0}, Lcom/xiaomi/phonenum/PhoneNumKeeperFactory;-><init>()V

    const-string v1, "2882303761517565051"

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/phonenum/PhoneNumKeeperFactory;->createPhoneNumKeeper(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/phonenum/PhoneNumKeeper;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;->mPhoneNumKeeper:Lcom/xiaomi/phonenum/PhoneNumKeeper;

    iget-object p1, p0, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;->mPhoneNumKeeper:Lcom/xiaomi/phonenum/PhoneNumKeeper;

    new-instance v0, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$1;-><init>(Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/phonenum/PhoneNumKeeper;->setUp(Lcom/xiaomi/phonenum/PhoneNumKeeper$SetupFinishedListener;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;->mGetActivatorPhoneTask:Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;->mGetActivatorPhoneTask:Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;->mGetActivatorPhoneTask:Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;->mPhoneNumKeeper:Lcom/xiaomi/phonenum/PhoneNumKeeper;

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/PhoneNumKeeper;->dispose()V

    return-void
.end method

.method public getLocalActivatorPhone(Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$PhoneNumCallback;Z)Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$PhoneNumCallback;",
            "Z)",
            "Lcom/xiaomi/passport/uicontroller/SimpleFutureTask<",
            "Ljava/util/List<",
            "Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$2;-><init>(Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$PhoneNumCallback;)V

    new-instance p1, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;

    new-instance v1, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$3;

    invoke-direct {v1, p0, p2}, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController$3;-><init>(Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;Z)V

    invoke-direct {p1, v1, v0}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;-><init>(Ljava/util/concurrent/Callable;Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;)V

    iput-object p1, p0, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;->mGetActivatorPhoneTask:Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;

    invoke-static {}, Lcom/xiaomi/passport/utils/XiaomiPassportExecutor;->getSingleton()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;->mGetActivatorPhoneTask:Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;->mGetActivatorPhoneTask:Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "get phone num callback should not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public invalidateCathePhoneNum(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;->mPhoneNumKeeper:Lcom/xiaomi/phonenum/PhoneNumKeeper;

    invoke-virtual {v0, p1}, Lcom/xiaomi/phonenum/PhoneNumKeeper;->invalidatePhoneNum(I)Z

    return-void
.end method

.method public peekPhoneNumLevelData()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;->mPhoneNumKeeper:Lcom/xiaomi/phonenum/PhoneNumKeeper;

    invoke-virtual {v2}, Lcom/xiaomi/phonenum/PhoneNumKeeper;->getSlotCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;->mPhoneNumKeeper:Lcom/xiaomi/phonenum/PhoneNumKeeper;

    sget-object v3, Lcom/xiaomi/phonenum/obtain/PhoneLevel;->DATA:Lcom/xiaomi/phonenum/obtain/PhoneLevel;

    invoke-virtual {v2, v1, v3}, Lcom/xiaomi/phonenum/PhoneNumKeeper;->obtainPhoneNum(ILcom/xiaomi/phonenum/obtain/PhoneLevel;)Ljava/util/concurrent/Future;

    iget-object v2, p0, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;->mPhoneNumKeeper:Lcom/xiaomi/phonenum/PhoneNumKeeper;

    sget-object v3, Lcom/xiaomi/phonenum/obtain/PhoneLevel;->DATA:Lcom/xiaomi/phonenum/obtain/PhoneLevel;

    invoke-virtual {v2, v1, v3}, Lcom/xiaomi/phonenum/PhoneNumKeeper;->peekPhoneNum(ILcom/xiaomi/phonenum/obtain/PhoneLevel;)Lcom/xiaomi/phonenum/bean/PhoneNum;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/xiaomi/phonenum/bean/PhoneNum;->token:Ljava/lang/String;

    if-eqz v3, :cond_0

    new-instance v3, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;

    invoke-direct {v3}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;-><init>()V

    iget-object v4, v2, Lcom/xiaomi/phonenum/bean/PhoneNum;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->phone(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;

    move-result-object v3

    iget-object v4, v2, Lcom/xiaomi/phonenum/bean/PhoneNum;->numberHash:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->phoneHash(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;

    move-result-object v3

    iget-object v4, v2, Lcom/xiaomi/phonenum/bean/PhoneNum;->token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->activatorToken(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->slotId(I)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;

    move-result-object v3

    iget-object v4, v2, Lcom/xiaomi/phonenum/bean/PhoneNum;->copywriter:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->copyWriter(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;

    move-result-object v3

    iget-object v2, v2, Lcom/xiaomi/phonenum/bean/PhoneNum;->operatorLink:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->operatorLink(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo$Builder;->build()Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
