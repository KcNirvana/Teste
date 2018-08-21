.class public Lcom/miui/calendar/event/loader/EventLoader;
.super Ljava/lang/Object;
.source "EventLoader.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.miui.calendar"

.field private static final EVENT_PROJECTION:[Ljava/lang/String;

.field private static final PROJECTION_ACCOUNT_NAME_INDEX:I = 0x10

.field private static final PROJECTION_ACCOUNT_TYPE_INDEX:I = 0x11

.field private static final PROJECTION_ALL_DAY_INDEX:I = 0x2

.field private static final PROJECTION_BEGIN_INDEX:I = 0x4

.field private static final PROJECTION_CALENDAR_DISPLAY_NAME_INDEX:I = 0x12

.field private static final PROJECTION_CALENDAR_ID_INDEX:I = 0x16

.field private static final PROJECTION_CUSTOM_APP_PACKAGE_INDEX:I = 0x13

.field private static final PROJECTION_DESCRIPTION_INDEX:I = 0x15

.field private static final PROJECTION_END_DAY_INDEX:I = 0x8

.field private static final PROJECTION_END_INDEX:I = 0x5

.field private static final PROJECTION_END_MINUTE_INDEX:I = 0xa

.field private static final PROJECTION_EVENT_ID_INDEX:I = 0x3

.field private static final PROJECTION_GUESTS_CAN_INVITE_OTHERS_INDEX:I = 0xf

.field private static final PROJECTION_HAS_ALARM_INDEX:I = 0xb

.field private static final PROJECTION_HAS_EXTENDED_PROPERTIES_INDEX:I = 0x14

.field private static final PROJECTION_LOCATION_INDEX:I = 0x1

.field private static final PROJECTION_ORGANIZER_INDEX:I = 0xe

.field private static final PROJECTION_RRULE_INDEX:I = 0xc

.field private static final PROJECTION_SELF_ATTENDEE_STATUS_INDEX:I = 0xd

.field private static final PROJECTION_START_DAY_INDEX:I = 0x7

.field private static final PROJECTION_START_MINUTE_INDEX:I = 0x9

.field private static final PROJECTION_TITLE_INDEX:I = 0x0

.field private static final SORT_EVENTS_BY:Ljava/lang/String; = "begin ASC, end DESC, title ASC"

.field private static final TAG:Ljava/lang/String; = "CalThd:D:EventLoader"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "begin"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "end"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "startDay"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "endDay"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "startMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "endMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "hasAlarm"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "rrule"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "organizer"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "guestsCanModify"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "account_name"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "calendar_displayName"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "customAppPackage"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "hasExtendedProperties"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "calendar_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/calendar/event/loader/EventLoader;->EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildEventsFromCursor(Landroid/content/Context;Landroid/database/Cursor;II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/calendar/event/schema/Event;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const-string/jumbo v2, "CalThd:D:EventLoader"

    const-string/jumbo v3, "buildEventsFromCursor() cursor is null, return"

    invoke-static {v2, v3}, Lcom/miui/calendar/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_2
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, p1}, Lcom/miui/calendar/event/loader/EventLoader;->generateEventFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/miui/calendar/event/schema/Event;

    move-result-object v0

    iget v2, v0, Lcom/miui/calendar/event/schema/Event;->startJulianDay:I

    if-gt v2, p3, :cond_2

    iget v2, v0, Lcom/miui/calendar/event/schema/Event;->endJulianDay:I

    if-lt v2, p2, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static generateEventFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/miui/calendar/event/schema/Event;
    .locals 12

    const/4 v7, 0x1

    const/4 v8, 0x0

    new-instance v4, Lcom/miui/calendar/event/schema/Event;

    invoke-direct {v4}, Lcom/miui/calendar/event/schema/Event;-><init>()V

    const/4 v6, 0x3

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v4, Lcom/miui/calendar/event/schema/Event;->mId:J

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/miui/calendar/event/schema/Event;->mTitle:Ljava/lang/String;

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/miui/calendar/event/schema/Event;->mLocation:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    :goto_0
    iput-boolean v6, v4, Lcom/miui/calendar/event/schema/Event;->mAllDay:Z

    const/16 v6, 0xe

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/miui/calendar/event/schema/Event;->organizer:Ljava/lang/String;

    const/16 v6, 0xf

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_3

    move v6, v7

    :goto_1
    iput-boolean v6, v4, Lcom/miui/calendar/event/schema/Event;->guestsCanModify:Z

    const/16 v6, 0x16

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v4, Lcom/miui/calendar/event/schema/Event;->mCalendarId:J

    iget-object v6, v4, Lcom/miui/calendar/event/schema/Event;->mTitle:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, v4, Lcom/miui/calendar/event/schema/Event;->mTitle:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const-string/jumbo v6, ""

    iput-object v6, v4, Lcom/miui/calendar/event/schema/Event;->mTitle:Ljava/lang/String;

    :cond_1
    const/4 v6, 0x4

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v6, 0x5

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v2, v4, Lcom/miui/calendar/event/schema/Event;->startMillis:J

    const/16 v6, 0x9

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Lcom/miui/calendar/event/schema/Event;->startMinute:I

    const/4 v6, 0x7

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Lcom/miui/calendar/event/schema/Event;->startJulianDay:I

    iput-wide v0, v4, Lcom/miui/calendar/event/schema/Event;->endMillis:J

    const/16 v6, 0xa

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Lcom/miui/calendar/event/schema/Event;->endMinute:I

    const/16 v6, 0x8

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Lcom/miui/calendar/event/schema/Event;->endJulianDay:I

    const/16 v6, 0xb

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_4

    move v6, v7

    :goto_2
    iput-boolean v6, v4, Lcom/miui/calendar/event/schema/Event;->mHasAlarm:Z

    const/16 v6, 0xc

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    iput-boolean v7, v4, Lcom/miui/calendar/event/schema/Event;->isSolarRepeating:Z

    :goto_3
    const/16 v6, 0xd

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Lcom/miui/calendar/event/schema/Event;->selfAttendeeStatus:I

    const/16 v6, 0x10

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/miui/calendar/event/schema/Event;->mAccountName:Ljava/lang/String;

    const/16 v6, 0x11

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/miui/calendar/event/schema/Event;->mAccountType:Ljava/lang/String;

    const/16 v6, 0x12

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/miui/calendar/event/schema/Event;->mCalendarDisplayName:Ljava/lang/String;

    const/16 v6, 0x13

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/miui/calendar/event/schema/Event;->mCustomAppPackage:Ljava/lang/String;

    new-instance v6, Lcom/miui/calendar/event/schema/HasEP;

    const/16 v7, 0x14

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-direct {v6, v7}, Lcom/miui/calendar/event/schema/HasEP;-><init>(I)V

    iput-object v6, v4, Lcom/miui/calendar/event/schema/Event;->mHasEP:Lcom/miui/calendar/event/schema/HasEP;

    const/16 v6, 0x15

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/miui/calendar/event/schema/Event;->mDescription:Ljava/lang/String;

    return-object v4

    :cond_2
    move v6, v8

    goto/16 :goto_0

    :cond_3
    move v6, v8

    goto/16 :goto_1

    :cond_4
    move v6, v8

    goto :goto_2

    :cond_5
    iput-boolean v8, v4, Lcom/miui/calendar/event/schema/Event;->isSolarRepeating:Z

    goto :goto_3
