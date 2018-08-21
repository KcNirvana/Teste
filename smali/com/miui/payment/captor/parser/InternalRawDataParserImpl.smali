.class public Lcom/miui/payment/captor/parser/InternalRawDataParserImpl;
.super Ljava/lang/Object;
.source "InternalRawDataParserImpl.java"

# interfaces
.implements Lcom/miui/payment/captor/parser/RawDataParser;


# instance fields
.field private mPaymentRawDesc:Lcom/miui/payment/captor/PaymentRawDesc;


# direct methods
.method public constructor <init>(Lcom/miui/payment/captor/PaymentRawDesc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/payment/captor/parser/InternalRawDataParserImpl;->mPaymentRawDesc:Lcom/miui/payment/captor/PaymentRawDesc;

    return-void
.end method


# virtual methods
.method public tryToParseRawData()Lcom/miui/payment/captor/PaymentRawDesc;
    .locals 4

    const-string/jumbo v0, "internal source: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/payment/captor/parser/InternalRawDataParserImpl;->mPaymentRawDesc:Lcom/miui/payment/captor/PaymentRawDesc;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/miui/payment/log/Logger;->debugPrivacy(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/payment/captor/parser/InternalRawDataParserImpl;->mPaymentRawDesc:Lcom/miui/payment/captor/PaymentRawDesc;

    return-object v0
.end method
