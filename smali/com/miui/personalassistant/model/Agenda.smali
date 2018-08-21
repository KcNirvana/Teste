.class public Lcom/miui/personalassistant/model/Agenda;
.super Ljava/lang/Object;
.source "Agenda.java"


# static fields
.field private static final ALL_DAY:Ljava/lang/String; = "1"


# instance fields
.field private accountName:Ljava/lang/String;

.field private accountType:Ljava/lang/String;

.field private allDay:Z

.field private begin:J

.field private calendarDisplayName:Ljava/lang/String;

.field private customAppPackage:Ljava/lang/String;

.field private displayColor:I

.field private end:J

.field private endDay:I

.field private eventId:J

.field private eventLocation:Ljava/lang/String;

.field private selfAttendeeStatus:I

.field private startDay:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cursor2json(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v2, "allDay"

    const-string/jumbo v3, "allDay"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "begin"

    const-string/jumbo v3, "begin"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "end"

    const-string/jumbo v3, "end"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "title"

    const-string/jumbo v3, "title"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "eventLocation"

    const-string/jumbo v3, "eventLocation"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "event_id"

    const-string/jumbo v3, "event_id"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "startDay"

    const-string/jumbo v3, "startDay"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "endDay"

    const-string/jumbo v3, "endDay"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "displayColor"

    const-string/jumbo v3, "displayColor"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "selfAttendeeStatus"

    const-string/jumbo v3, "selfAttendeeStatus"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "calendar_displayName"

    const-string/jumbo v3, "calendar_displayName"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "customAppPackage"

    const-string/jumbo v3, "customAppPackage"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "account_name"

    const-string/jumbo v3, "account_name"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "account_type"

    const-string/jumbo v3, "account_type"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static json2Object(Lorg/json/JSONObject;)Lcom/miui/personalassistant/model/Agenda;
    .locals 4

    new-instance v0, Lcom/miui/personalassistant/model/Agenda;

    invoke-direct {v0}, Lcom/miui/personalassistant/model/Agenda;-><init>()V

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "allDay"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/model/Agenda;->setAllDay(Z)V

    const-string/jumbo v1, "begin"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/personalassistant/model/Agenda;->setBegin(J)V

    const-string/jumbo v1, "end"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/personalassistant/model/Agenda;->setEnd(J)V

    const-string/jumbo v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/model/Agenda;->setTitle(Ljava/lang/String;)V

    const-string/jumbo v1, "eventLocation"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/model/Agenda;->setEventLocation(Ljava/lang/String;)V

    const-string/jumbo v1, "event_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/personalassistant/model/Agenda;->setEventId(J)V

    const-string/jumbo v1, "startDay"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/model/Agenda;->setStartDay(I)V

    const-string/jumbo v1, "endDay"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/model/Agenda;->setEndDay(I)V

    const-string/jumbo v1, "displayColor"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/model/Agenda;->setDisplayColor(I)V

    const-string/jumbo v1, "selfAttendeeStatus"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/model/Agenda;->setSelfAttendeeStatus(I)V

    const-string/jumbo v1, "calendar_displayName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/model/Agenda;->setCalendarDisplayName(Ljava/lang/String;)V

    const-string/jumbo v1, "customAppPackage"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/model/Agenda;->setCustomAppPackage(Ljava/lang/String;)V

    const-string/jumbo v1, "account_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/model/Agenda;->setAccountName(Ljava/lang/String;)V

    const-string/jumbo v1, "account_type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/model/Agenda;->setAccountType(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/model/Agenda;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/model/Agenda;->accountType:Ljava/lang/String;

    return-object v0
.end method

.method public getBegin()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/personalassistant/model/Agenda;->begin:J

    return-wide v0
.end method

.method public getCalendarDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/model/Agenda;->calendarDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomAppPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/model/Agenda;->customAppPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayColor()I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/model/Agenda;->displayColor:I

    return v0
.end method

.method public getEnd()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/personalassistant/model/Agenda;->end:J

    return-wide v0
.end method

.method public getEndDay()I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/model/Agenda;->endDay:I

    return v0
.end method

.method public getEventId()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/personalassistant/model/Agenda;->eventId:J

    return-wide v0
.end method

.method public getEventLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/model/Agenda;->eventLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getSelfAttendeeStatus()I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/model/Agenda;->selfAttendeeStatus:I

    return v0
.end method

.method public getStartDay()I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/model/Agenda;->startDay:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/model/Agenda;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isAllDay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/model/Agenda;->allDay:Z

    return v0
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/model/Agenda;->accountName:Ljava/lang/String;

    return-void
.end method

.method public setAccountType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/model/Agenda;->accountType:Ljava/lang/String;

    return-void
.end method

.method public setAllDay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/model/Agenda;->allDay:Z

    return-void
.end method

.method public setBegin(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/personalassistant/model/Agenda;->begin:J

    return-void
.end method

.method public setCalendarDisplayName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/model/Agenda;->calendarDisplayName:Ljava/lang/String;

    return-void
.end method

.method public setCustomAppPackage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/model/Agenda;->customAppPackage:Ljava/lang/String;

    return-void
.end method

.method public setDisplayColor(I)V
    .locals 0

    iput p1, p0, Lcom/miui/personalassistant/model/Agenda;->displayColor:I

    return-void
.end method

.method public setEnd(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/personalassistant/model/Agenda;->end:J

    return-void
.end method

.method public setEndDay(I)V
    .locals 0

    iput p1, p0, Lcom/miui/personalassistant/model/Agenda;->endDay:I

    return-void
.end method

.method public setEventId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/personalassistant/model/Agenda;->eventId:J

    return-void
.end method

.method public setEventLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/model/Agenda;->eventLocation:Ljava/lang/String;

    return-void
.end method

.method public setSelfAttendeeStatus(I)V
    .locals 0

    iput p1, p0, Lcom/miui/personalassistant/model/Agenda;->selfAttendeeStatus:I

    return-void
.end method

.method public setStartDay(I)V
    .locals 0

    iput p1, p0, Lcom/miui/personalassistant/model/Agenda;->startDay:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/model/Agenda;->title:Ljava/lang/String;

    return-void
.end method
