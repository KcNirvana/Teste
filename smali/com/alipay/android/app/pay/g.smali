.class public Lcom/alipay/android/app/pay/g;
.super Ljava/lang/Object;
.source "Result.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/pay/g;->b:Z

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/pay/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resultStatus={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "};memo={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "};result={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/alipay/android/app/pay/g;->b:Z

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lcom/alipay/android/app/pay/g;->b:Z

    return v0
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/alipay/android/app/pay/ResultStatus;->PARAMS_ERROR:Lcom/alipay/android/app/pay/ResultStatus;

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/ResultStatus;->getStatus()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/android/app/pay/ResultStatus;->getResultState(I)Lcom/alipay/android/app/pay/ResultStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/ResultStatus;->getStatus()I

    move-result v1

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/ResultStatus;->getMemo()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/android/app/pay/g;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
