.class public Lcom/miui/payment/captor/parser/SmartSmsCard;
.super Ljava/lang/Object;
.source "SmartSmsCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/payment/captor/parser/SmartSmsCard$Item;
    }
.end annotation


# instance fields
.field private actionID:I

.field private cardID:I

.field private frameName:Ljava/lang/String;

.field private items:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/payment/captor/parser/SmartSmsCard$Item;",
            ">;"
        }
    .end annotation
.end field

.field private millis:J

.field private phoneNum:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionID()I
    .locals 1

    iget v0, p0, Lcom/miui/payment/captor/parser/SmartSmsCard;->actionID:I

    return v0
.end method

.method public getCardID()I
    .locals 1

    iget v0, p0, Lcom/miui/payment/captor/parser/SmartSmsCard;->cardID:I

    return v0
.end method

.method public getFrameName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/captor/parser/SmartSmsCard;->frameName:Ljava/lang/String;

    return-object v0
.end method

.method public getItems()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/payment/captor/parser/SmartSmsCard$Item;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/payment/captor/parser/SmartSmsCard;->items:Ljava/util/Map;

    return-object v0
.end method

.method public getMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/payment/captor/parser/SmartSmsCard;->millis:J

    return-wide v0
.end method

.method public getPhoneNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/captor/parser/SmartSmsCard;->phoneNum:Ljava/lang/String;

    return-object v0
.end method

.method public setActionID(I)V
    .locals 0

    iput p1, p0, Lcom/miui/payment/captor/parser/SmartSmsCard;->actionID:I

    return-void
.end method

.method public setCardID(I)V
    .locals 0

    iput p1, p0, Lcom/miui/payment/captor/parser/SmartSmsCard;->cardID:I

    return-void
.end method

.method public setFrameName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/captor/parser/SmartSmsCard;->frameName:Ljava/lang/String;

    return-void
.end method

.method public setItems(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/payment/captor/parser/SmartSmsCard$Item;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/payment/captor/parser/SmartSmsCard;->items:Ljava/util/Map;

    return-void
.end method

.method public setMillis(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/payment/captor/parser/SmartSmsCard;->millis:J

    return-void
.end method

.method public setPhoneNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/captor/parser/SmartSmsCard;->phoneNum:Ljava/lang/String;

    return-void
.end method
