.class public Lcom/miui/payment/captor/parser/CategoryParserImpl;
.super Ljava/lang/Object;
.source "CategoryParserImpl.java"

# interfaces
.implements Lcom/miui/payment/captor/parser/CategoryParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseAlipayRule(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x2

    const-string/jumbo v1, "com.alipay.mobile.transferapp.ui.TransferToAccountSuccessActivity_"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "com.alipay.android.phone.discovery.envelope.crowd.CrowdHostActivity"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x9

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "com.alipay.mobile.payee.ui.PayeeQRPayerPayResultActivity_"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p2}, Lcom/miui/payment/captor/parser/CategoryParserImpl;->parseGeneralRule(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private parseGeneralRule(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "\u8f6c\u8d26"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "\u6ef4\u6ef4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "\u7ea2\u5305"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v0, 0x9

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "\u6c34\u8d39"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "\u7535\u8d39"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    const/16 v0, 0xb

    goto :goto_0
.end method

.method private parseWechatRule(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x2

    const-string/jumbo v1, "com.tencent.mm.plugin.luckymoney.ui.LuckyMoneyDetailUI"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x9

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "com.tencent.mm.plugin.remittance.ui.RemittanceResultNewUI"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.tencent.mm.plugin.remittance.ui.RemittanceDetailUI"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p2}, Lcom/miui/payment/captor/parser/CategoryParserImpl;->parseGeneralRule(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public parseCategory(Lcom/miui/payment/captor/CaptorToken;Ljava/lang/String;)I
    .locals 2

    if-nez p1, :cond_0

    invoke-direct {p0, p2}, Lcom/miui/payment/captor/parser/CategoryParserImpl;->parseGeneralRule(Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/miui/payment/captor/CaptorToken;->getPkgName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.tencent.mm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/miui/payment/captor/CaptorToken;->getActivityName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/miui/payment/captor/parser/CategoryParserImpl;->parseWechatRule(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "com.eg.android.AlipayGphone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/miui/payment/captor/CaptorToken;->getActivityName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/miui/payment/captor/parser/CategoryParserImpl;->parseAlipayRule(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/miui/payment/captor/parser/CategoryParserImpl;->parseGeneralRule(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method
