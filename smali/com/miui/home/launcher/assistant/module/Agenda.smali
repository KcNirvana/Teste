.class public Lcom/miui/home/launcher/assistant/module/Agenda;
.super Ljava/lang/Object;
.source "Agenda.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final ALL_DAY:Ljava/lang/String; = "1"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/home/launcher/assistant/module/Agenda;",
            ">;"
        }
    .end annotation
.end field


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
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/assistant/module/Agenda$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/assistant/module/Agenda$1;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/assistant/module/Agenda;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->allDay:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->begin:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->end:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->eventLocation:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->eventId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->startDay:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->endDay:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->displayColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->selfAttendeeStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->calendarDisplayName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->customAppPackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->accountName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->accountType:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static json2Object(Lorg/json/JSONObject;)Lcom/miui/home/launcher/assistant/module/Agenda;
    .locals 4

    new-instance v0, Lcom/miui/home/launcher/assistant/module/Agenda;

    invoke-direct {v0}, Lcom/miui/home/launcher/assistant/module/Agenda;-><init>()V

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "allDay"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/Agenda;->setAllDay(Z)V

    const-string/jumbo v1, "begin"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/assistant/module/Agenda;->setBegin(J)V

    const-string/jumbo v1, "end"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/assistant/module/Agenda;->setEnd(J)V

    const-string/jumbo v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/Agenda;->setTitle(Ljava/lang/String;)V

    const-string/jumbo v1, "eventLocation"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/Agenda;->setEventLocation(Ljava/lang/String;)V

    const-string/jumbo v1, "event_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/assistant/module/Agenda;->setEventId(J)V

    const-string/jumbo v1, "startDay"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/Agenda;->setStartDay(I)V

    const-string/jumbo v1, "endDay"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/Agenda;->setEndDay(I)V

    const-string/jumbo v1, "displayColor"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/Agenda;->setDisplayColor(I)V

    const-string/jumbo v1, "selfAttendeeStatus"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/Agenda;->setSelfAttendeeStatus(I)V

    const-string/jumbo v1, "calendar_displayName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/Agenda;->setCalendarDisplayName(Ljava/lang/String;)V

    const-string/jumbo v1, "customAppPackage"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/Agenda;->setCustomAppPackage(Ljava/lang/String;)V

    const-string/jumbo v1, "account_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/Agenda;->setAccountName(Ljava/lang/String;)V

    const-string/jumbo v1, "account_type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/Agenda;->setAccountType(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->accountType:Ljava/lang/String;

    return-object v0
.end method

.method public getBegin()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->begin:J

    return-wide v0
.end method

.method public getCalendarDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->calendarDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomAppPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->customAppPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayColor()I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->displayColor:I

    return v0
.end method

.method public getEnd()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->end:J

    return-wide v0
.end method

.method public getEndDay()I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->endDay:I

    return v0
.end method

.method public getEventId()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->eventId:J

    return-wide v0
.end method

.method public getEventLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->eventLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getSelfAttendeeStatus()I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->selfAttendeeStatus:I

    return v0
.end method

.method public getStartDay()I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->startDay:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isAllDay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->allDay:Z

    return v0
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->accountName:Ljava/lang/String;

    return-void
.end method

.method public setAccountType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->accountType:Ljava/lang/String;

    return-void
.end method

.method public setAllDay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->allDay:Z

    return-void
.end method

.method public setBegin(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->begin:J

    return-void
.end method

.method public setCalendarDisplayName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->calendarDisplayName:Ljava/lang/String;

    return-void
.end method

.method public setCustomAppPackage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->customAppPackage:Ljava/lang/String;

    return-void
.end method

.method public setDisplayColor(I)V
    .locals 0

    iput p1, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->displayColor:I

    return-void
.end method

.method public setEnd(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->end:J

    return-void
.end method

.method public setEndDay(I)V
    .locals 0

    iput p1, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->endDay:I

    return-void
.end method

.method public setEventId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->eventId:J

    return-void
.end method

.method public setEventLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->eventLocation:Ljava/lang/String;

    return-void
.end method

.method public setSelfAttendeeStatus(I)V
    .locals 0

    iput p1, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->selfAttendeeStatus:I

    return-void
.end method

.method public setStartDay(I)V
    .locals 0

    iput p1, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->startDay:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->title:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->allDay:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->begin:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->end:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->eventLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->eventId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->startDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->endDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->displayColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->selfAttendeeStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->calendarDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->customAppPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->accountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/Agenda;->accountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
