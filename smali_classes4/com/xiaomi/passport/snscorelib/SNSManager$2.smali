.class Lcom/xiaomi/passport/snscorelib/SNSManager$2;
.super Ljava/lang/Object;
.source "SNSManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/snscorelib/SNSManager;->snsLoginByCode(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;Lcom/xiaomi/passport/snscorelib/SNSManager$SNSLoginCallback;)Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/passport/snscorelib/SNSManager;

.field final synthetic val$snsLoginParameter:Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/snscorelib/SNSManager;Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/snscorelib/SNSManager$2;->this$0:Lcom/xiaomi/passport/snscorelib/SNSManager;

    iput-object p2, p0, Lcom/xiaomi/passport/snscorelib/SNSManager$2;->val$snsLoginParameter:Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/snscorelib/SNSManager$2;->val$snsLoginParameter:Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;

    invoke-static {v0}, Lcom/xiaomi/passport/snscorelib/internal/request/SNSRequest;->snsLoginByCode(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/passport/snscorelib/SNSManager$2;->call()Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v0

    return-object v0
.end method
