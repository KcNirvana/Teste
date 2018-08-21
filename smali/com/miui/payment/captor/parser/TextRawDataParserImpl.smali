.class public Lcom/miui/payment/captor/parser/TextRawDataParserImpl;
.super Ljava/lang/Object;
.source "TextRawDataParserImpl.java"

# interfaces
.implements Lcom/miui/payment/captor/parser/RawDataParser;


# static fields
.field private static final PAYMENT_COMPLETION_PAGE_FEATURES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "TextRawDataParserImpl"

.field private static sLastContent:Ljava/lang/String;


# instance fields
.field private mBestMatcher:Ljava/util/regex/Matcher;

.field private mBestTextPattern:Lcom/miui/payment/captor/config/TextPattern;

.field private mCaptorToken:Lcom/miui/payment/captor/CaptorToken;

.field private mContent:Ljava/lang/String;

.field private mRawData:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "500"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "[+-]?\\d+[,\\d{3}]*\\.\\d{2}"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "((\u652f\u4ed8|\u4ea4\u6613|\u4ed8\u6b3e|\u4ee3\u4ed8)(\u6210\u529f|\u5b8c\u6210))|(\u652f\u4ed8\u7ed3\u679c.*\u5b8c\u6210)|(\u5df2\u5b58\u5165\u5bf9\u65b9\u96f6\u94b1)|(\u7b49\u5f85.*(\u53d1\u8d27|\u6536\u8d27))|(\\d+\u4e2a\u7ea2\u5305\u5171)|Success|(Payment successful)|Accepted|(1 Red Packet)|(Payment Result.*Done)"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "^(?!.*(\u5355\u6b21\u8f6c\u5165|\u94f6\u884c\u5904\u7406\u4e2d|\u8f6c\u51fa\u5230\u4f59\u989d|\u666e\u901a\u5145\u503c|\u5fae\u4fe1\u7ea2\u5305|\u88ab\u62a2\u5149|\u4f59\u989d\u5b9d-\u81ea\u52a8\u8f6c\u5165|\u786e\u8ba4\u4ed8\u6b3e)).*$"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->PAYMENT_COMPLETION_PAGE_FEATURES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/miui/payment/captor/CaptorToken;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->mCaptorToken:Lcom/miui/payment/captor/CaptorToken;

    iput-object p2, p0, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->mContent:Ljava/lang/String;

    return-void
.end method

