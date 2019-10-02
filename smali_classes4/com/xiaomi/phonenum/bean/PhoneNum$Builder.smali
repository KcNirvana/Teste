.class public Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;
.super Ljava/lang/Object;
.source "PhoneNum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/phonenum/bean/PhoneNum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private copywriter:Ljava/lang/String;

.field private errorCode:I

.field private errorMsg:Ljava/lang/String;

.field private iccid:Ljava/lang/String;

.field private isVerified:Z

.field private number:Ljava/lang/String;

.field private numberHash:Ljava/lang/String;

.field private operatorLink:Ljava/lang/String;

.field private phoneLevel:I

.field private subId:I

.field private token:Ljava/lang/String;

.field private traceId:Ljava/lang/String;

.field private updateTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/phonenum/bean/Error;->NONE:Lcom/xiaomi/phonenum/bean/Error;

    iget v0, v0, Lcom/xiaomi/phonenum/bean/Error;->code:I

    iput v0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->errorCode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->isVerified:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->updateTime:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->subId:I

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->errorCode:I

    return p0
.end method

.method static synthetic access$100(Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->number:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->subId:I

    return p0
.end method

.method static synthetic access$1100(Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->traceId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->phoneLevel:I

    return p0
.end method

.method static synthetic access$200(Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->iccid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->token:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->errorMsg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->isVerified:Z

    return p0
.end method

.method static synthetic access$600(Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->updateTime:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->numberHash:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->copywriter:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->operatorLink:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/xiaomi/phonenum/bean/PhoneNum;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->errorMsg:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->errorCode:I

    invoke-static {v1}, Lcom/xiaomi/phonenum/bean/Error;->codeToError(I)Lcom/xiaomi/phonenum/bean/Error;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->errorMsg:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->errorCode:I

    invoke-static {v1}, Lcom/xiaomi/phonenum/bean/Error;->codeToError(I)Lcom/xiaomi/phonenum/bean/Error;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->errorMsg:Ljava/lang/String;

    :goto_0
    new-instance v0, Lcom/xiaomi/phonenum/bean/PhoneNum;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/phonenum/bean/PhoneNum;-><init>(Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;Lcom/xiaomi/phonenum/bean/PhoneNum$1;)V

    return-object v0
.end method

.method public bundle(Landroid/os/Bundle;)Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;
    .locals 1

    const-string v0, "errorCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->errorCode:I

    const-string v0, "errorMsg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->errorMsg:Ljava/lang/String;

    const-string v0, "number"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->number:Ljava/lang/String;

    const-string v0, "numberHash"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->numberHash:Ljava/lang/String;

    const-string v0, "iccid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->iccid:Ljava/lang/String;

    const-string v0, "token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->token:Ljava/lang/String;

    const-string v0, "isVerified"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->isVerified:Z

    const-string v0, "updateTime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->updateTime:Ljava/lang/String;

    const-string v0, "copywriter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->copywriter:Ljava/lang/String;

    const-string v0, "operatorLink"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->operatorLink:Ljava/lang/String;

    const-string v0, "traceId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->traceId:Ljava/lang/String;

    const-string v0, "subId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->subId:I

    const-string v0, "phoneLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->phoneLevel:I

    return-object p0
.end method

.method public copywriter(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->copywriter:Ljava/lang/String;

    return-object p0
.end method

.method public errorCode(I)Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;
    .locals 0

    iput p1, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->errorCode:I

    return-object p0
.end method

.method public errorMsg(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->errorMsg:Ljava/lang/String;

    return-object p0
.end method

.method public iccid(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->iccid:Ljava/lang/String;

    return-object p0
.end method

.method public isVerified(Z)Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->isVerified:Z

    return-object p0
.end method

.method public number(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->number:Ljava/lang/String;

    return-object p0
.end method

.method public numberHash(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->numberHash:Ljava/lang/String;

    return-object p0
.end method

.method public operatorLink(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->operatorLink:Ljava/lang/String;

    return-object p0
.end method

.method public phoneLevel(I)Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;
    .locals 0

    iput p1, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->phoneLevel:I

    return-object p0
.end method

.method public subId(I)Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;
    .locals 0

    iput p1, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->subId:I

    return-object p0
.end method

.method public token(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->token:Ljava/lang/String;

    return-object p0
.end method

.method public traceId(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->traceId:Ljava/lang/String;

    return-object p0
.end method

.method public updateTime(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->updateTime:Ljava/lang/String;

    return-object p0
.end method
