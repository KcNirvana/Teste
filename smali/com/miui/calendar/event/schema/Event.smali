.class public Lcom/miui/calendar/event/schema/Event;
.super Lcom/miui/calendar/event/schema/BaseEventModel;
.source "Event.java"


# static fields
.field public static final CREDIT_EVENT_PREVIEW_DAYS:I = 0x3

.field public static final PACKAGE_NAME_CREDIT:Ljava/lang/String; = "com.miui.calendar.credit"

.field public static final PACKAGE_NAME_ELECTRICITY_BILL:Ljava/lang/String; = "com.miui.calendar.electricity_bill"

.field public static final PACKAGE_NAME_GAS_BILL:Ljava/lang/String; = "com.miui.calendar.gas_bill"

.field public static final PACKAGE_NAME_HOTEL:Ljava/lang/String; = "com.miui.calendar.hotel"

.field public static final PACKAGE_NAME_LOAN:Ljava/lang/String; = "com.miui.calendar.loan"

.field public static final PACKAGE_NAME_MOVIE:Ljava/lang/String; = "com.miui.calendar.movie"

.field public static final PACKAGE_NAME_TRAVEL:Ljava/lang/String; = "com.miui.calendar.travel"


# instance fields
.field public bottom:F

.field public color:I

.field public endJulianDay:I

.field public endMillis:J

.field public endMinute:I

.field public guestsCanModify:Z

.field public isLunarRepeating:Z

.field public isSolarRepeating:Z

.field public left:F

.field private mColumn:I

.field private mMaxColumns:I

.field public nextDown:Lcom/miui/calendar/event/schema/Event;

.field public nextLeft:Lcom/miui/calendar/event/schema/Event;

.field public nextRight:Lcom/miui/calendar/event/schema/Event;

.field public nextUp:Lcom/miui/calendar/event/schema/Event;

.field public organizer:Ljava/lang/String;

.field public right:F

.field public selfAttendeeStatus:I

.field public startJulianDay:I

.field public startMillis:J

.field public startMinute:I

.field public top:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/calendar/event/schema/BaseEventModel;-><init>()V

    return-void
.end method


# virtual methods
.method public drawAsAllday()Z
    .locals 4

    iget-boolean v0, p0, Lcom/miui/calendar/event/schema/Event;->mAllDay:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/miui/calendar/event/schema/Event;->endMillis:J

    iget-wide v2, p0, Lcom/miui/calendar/event/schema/Event;->startMillis:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getColumn()I
    .locals 1

    iget v0, p0, Lcom/miui/calendar/event/schema/Event;->mColumn:I

    return v0
.end method

.method public getEndMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/calendar/event/schema/Event;->endMillis:J

    return-wide v0
.end method

.method public getMaxColumns()I
    .locals 1

    iget v0, p0, Lcom/miui/calendar/event/schema/Event;->mMaxColumns:I

    return v0
.end method

.method public getTitleAndLocation()Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lcom/miui/calendar/event/schema/Event;->mTitle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/calendar/event/schema/Event;->mLocation:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/calendar/event/schema/Event;->mLocation:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public setColumn(I)V
    .locals 0

    iput p1, p0, Lcom/miui/calendar/event/schema/Event;->mColumn:I

    return-void
.end method

.method public setEndMillis(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/calendar/event/schema/Event;->endMillis:J

    return-void
.end method

.method public setMaxColumns(I)V
    .locals 0

    iput p1, p0, Lcom/miui/calendar/event/schema/Event;->mMaxColumns:I

    return-void
.end method

.method public setStartMillis(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/calendar/event/schema/Event;->startMillis:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/calendar/event/schema/Event;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/calendar/event/schema/Event;->mHasEP:Lcom/miui/calendar/event/schema/HasEP;

    invoke-virtual {v2}, Lcom/miui/calendar/event/schema/HasEP;->getEventType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