.method private checkRawDescValidity(Lcom/miui/payment/captor/PaymentRawDesc;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/miui/payment/captor/PaymentRawDesc;->getComment()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\\d+[,\\d]*(\\.\\d{1,2})?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "@@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->mCaptorToken:Lcom/miui/payment/captor/CaptorToken;

    invoke-virtual {v1}, Lcom/miui/payment/captor/CaptorToken;->getActivityName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->mContent:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/miui/payment/utils/UploadUtil;->persistData(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private createBestRawDataDesc()Lcom/miui/payment/captor/PaymentRawDesc;
    .locals 5

    iget-object v0, p0, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->mBestMatcher:Ljava/util/regex/Matcher;

    iget-object v2, p0, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->mBestTextPattern:Lcom/miui/payment/captor/config/TextPattern;

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    new-instance v3, Lcom/miui/payment/captor/PaymentRawDesc;

    invoke-direct {v3}, Lcom/miui/payment/captor/PaymentRawDesc;-><init>()V

    invoke-virtual {v2}, Lcom/miui/payment/captor/config/TextPattern;->getAmountNumberGroup()I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->findTextFromMatcher(Ljava/util/regex/Matcher;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/payment/captor/PaymentRawDesc;->setAmountNumber(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/payment/captor/config/TextPattern;->getAmountUnitGroup()I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->findTextFromMatcher(Ljava/util/regex/Matcher;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/payment/captor/PaymentRawDesc;->setAmountUnit(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/payment/captor/config/TextPattern;->getAmountCurrencyGroup()I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->findTextFromMatcher(Ljava/util/regex/Matcher;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/payment/captor/PaymentRawDesc;->setAmountCurrency(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/payment/captor/config/TextPattern;->getDateGroup()I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->findTextFromMatcher(Ljava/util/regex/Matcher;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/payment/captor/PaymentRawDesc;->setDate(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/payment/captor/config/TextPattern;->getMethodNameGroup()I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->findTextFromMatcher(Ljava/util/regex/Matcher;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/payment/captor/PaymentRawDesc;->setMethodName(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/payment/captor/config/TextPattern;->getMethodAccountGroup()I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->findTextFromMatcher(Ljava/util/regex/Matcher;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/payment/captor/PaymentRawDesc;->setMethodAccount(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/payment/captor/config/TextPattern;->getCategoryDescGroup()I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->findTextFromMatcher(Ljava/util/regex/Matcher;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/payment/captor/PaymentRawDesc;->setCategory(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/payment/captor/config/TextPattern;->getCommentGroup()I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->findTextFromMatcher(Ljava/util/regex/Matcher;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/payment/captor/PaymentRawDesc;->setComment(Ljava/lang/String;)V

    move-object v1, v3

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private findBestMatcher(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/captor/config/TextPattern;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/payment/captor/config/TextPattern;

    invoke-virtual {v10}, Lcom/miui/payment/captor/config/TextPattern;->getRegex()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->mRawData:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    :cond_1
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    if-le v5, v2, :cond_1

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    move-object v3, v6

    move-object v4, v10

    move v2, v5

    goto :goto_0

    :cond_2
    const-string/jumbo v11, "TextRawDataParserImpl"

    const-string/jumbo v12, "pattern time %d ms"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v11, v12, v13}, Lcom/miui/payment/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->mBestMatcher:Ljava/util/regex/Matcher;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->mBestTextPattern:Lcom/miui/payment/captor/config/TextPattern;

    return-void
.end method

.method private findTextFromMatcher(Ljava/util/regex/Matcher;I)Ljava/lang/String;
    .locals 1

    if-gez p2, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getActivityName()Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->mCaptorToken:Lcom/miui/payment/captor/CaptorToken;

    invoke-virtual {v2}, Lcom/miui/payment/captor/CaptorToken;->getActivityName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getBackTrackingTexts()Ljava/util/List;
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

    invoke-static {}, Lcom/miui/payment/captor/config/TextPatternConfigManager;->getInstance()Lcom/miui/payment/captor/config/TextPatternConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/payment/captor/config/TextPatternConfigManager;->getBackTrackingTexts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getCompletionFeatures()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/payment/captor/config/TextPatternConfigManager;->getInstance()Lcom/miui/payment/captor/config/TextPatternConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/payment/captor/config/TextPatternConfigManager;->getCompletionFeatures()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "TextRawDataParserImpl"

    const-string/jumbo v2, "Completion features are null, load default"

    invoke-static {v1, v2}, Lcom/miui/payment/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->PAYMENT_COMPLETION_PAGE_FEATURES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getTextPatterns()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/captor/config/TextPattern;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/payment/captor/config/TextPatternConfigManager;->getInstance()Lcom/miui/payment/captor/config/TextPatternConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->mCaptorToken:Lcom/miui/payment/captor/CaptorToken;

    invoke-virtual {v1}, Lcom/miui/payment/captor/CaptorToken;->getPkgName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->mCaptorToken:Lcom/miui/payment/captor/CaptorToken;

    invoke-virtual {v2}, Lcom/miui/payment/captor/CaptorToken;->getActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/payment/captor/config/TextPatternConfigManager;->getTextPatterns(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private isBackTrackingPage(Ljava/lang/String;)Z
    .locals 5

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->getBackTrackingTexts()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v2, "TextRawDataParserImpl"

    const-string/jumbo v4, "Not backTracking page as list is null"

    invoke-static {v2, v4}, Lcom/miui/payment/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    :goto_0
    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "TextRawDataParserImpl"

    const-string/jumbo v3, "Is backTracking page"

    invoke-static {v2, v3}, Lcom/miui/payment/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "TextRawDataParserImpl"

    const-string/jumbo v4, "Not backTracking page as no satisfied text"

    invoke-static {v2, v4}, Lcom/miui/payment/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    goto :goto_0
.end method

.method private isLastContentValid(Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->getCompletionFeatures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v3, :cond_0

    const-string/jumbo v6, "TextRawDataParserImpl"

    const-string/jumbo v8, "Not valid last content as too long"

    invoke-static {v6, v8}, Lcom/miui/payment/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    :goto_0
    return v6

    :cond_0
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "TextRawDataParserImpl"

    const-string/jumbo v8, "Not valid last content as no valid number"

    invoke-static {v6, v8}, Lcom/miui/payment/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    goto :goto_0

    :cond_1
    const/4 v6, 0x3

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "TextRawDataParserImpl"

    const-string/jumbo v8, "Not valid last content as text is not satisfied"

    invoke-static {v6, v8}, Lcom/miui/payment/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    goto :goto_0

    :cond_2
    move v6, v8

    goto :goto_0
.end method

.method private isPaymentCompletionPage(Ljava/lang/String;)Z
    .locals 13

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->getCompletionFeatures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v6, :cond_0

    const-string/jumbo v8, "TextRawDataParserImpl"

    const-string/jumbo v10, "Not completion page as content is too long"

    invoke-static {v8, v10}, Lcom/miui/payment/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    :goto_0
    return v8

    :cond_0
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v8, "+"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "TextRawDataParserImpl"

    const-string/jumbo v10, "Not completion page as including income"

    invoke-static {v8, v10}, Lcom/miui/payment/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    const-string/jumbo v8, "TextRawDataParserImpl"

    const-string/jumbo v10, "Not completion page as no valid number"

    invoke-static {v8, v10}, Lcom/miui/payment/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    goto :goto_0

    :cond_3
    const/4 v4, 0x2

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-nez v8, :cond_4

    const-string/jumbo v8, "TextRawDataParserImpl"

    const-string/jumbo v11, "Not completion page as text is not satisfied, index %d"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v9

    invoke-static {v8, v11, v10}, Lcom/miui/payment/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v8, v9

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    const-string/jumbo v8, "TextRawDataParserImpl"

    const-string/jumbo v9, "Is completion page"

    invoke-static {v8, v9}, Lcom/miui/payment/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v10

    goto :goto_0
.end method

.method private parseContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method private resumeActivityIdentity()V
    .locals 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v7, p0, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->mCaptorToken:Lcom/miui/payment/captor/CaptorToken;

    invoke-virtual {v7}, Lcom/miui/payment/captor/CaptorToken;->getPkgName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/miui/payment/PaymentPrefs;->getLastActivityIdentity(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->mCaptorToken:Lcom/miui/payment/captor/CaptorToken;

    invoke-virtual {v7}, Lcom/miui/payment/captor/CaptorToken;->getActivityIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    move v1, v5

    :goto_0
    iget-object v7, p0, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->mCaptorToken:Lcom/miui/payment/captor/CaptorToken;

    invoke-virtual {v7, v1}, Lcom/miui/payment/captor/CaptorToken;->setNewActivity(Z)V

    invoke-direct {p0, v2}, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->saveActivityIdentity(Ljava/lang/String;)V

    const-string/jumbo v7, "TextRawDataParserImpl"

    const-string/jumbo v8, "is new activity : %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v5, v6

    invoke-static {v7, v8, v5}, Lcom/miui/payment/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    move v1, v6

    goto :goto_0
.end method

.method private saveActivityIdentity(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->mCaptorToken:Lcom/miui/payment/captor/CaptorToken;

    invoke-virtual {v1}, Lcom/miui/payment/captor/CaptorToken;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/miui/payment/PaymentPrefs;->setLastActivityIdentity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public tryToParseRawData()Lcom/miui/payment/captor/PaymentRawDesc;
    .locals 8

    const/4 v7, 0x2

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v2, "text source: %s"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->mContent:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/miui/payment/log/Logger;->debugPrivacy(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->mContent:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->isPaymentCompletionPage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->mContent:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->isBackTrackingPage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->mContent:Ljava/lang/String;

    sput-object v2, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->sLastContent:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v2, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->sLastContent:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->isLastContentValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->sLastContent:Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->mContent:Ljava/lang/String;

    :cond_2
    invoke-direct {p0}, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->resumeActivityIdentity()V

    invoke-direct {p0}, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->getTextPatterns()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->mCaptorToken:Lcom/miui/payment/captor/CaptorToken;

    invoke-virtual {v2}, Lcom/miui/payment/captor/CaptorToken;->isNewActivity()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "TextRawDataParserImpl"

    const-string/jumbo v3, "not support parse source: %s"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->mCaptorToken:Lcom/miui/payment/captor/CaptorToken;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/miui/payment/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0xb

    invoke-direct {p0}, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->getActivityName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/payment/utils/StatUtil;->recordFailedEvent(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->mCaptorToken:Lcom/miui/payment/captor/CaptorToken;

    invoke-virtual {v2}, Lcom/miui/payment/captor/CaptorToken;->getActivityName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->mContent:Ljava/lang/String;

    invoke-static {v2, v3, v7}, Lcom/miui/payment/utils/UploadUtil;->persistData(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "TextRawDataParserImpl"

    const-string/jumbo v3, "not support and not new activity"

    invoke-static {v2, v3}, Lcom/miui/payment/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->parseContent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->mRawData:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->findBestMatcher(Ljava/util/List;)V

    iget-object v2, p0, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->mBestMatcher:Ljava/util/regex/Matcher;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->mBestTextPattern:Lcom/miui/payment/captor/config/TextPattern;

    if-nez v2, :cond_8

    :cond_6
    const-string/jumbo v2, "raw data: %s"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->mRawData:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/miui/payment/log/Logger;->debugPrivacy(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->mCaptorToken:Lcom/miui/payment/captor/CaptorToken;

    invoke-virtual {v2}, Lcom/miui/payment/captor/CaptorToken;->isNewActivity()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "TextRawDataParserImpl"

    const-string/jumbo v3, "not find best pattern: %s"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->mCaptorToken:Lcom/miui/payment/captor/CaptorToken;

    invoke-virtual {v5}, Lcom/miui/payment/captor/CaptorToken;->getActivityName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/miui/payment/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v7}, Lcom/miui/payment/utils/NotificationUtil;->showNotification(I)V

    const/16 v2, 0xc

    invoke-direct {p0}, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->getActivityName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/payment/utils/StatUtil;->recordFailedEvent(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->mCaptorToken:Lcom/miui/payment/captor/CaptorToken;

    invoke-virtual {v2}, Lcom/miui/payment/captor/CaptorToken;->getActivityName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->mContent:Ljava/lang/String;

    invoke-static {v2, v3, v6}, Lcom/miui/payment/utils/UploadUtil;->persistData(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v2, "TextRawDataParserImpl"

    const-string/jumbo v3, "not pattern and not new activity"

    invoke-static {v2, v3}, Lcom/miui/payment/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->createBestRawDataDesc()Lcom/miui/payment/captor/PaymentRawDesc;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/payment/captor/parser/TextRawDataParserImpl;->checkRawDescValidity(Lcom/miui/payment/captor/PaymentRawDesc;)V

    goto/16 :goto_0
.end method
