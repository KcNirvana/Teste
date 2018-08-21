.class public Lcom/miui/payment/captor/parser/SmartSmsCard$Item;
.super Ljava/lang/Object;
.source "SmartSmsCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/payment/captor/parser/SmartSmsCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private endPosition:I

.field private has:I

.field private startPosition:I

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndPosition()I
    .locals 1

    iget v0, p0, Lcom/miui/payment/captor/parser/SmartSmsCard$Item;->endPosition:I

    return v0
.end method

.method public getHas()I
    .locals 1

    iget v0, p0, Lcom/miui/payment/captor/parser/SmartSmsCard$Item;->has:I

    return v0
.end method

.method public getStartPosition()I
    .locals 1

    iget v0, p0, Lcom/miui/payment/captor/parser/SmartSmsCard$Item;->startPosition:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/captor/parser/SmartSmsCard$Item;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setEndPosition(I)V
    .locals 0

    iput p1, p0, Lcom/miui/payment/captor/parser/SmartSmsCard$Item;->endPosition:I

    return-void
.end method

.method public setHas(I)V
    .locals 0

    iput p1, p0, Lcom/miui/payment/captor/parser/SmartSmsCard$Item;->has:I

    return-void
.end method

.method public setStartPosition(I)V
    .locals 0

    iput p1, p0, Lcom/miui/payment/captor/parser/SmartSmsCard$Item;->startPosition:I

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/captor/parser/SmartSmsCard$Item;->value:Ljava/lang/String;

    return-void
.end method
