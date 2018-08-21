.class public Lcom/miui/calendar/event/schema/BaseEventModel;
.super Ljava/lang/Object;
.source "BaseEventModel.java"


# instance fields
.field public mAccountName:Ljava/lang/String;

.field public mAccountType:Ljava/lang/String;

.field public mAllDay:Z

.field public mCalendarDisplayName:Ljava/lang/String;

.field public mCalendarId:J

.field public mCustomAppPackage:Ljava/lang/String;

.field public mDescription:Ljava/lang/String;

.field public mHasAlarm:Z

.field public mHasEP:Lcom/miui/calendar/event/schema/HasEP;

.field public mId:J

.field public mLocation:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Lcom/miui/calendar/event/schema/BaseEventModel;->mId:J

    iput-wide v4, p0, Lcom/miui/calendar/event/schema/BaseEventModel;->mCalendarId:J

    iput-object v1, p0, Lcom/miui/calendar/event/schema/BaseEventModel;->mDescription:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/calendar/event/schema/BaseEventModel;->mAccountName:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/calendar/event/schema/BaseEventModel;->mAccountType:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/calendar/event/schema/BaseEventModel;->mCalendarDisplayName:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/calendar/event/schema/BaseEventModel;->mTitle:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/calendar/event/schema/BaseEventModel;->mLocation:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/miui/calendar/event/schema/BaseEventModel;->mHasAlarm:Z

    iput-boolean v2, p0, Lcom/miui/calendar/event/schema/BaseEventModel;->mAllDay:Z

    new-instance v0, Lcom/miui/calendar/event/schema/HasEP;

    invoke-direct {v0, v2}, Lcom/miui/calendar/event/schema/HasEP;-><init>(I)V

    iput-object v0, p0, Lcom/miui/calendar/event/schema/BaseEventModel;->mHasEP:Lcom/miui/calendar/event/schema/HasEP;

    return-void
.end method
