.class public final Lcom/miui/payment/captor/config/TextPattern$Builder;
.super Ljava/lang/Object;
.source "TextPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/payment/captor/config/TextPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
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
.method private constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/miui/payment/captor/config/TextPattern$Builder;->amountNumberGroup:I

    iput v0, p0, Lcom/miui/payment/captor/config/TextPattern$Builder;->amountUnitGroup:I

    iput v0, p0, Lcom/miui/payment/captor/config/TextPattern$Builder;->amountCurrencyGroup:I

    iput v0, p0, Lcom/miui/payment/captor/config/TextPattern$Builder;->dateGroup:I

    iput v0, p0, Lcom/miui/payment/captor/config/TextPattern$Builder;->methodNameGroup:I

    iput v0, p0, Lcom/miui/payment/captor/config/TextPattern$Builder;->methodAccountGroup:I

    iput v0, p0, Lcom/miui/payment/captor/config/TextPattern$Builder;->categoryDescGroup:I

    iput v0, p0, Lcom/miui/payment/captor/config/TextPattern$Builder;->commentGroup:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/payment/captor/config/TextPattern$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/payment/captor/config/TextPattern$Builder;-><init>()V

    return-void
.end method

.method public static aTextPattern()Lcom/miui/payment/captor/config/TextPattern$Builder;
    .locals 1

    new-instance v0, Lcom/miui/payment/captor/config/TextPattern$Builder;

    invoke-direct {v0}, Lcom/miui/payment/captor/config/TextPattern$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/miui/payment/captor/config/TextPattern;
    .locals 2

    new-instance v0, Lcom/miui/payment/captor/config/TextPattern;

    invoke-direct {v0}, Lcom/miui/payment/captor/config/TextPattern;-><init>()V

    iget-object v1, p0, Lcom/miui/payment/captor/config/TextPattern$Builder;->regex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/payment/captor/config/TextPattern;->setRegex(Ljava/lang/String;)V

    iget v1, p0, Lcom/miui/payment/captor/config/TextPattern$Builder;->amountNumberGroup:I

    invoke-virtual {v0, v1}, Lcom/miui/payment/captor/config/TextPattern;->setAmountNumberGroup(I)V

    iget v1, p0, Lcom/miui/payment/captor/config/TextPattern$Builder;->amountUnitGroup:I

    invoke-virtual {v0, v1}, Lcom/miui/payment/captor/config/TextPattern;->setAmountUnitGroup(I)V

    iget v1, p0, Lcom/miui/payment/captor/config/TextPattern$Builder;->amountCurrencyGroup:I

    invoke-virtual {v0, v1}, Lcom/miui/payment/captor/config/TextPattern;->setAmountCurrencyGroup(I)V

    iget v1, p0, Lcom/miui/payment/captor/config/TextPattern$Builder;->dateGroup:I

    invoke-virtual {v0, v1}, Lcom/miui/payment/captor/config/TextPattern;->setDateGroup(I)V

    iget v1, p0, Lcom/miui/payment/captor/config/TextPattern$Builder;->methodNameGroup:I

    invoke-virtual {v0, v1}, Lcom/miui/payment/captor/config/TextPattern;->setMethodNameGroup(I)V

    iget v1, p0, Lcom/miui/payment/captor/config/TextPattern$Builder;->methodAccountGroup:I

    invoke-virtual {v0, v1}, Lcom/miui/payment/captor/config/TextPattern;->setMethodAccountGroup(I)V

    iget v1, p0, Lcom/miui/payment/captor/config/TextPattern$Builder;->categoryDescGroup:I

    invoke-virtual {v0, v1}, Lcom/miui/payment/captor/config/TextPattern;->setCategoryDescGroup(I)V

    iget v1, p0, Lcom/miui/payment/captor/config/TextPattern$Builder;->commentGroup:I

    invoke-virtual {v0, v1}, Lcom/miui/payment/captor/config/TextPattern;->setCommentGroup(I)V

    return-object v0
.end method

.method public setAmountCurrencyGroup(I)Lcom/miui/payment/captor/config/TextPattern$Builder;
    .locals 0

    iput p1, p0, Lcom/miui/payment/captor/config/TextPattern$Builder;->amountCurrencyGroup:I

    return-object p0
.end method

.method public setAmountNumberGroup(I)Lcom/miui/payment/captor/config/TextPattern$Builder;
    .locals 0

    iput p1, p0, Lcom/miui/payment/captor/config/TextPattern$Builder;->amountNumberGroup:I

    return-object p0
.end method

.method public setAmountUnitGroup(I)Lcom/miui/payment/captor/config/TextPattern$Builder;
    .locals 0

    iput p1, p0, Lcom/miui/payment/captor/config/TextPattern$Builder;->amountUnitGroup:I

    return-object p0
.end method

.method public setCategoryDescGroup(I)Lcom/miui/payment/captor/config/TextPattern$Builder;
    .locals 0

    iput p1, p0, Lcom/miui/payment/captor/config/TextPattern$Builder;->categoryDescGroup:I

    return-object p0
.end method

.method public setCommentGroup(I)Lcom/miui/payment/captor/config/TextPattern$Builder;
    .locals 0

    iput p1, p0, Lcom/miui/payment/captor/config/TextPattern$Builder;->commentGroup:I

    return-object p0
.end method

.method public setDateGroup(I)Lcom/miui/payment/captor/config/TextPattern$Builder;
    .locals 0

    iput p1, p0, Lcom/miui/payment/captor/config/TextPattern$Builder;->dateGroup:I

    return-object p0
.end method

.method public setMethodAccountGroup(I)Lcom/miui/payment/captor/config/TextPattern$Builder;
    .locals 0

    iput p1, p0, Lcom/miui/payment/captor/config/TextPattern$Builder;->methodAccountGroup:I

    return-object p0
.end method

.method public setMethodNameGroup(I)Lcom/miui/payment/captor/config/TextPattern$Builder;
    .locals 0

    iput p1, p0, Lcom/miui/payment/captor/config/TextPattern$Builder;->methodNameGroup:I

    return-object p0
.end method

.method public setRegex(Ljava/lang/String;)Lcom/miui/payment/captor/config/TextPattern$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/captor/config/TextPattern$Builder;->regex:Ljava/lang/String;

    return-object p0
.end method
