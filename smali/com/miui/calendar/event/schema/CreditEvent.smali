.class public Lcom/miui/calendar/event/schema/CreditEvent;
.super Lcom/miui/calendar/event/schema/BaseEvent;
.source "CreditEvent.java"


# static fields
.field public static final ACCOUNT:Ljava/lang/String; = "account"

.field public static final AMOUNT:Ljava/lang/String; = "amount"

.field public static final BANK_NAME:Ljava/lang/String; = "bankName"

.field public static final REPAYMENT_TIME:Ljava/lang/String; = "repaymentTime"

.field private static final TAG:Ljava/lang/String; = "CalThd:D:CreditEvent"


# instance fields
.field public account:Ljava/lang/String;

.field public amount:Ljava/lang/String;

.field public bankName:Ljava/lang/String;

.field public repaymentTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/calendar/event/schema/BaseEvent;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/calendar/event/schema/CreditEvent;->repaymentTime:J

    return-void
.end method

.method public static parseCreditEvent(Lcom/miui/calendar/event/schema/Event;Lorg/json/JSONObject;)Lcom/miui/calendar/event/schema/CreditEvent;
    .locals 4

    :try_start_0
    new-instance v0, Lcom/miui/calendar/event/schema/CreditEvent;

    invoke-direct {v0}, Lcom/miui/calendar/event/schema/CreditEvent;-><init>()V

    const/4 v2, 0x5

    iput v2, v0, Lcom/miui/calendar/event/schema/CreditEvent;->eventType:I

    invoke-static {v0, p0, p1}, Lcom/miui/calendar/event/schema/CreditEvent;->fillBaseEvent(Lcom/miui/calendar/event/schema/BaseEvent;Lcom/miui/calendar/event/schema/Event;Lorg/json/JSONObject;)V

    const-string/jumbo v2, "bankName"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/calendar/event/schema/CreditEvent;->bankName:Ljava/lang/String;

    const-string/jumbo v2, "repaymentTime"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/calendar/event/schema/CreditEvent;->repaymentTime:J

    const-string/jumbo v2, "account"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/calendar/event/schema/CreditEvent;->account:Ljava/lang/String;

    const-string/jumbo v2, "amount"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/calendar/event/schema/CreditEvent;->amount:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "CalThd:D:CreditEvent"

    const-string/jumbo v3, "parseCreditEvent()"

    invoke-static {v2, v3, v1}, Lcom/miui/calendar/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CreditEvent{bankName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/calendar/event/schema/CreditEvent;->bankName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", repaymentTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/calendar/event/schema/CreditEvent;->repaymentTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", account=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/calendar/event/schema/CreditEvent;->account:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", amount=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/calendar/event/schema/CreditEvent;->amount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/miui/calendar/event/schema/BaseEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
