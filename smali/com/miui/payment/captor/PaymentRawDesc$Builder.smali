.class public final Lcom/miui/payment/captor/PaymentRawDesc$Builder;
.super Ljava/lang/Object;
.source "PaymentRawDesc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/payment/captor/PaymentRawDesc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private amountCurrency:Ljava/lang/String;

.field private amountNumber:Ljava/lang/String;

.field private amountUnit:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private comment:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private methodAccount:Ljava/lang/String;

.field private methodName:Ljava/lang/String;

.field private transactionStatus:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/miui/payment/captor/PaymentRawDesc;
    .locals 2

    new-instance v0, Lcom/miui/payment/captor/PaymentRawDesc;

    invoke-direct {v0}, Lcom/miui/payment/captor/PaymentRawDesc;-><init>()V

    iget-object v1, p0, Lcom/miui/payment/captor/PaymentRawDesc$Builder;->amountNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/payment/captor/PaymentRawDesc;->setAmountNumber(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/payment/captor/PaymentRawDesc$Builder;->amountUnit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/payment/captor/PaymentRawDesc;->setAmountUnit(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/payment/captor/PaymentRawDesc$Builder;->amountCurrency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/payment/captor/PaymentRawDesc;->setAmountCurrency(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/payment/captor/PaymentRawDesc$Builder;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/payment/captor/PaymentRawDesc;->setDate(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/payment/captor/PaymentRawDesc$Builder;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/payment/captor/PaymentRawDesc;->setMethodName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/payment/captor/PaymentRawDesc$Builder;->methodAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/payment/captor/PaymentRawDesc;->setMethodAccount(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/payment/captor/PaymentRawDesc$Builder;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/payment/captor/PaymentRawDesc;->setCategory(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/payment/captor/PaymentRawDesc$Builder;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/payment/captor/PaymentRawDesc;->setComment(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/payment/captor/PaymentRawDesc$Builder;->transactionStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/payment/captor/PaymentRawDesc;->setTransactionStatus(Ljava/lang/String;)V

    return-object v0
.end method

.method public setAmountCurrency(Ljava/lang/String;)Lcom/miui/payment/captor/PaymentRawDesc$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/captor/PaymentRawDesc$Builder;->amountCurrency:Ljava/lang/String;

    return-object p0
.end method

.method public setAmountNumber(Ljava/lang/String;)Lcom/miui/payment/captor/PaymentRawDesc$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/captor/PaymentRawDesc$Builder;->amountNumber:Ljava/lang/String;

    return-object p0
.end method

.method public setAmountUnit(Ljava/lang/String;)Lcom/miui/payment/captor/PaymentRawDesc$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/captor/PaymentRawDesc$Builder;->amountUnit:Ljava/lang/String;

    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Lcom/miui/payment/captor/PaymentRawDesc$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/captor/PaymentRawDesc$Builder;->category:Ljava/lang/String;

    return-object p0
.end method

.method public setComment(Ljava/lang/String;)Lcom/miui/payment/captor/PaymentRawDesc$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/captor/PaymentRawDesc$Builder;->comment:Ljava/lang/String;

    return-object p0
.end method

.method public setDate(Ljava/lang/String;)Lcom/miui/payment/captor/PaymentRawDesc$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/captor/PaymentRawDesc$Builder;->date:Ljava/lang/String;

    return-object p0
.end method

.method public setMethodAccount(Ljava/lang/String;)Lcom/miui/payment/captor/PaymentRawDesc$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/captor/PaymentRawDesc$Builder;->methodAccount:Ljava/lang/String;

    return-object p0
.end method

.method public setMethodName(Ljava/lang/String;)Lcom/miui/payment/captor/PaymentRawDesc$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/captor/PaymentRawDesc$Builder;->methodName:Ljava/lang/String;

    return-object p0
.end method

.method public setTransactionStatus(Ljava/lang/String;)Lcom/miui/payment/captor/PaymentRawDesc$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/captor/PaymentRawDesc$Builder;->transactionStatus:Ljava/lang/String;

    return-object p0
.end method
