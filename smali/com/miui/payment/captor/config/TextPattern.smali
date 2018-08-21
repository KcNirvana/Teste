.class public Lcom/miui/payment/captor/config/TextPattern;
.super Ljava/lang/Object;
.source "TextPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/payment/captor/config/TextPattern$Builder;,
        Lcom/miui/payment/captor/config/TextPattern$Factory;,
        Lcom/miui/payment/captor/config/TextPattern$PatternConstants;
    }
.end annotation


# instance fields
.field private amountCurrencyGroup:I

.field private amountNumberGroup:I

.field private amountUnitGroup:I

.field private categoryDescGroup:I

.field private commentGroup:I

.field private dateGroup:I

.field private methodAccountGroup:I

.field private methodNameGroup:I

.field private regex:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/miui/payment/captor/config/TextPattern;->amountNumberGroup:I

    iput v0, p0, Lcom/miui/payment/captor/config/TextPattern;->amountUnitGroup:I

    iput v0, p0, Lcom/miui/payment/captor/config/TextPattern;->amountCurrencyGroup:I

    iput v0, p0, Lcom/miui/payment/captor/config/TextPattern;->dateGroup:I

    iput v0, p0, Lcom/miui/payment/captor/config/TextPattern;->methodNameGroup:I

    iput v0, p0, Lcom/miui/payment/captor/config/TextPattern;->methodAccountGroup:I

    iput v0, p0, Lcom/miui/payment/captor/config/TextPattern;->categoryDescGroup:I

    iput v0, p0, Lcom/miui/payment/captor/config/TextPattern;->commentGroup:I

    return-void
.end method


# virtual methods
.method public getAmountCurrencyGroup()I
    .locals 1

    iget v0, p0, Lcom/miui/payment/captor/config/TextPattern;->amountCurrencyGroup:I

    return v0
.end method

.method public getAmountNumberGroup()I
    .locals 1

    iget v0, p0, Lcom/miui/payment/captor/config/TextPattern;->amountNumberGroup:I

    return v0
.end method

.method public getAmountUnitGroup()I
    .locals 1

    iget v0, p0, Lcom/miui/payment/captor/config/TextPattern;->amountUnitGroup:I

    return v0
.end method

.method public getCategoryDescGroup()I
    .locals 1

    iget v0, p0, Lcom/miui/payment/captor/config/TextPattern;->categoryDescGroup:I

    return v0
.end method

.method public getCommentGroup()I
    .locals 1

    iget v0, p0, Lcom/miui/payment/captor/config/TextPattern;->commentGroup:I

    return v0
.end method

.method public getDateGroup()I
    .locals 1

    iget v0, p0, Lcom/miui/payment/captor/config/TextPattern;->dateGroup:I

    return v0
.end method

.method public getMethodAccountGroup()I
    .locals 1

    iget v0, p0, Lcom/miui/payment/captor/config/TextPattern;->methodAccountGroup:I

    return v0
.end method

.method public getMethodNameGroup()I
    .locals 1

    iget v0, p0, Lcom/miui/payment/captor/config/TextPattern;->methodNameGroup:I

    return v0
.end method

.method public getRegex()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/captor/config/TextPattern;->regex:Ljava/lang/String;

    return-object v0
.end method

.method public setAmountCurrencyGroup(I)V
    .locals 0

    iput p1, p0, Lcom/miui/payment/captor/config/TextPattern;->amountCurrencyGroup:I

    return-void
.end method

.method public setAmountNumberGroup(I)V
    .locals 0

    iput p1, p0, Lcom/miui/payment/captor/config/TextPattern;->amountNumberGroup:I

    return-void
.end method

.method public setAmountUnitGroup(I)V
    .locals 0

    iput p1, p0, Lcom/miui/payment/captor/config/TextPattern;->amountUnitGroup:I

    return-void
.end method

.method public setCategoryDescGroup(I)V
    .locals 0

    iput p1, p0, Lcom/miui/payment/captor/config/TextPattern;->categoryDescGroup:I

    return-void
.end method

.method public setCommentGroup(I)V
    .locals 0

    iput p1, p0, Lcom/miui/payment/captor/config/TextPattern;->commentGroup:I

    return-void
.end method

.method public setDateGroup(I)V
    .locals 0

    iput p1, p0, Lcom/miui/payment/captor/config/TextPattern;->dateGroup:I

    return-void
.end method

.method public setMethodAccountGroup(I)V
    .locals 0

    iput p1, p0, Lcom/miui/payment/captor/config/TextPattern;->methodAccountGroup:I

    return-void
.end method

.method public setMethodNameGroup(I)V
    .locals 0

    iput p1, p0, Lcom/miui/payment/captor/config/TextPattern;->methodNameGroup:I

    return-void
.end method

.method public setRegex(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/captor/config/TextPattern;->regex:Ljava/lang/String;

    return-void
.end method
