.class public Lcom/alipay/android/phone/mrpc/core/RpcException;
.super Ljava/lang/RuntimeException;
.source "RpcException.java"


# static fields
.field public static final ERROR_SOURCE_CLIENT:I = 0x1

.field public static final ERROR_SOURCE_SERVER:I = 0x2

.field private static final serialVersionUID:J = -0x27e79b9ef4131536L


# instance fields
.field private errorSource:I

.field private mCode:I

.field private mMsg:Ljava/lang/String;

.field private mOperationType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1, p2}, Lcom/alipay/android/phone/mrpc/core/RpcException;->format(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/phone/mrpc/core/RpcException;->errorSource:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/mrpc/core/RpcException;->mCode:I

    iput-object p2, p0, Lcom/alipay/android/phone/mrpc/core/RpcException;->mMsg:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/RpcException;->setErrorSource()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p1, p2}, Lcom/alipay/android/phone/mrpc/core/RpcException;->format(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/phone/mrpc/core/RpcException;->errorSource:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/mrpc/core/RpcException;->mCode:I

    iput-object p2, p0, Lcom/alipay/android/phone/mrpc/core/RpcException;->mMsg:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/RpcException;->setErrorSource()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/phone/mrpc/core/RpcException;->errorSource:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/mrpc/core/RpcException;->mCode:I

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/RpcException;->setErrorSource()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/phone/mrpc/core/RpcException;->errorSource:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/mrpc/core/RpcException;->mCode:I

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/RpcException;->mMsg:Ljava/lang/String;

    return-void
.end method

.method protected static format(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RPCException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string/jumbo v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/phone/mrpc/core/RpcException;->mCode:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/RpcException;->mMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getOperationType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/RpcException;->mOperationType:Ljava/lang/String;

    return-object v0
.end method

.method public isClientError()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/alipay/android/phone/mrpc/core/RpcException;->errorSource:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isServerError()Z
    .locals 2

    iget v0, p0, Lcom/alipay/android/phone/mrpc/core/RpcException;->errorSource:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setErrorSource()V
    .locals 2

    const/16 v1, 0x3e8

    iget v0, p0, Lcom/alipay/android/phone/mrpc/core/RpcException;->mCode:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/android/phone/mrpc/core/RpcException;->errorSource:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/alipay/android/phone/mrpc/core/RpcException;->mCode:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/android/phone/mrpc/core/RpcException;->errorSource:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/phone/mrpc/core/RpcException;->errorSource:I

    goto :goto_0
.end method

.method public setOperationType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/RpcException;->mOperationType:Ljava/lang/String;

    return-void
.end method
