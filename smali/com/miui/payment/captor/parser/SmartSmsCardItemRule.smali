.class public Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;
.super Ljava/lang/Object;
.source "SmartSmsCardItemRule.java"


# instance fields
.field private amount:Ljava/lang/String;

.field private amountUnit:Ljava/lang/String;

.field private currency:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private desc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private methodName:Ljava/lang/String;

.field private methodNumber:Ljava/lang/String;

.field private paymentTypeValue:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->paymentTypeValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAmount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public getAmountUnit()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->amountUnit:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->desc:Ljava/util/List;

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->methodName:Ljava/lang/String;

    return-object v0
.end method

.method public getMethodNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->methodNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentTypeValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->paymentTypeValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->amount:Ljava/lang/String;

    return-void
.end method

.method public setAmountUnit(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->amountUnit:Ljava/lang/String;

    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->currency:Ljava/lang/String;

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->date:Ljava/lang/String;

    return-void
.end method

.method public setDesc(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->desc:Ljava/util/List;

    return-void
.end method

.method public setMethodName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->methodName:Ljava/lang/String;

    return-void
.end method

.method public setMethodNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->methodNumber:Ljava/lang/String;

    return-void
.end method

.method public setPaymentTypeValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->paymentTypeValue:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->time:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->type:Ljava/lang/String;

    return-void
.end method