.end method

.method private static instancesQuery(Landroid/content/ContentResolver;[Ljava/lang/String;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    const-string/jumbo v8, "visible=?"

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "1"

    aput-object v1, v7, v0

    const-string/jumbo v6, "begin ASC"

    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_SEARCH_BY_DAY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    int-to-long v0, p2

    invoke-static {v9, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    int-to-long v0, p3

    invoke-static {v9, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    const-string/jumbo v0, " "

    invoke-virtual {v9, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p4, v8

    move-object p5, v7

    :goto_0
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    if-nez p6, :cond_2

    move-object v5, v6

    :goto_1
    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    if-eqz p5, :cond_1

    array-length v0, p5

    if-lez v0, :cond_1

    array-length v0, p5

    add-int/lit8 v0, v0, 0x1

    invoke-static {p5, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [Ljava/lang/String;

    array-length v0, p5

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    aget-object v1, v7, v1

    aput-object v1, p5, v0

    goto :goto_0

    :cond_1
    move-object p5, v7

    goto :goto_0

    :cond_2
    move-object/from16 v5, p6

    goto :goto_1
.end method

.method public static load(Landroid/content/Context;II)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/calendar/event/schema/Event;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    add-int v0, p1, p2

    add-int/lit8 v3, v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/calendar/event/loader/EventLoader;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "begin ASC, end DESC, title ASC"

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/miui/calendar/event/loader/EventLoader;->instancesQuery(Landroid/content/ContentResolver;[Ljava/lang/String;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-static {p0, v7, p1, v3}, Lcom/miui/calendar/event/loader/EventLoader;->buildEventsFromCursor(Landroid/content/Context;Landroid/database/Cursor;II)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method
