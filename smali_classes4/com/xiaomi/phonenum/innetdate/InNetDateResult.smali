.class public Lcom/xiaomi/phonenum/innetdate/InNetDateResult;
.super Ljava/lang/Object;
.source "InNetDateResult.java"


# instance fields
.field private error:Lcom/xiaomi/phonenum/bean/Error;

.field private inNetDate:J

.field private massage:Ljava/lang/String;

.field private phoneNum:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/xiaomi/phonenum/innetdate/InNetDateResult;->inNetDate:J

    iput-object p3, p0, Lcom/xiaomi/phonenum/innetdate/InNetDateResult;->phoneNum:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/xiaomi/phonenum/bean/Error;)V
    .locals 1

    invoke-virtual {p1}, Lcom/xiaomi/phonenum/bean/Error;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/phonenum/innetdate/InNetDateResult;-><init>(Lcom/xiaomi/phonenum/bean/Error;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/xiaomi/phonenum/bean/Error;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/phonenum/innetdate/InNetDateResult;->error:Lcom/xiaomi/phonenum/bean/Error;

    iput-object p2, p0, Lcom/xiaomi/phonenum/innetdate/InNetDateResult;->massage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getError()Lcom/xiaomi/phonenum/bean/Error;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/phonenum/innetdate/InNetDateResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/phonenum/bean/Error;->NONE:Lcom/xiaomi/phonenum/bean/Error;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/phonenum/innetdate/InNetDateResult;->error:Lcom/xiaomi/phonenum/bean/Error;

    return-object v0
.end method

.method public getInNetDate()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/phonenum/innetdate/InNetDateResult;->inNetDate:J

    return-wide v0
.end method

.method public getMassage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/innetdate/InNetDateResult;->massage:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/innetdate/InNetDateResult;->phoneNum:Ljava/lang/String;

    return-object v0
.end method

.method public isFailure()Z
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/phonenum/innetdate/InNetDateResult;->isSuccess()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/innetdate/InNetDateResult;->error:Lcom/xiaomi/phonenum/bean/Error;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IabResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/phonenum/innetdate/InNetDateResult;->getMassage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " date:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/phonenum/innetdate/InNetDateResult;->inNetDate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
