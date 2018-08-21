.class public Lcom/android/calendarcommon2/RecurrenceSet;
.super Ljava/lang/Object;
.source "RecurrenceSet.java"


# static fields
.field private static final FOLDING_SEPARATOR:Ljava/lang/String; = "\n "

.field private static final FOLD_RE:Ljava/util/regex/Pattern;

.field private static final IGNORABLE_ICAL_WHITESPACE_RE:Ljava/util/regex/Pattern;

.field private static final RULE_SEPARATOR:Ljava/lang/String; = "\n"

.field private static final TAG:Ljava/lang/String; = "RecurrenceSet"


# instance fields
.field public exdates:[J

.field public exrules:[Lcom/android/calendarcommon2/EventRecurrence;

.field public rdates:[J

.field public rrules:[Lcom/android/calendarcommon2/EventRecurrence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "(?:\\r\\n?|\\n)[ \t]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/calendarcommon2/RecurrenceSet;->IGNORABLE_ICAL_WHITESPACE_RE:Ljava/util/regex/Pattern;

    const-string/jumbo v0, ".{75}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/calendarcommon2/RecurrenceSet;->FOLD_RE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/calendarcommon2/RecurrenceSet;->rrules:[Lcom/android/calendarcommon2/EventRecurrence;

    iput-object v4, p0, Lcom/android/calendarcommon2/RecurrenceSet;->rdates:[J

    iput-object v4, p0, Lcom/android/calendarcommon2/RecurrenceSet;->exrules:[Lcom/android/calendarcommon2/EventRecurrence;

    iput-object v4, p0, Lcom/android/calendarcommon2/RecurrenceSet;->exdates:[J

    const-string/jumbo v4, "rrule"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "rdate"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "exrule"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "exdate"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v2, v1, v0}, Lcom/android/calendarcommon2/RecurrenceSet;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v8, p0, Lcom/android/calendarcommon2/RecurrenceSet;->rrules:[Lcom/android/calendarcommon2/EventRecurrence;

    iput-object v8, p0, Lcom/android/calendarcommon2/RecurrenceSet;->rdates:[J

    iput-object v8, p0, Lcom/android/calendarcommon2/RecurrenceSet;->exrules:[Lcom/android/calendarcommon2/EventRecurrence;

    iput-object v8, p0, Lcom/android/calendarcommon2/RecurrenceSet;->exdates:[J

    const-string/jumbo v8, "rrule"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v8, "rdate"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v8, "exrule"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v8, "exdate"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v7, v5, v3, v1}, Lcom/android/calendarcommon2/RecurrenceSet;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/calendarcommon2/RecurrenceSet;->rrules:[Lcom/android/calendarcommon2/EventRecurrence;

    iput-object v0, p0, Lcom/android/calendarcommon2/RecurrenceSet;->rdates:[J

    iput-object v0, p0, Lcom/android/calendarcommon2/RecurrenceSet;->exrules:[Lcom/android/calendarcommon2/EventRecurrence;

    iput-object v0, p0, Lcom/android/calendarcommon2/RecurrenceSet;->exdates:[J

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendarcommon2/RecurrenceSet;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addPropertiesForRuleStr(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {p2}, Lcom/android/calendarcommon2/RecurrenceSet;->getRuleStrings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    new-instance v3, Lcom/android/calendarcommon2/ICalendar$Property;

    invoke-direct {v3, p1}, Lcom/android/calendarcommon2/ICalendar$Property;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/calendarcommon2/ICalendar$Property;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/calendarcommon2/ICalendar$Component;->addProperty(Lcom/android/calendarcommon2/ICalendar$Property;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static addPropertyForDateStr(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/calendarcommon2/ICalendar$Property;

    invoke-direct {v0, p1}, Lcom/android/calendarcommon2/ICalendar$Property;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string/jumbo v3, ";"

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Lcom/android/calendarcommon2/ICalendar$Parameter;

    const-string/jumbo v4, "TZID"

    invoke-direct {v3, v4, v1}, Lcom/android/calendarcommon2/ICalendar$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/calendarcommon2/ICalendar$Property;->addParameter(Lcom/android/calendarcommon2/ICalendar$Parameter;)V

    :cond_2
    invoke-virtual {v0, p2}, Lcom/android/calendarcommon2/ICalendar$Property;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/calendarcommon2/ICalendar$Component;->addProperty(Lcom/android/calendarcommon2/ICalendar$Property;)V

    goto :goto_0
.end method

.method private static computeDuration(Landroid/text/format/Time;Lcom/android/calendarcommon2/ICalendar$Component;)Ljava/lang/String;
    .locals 14

    const-string/jumbo v9, "DURATION"

    invoke-virtual {p1, v9}, Lcom/android/calendarcommon2/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon2/ICalendar$Property;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/calendarcommon2/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v9

    :goto_0
    return-object v9

    :cond_0
    const-string/jumbo v9, "DTEND"

    invoke-virtual {p1, v9}, Lcom/android/calendarcommon2/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon2/ICalendar$Property;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v9, "+P0S"

    goto :goto_0

    :cond_1
    const-string/jumbo v9, "TZID"

    invoke-virtual {v0, v9}, Lcom/android/calendarcommon2/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon2/ICalendar$Parameter;

    move-result-object v8

    if-nez v8, :cond_2

    iget-object v7, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    :goto_1
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6, v7}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/calendarcommon2/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    sub-long v2, v10, v12

    const-wide/16 v10, 0x3e8

    div-long v4, v2, v10

    iget-boolean v9, p0, Landroid/text/format/Time;->allDay:Z

    if-eqz v9, :cond_3

    const-wide/32 v10, 0x15180

    rem-long v10, v4, v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-nez v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "P"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/32 v10, 0x15180

    div-long v10, v4, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "D"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_2
    iget-object v7, v8, Lcom/android/calendarcommon2/ICalendar$Parameter;->value:Ljava/lang/String;

    goto :goto_1

    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "P"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "S"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0
.end method

.method private static extractDates(Lcom/android/calendarcommon2/ICalendar$Property;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, "TZID"

    invoke-virtual {p0, v1}, Lcom/android/calendarcommon2/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon2/ICalendar$Parameter;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/android/calendarcommon2/ICalendar$Parameter;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/calendarcommon2/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/calendarcommon2/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static flattenProperties(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0, p1}, Lcom/android/calendarcommon2/ICalendar$Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendarcommon2/ICalendar$Property;

    invoke-virtual {v5}, Lcom/android/calendarcommon2/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Lcom/android/calendarcommon2/ICalendar$Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendarcommon2/ICalendar$Property;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v3}, Lcom/android/calendarcommon2/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static fold(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/calendarcommon2/RecurrenceSet;->FOLD_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, "$0\r\n "

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRuleStrings(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_1

    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/String;

    :cond_0
    return-object v2

    :cond_1
    invoke-static {p0}, Lcom/android/calendarcommon2/RecurrenceSet;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v4, v2, v1

    invoke-static {v4}, Lcom/android/calendarcommon2/RecurrenceSet;->fold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_6

    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1

    const-string/jumbo v19, "\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [Lcom/android/calendarcommon2/EventRecurrence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendarcommon2/RecurrenceSet;->rrules:[Lcom/android/calendarcommon2/EventRecurrence;

    const/4 v10, 0x0

    :goto_0
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v10, v0, :cond_1

    new-instance v17, Lcom/android/calendarcommon2/EventRecurrence;

    invoke-direct/range {v17 .. v17}, Lcom/android/calendarcommon2/EventRecurrence;-><init>()V

    aget-object v19, v18, v10

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon2/EventRecurrence;->parse(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendarcommon2/RecurrenceSet;->rrules:[Lcom/android/calendarcommon2/EventRecurrence;

    move-object/from16 v19, v0

    aput-object v17, v19, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2

    invoke-static/range {p2 .. p2}, Lcom/android/calendarcommon2/RecurrenceSet;->parseRecurrenceDates(Ljava/lang/String;)[J

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendarcommon2/RecurrenceSet;->rdates:[J

    :cond_2
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_3

    const-string/jumbo v19, "\n"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v0, v9

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [Lcom/android/calendarcommon2/EventRecurrence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendarcommon2/RecurrenceSet;->exrules:[Lcom/android/calendarcommon2/EventRecurrence;

    const/4 v10, 0x0

    :goto_1
    array-length v0, v9

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v10, v0, :cond_3

    new-instance v8, Lcom/android/calendarcommon2/EventRecurrence;

    invoke-direct {v8}, Lcom/android/calendarcommon2/EventRecurrence;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Lcom/android/calendarcommon2/EventRecurrence;->parse(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendarcommon2/RecurrenceSet;->exrules:[Lcom/android/calendarcommon2/EventRecurrence;

    move-object/from16 v19, v0

    aput-object v8, v19, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_6

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v19, "\n"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v13, v2

    const/4 v11, 0x0

    move v12, v11

    :goto_2
    if-ge v12, v13, :cond_5

    aget-object v7, v2, v12

    invoke-static {v7}, Lcom/android/calendarcommon2/RecurrenceSet;->parseRecurrenceDates(Ljava/lang/String;)[J

    move-result-object v6

    move-object v3, v6

    array-length v14, v3

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v14, :cond_4

    aget-wide v4, v3, v11

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    goto :goto_2

    :cond_5
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [J

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendarcommon2/RecurrenceSet;->exdates:[J

    const/4 v10, 0x0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v16

    :goto_4
    move/from16 v0, v16

    if-ge v10, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendarcommon2/RecurrenceSet;->exdates:[J

    move-object/from16 v20, v0

    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    aput-wide v22, v20, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_6
    return-void
.end method

.method public static parseRecurrenceDates(Ljava/lang/String;)[J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    const/4 v10, 0x0

    const-string/jumbo v6, "UTC"

    const-string/jumbo v8, ";"

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    invoke-virtual {p0, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, ","

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v3, v4

    new-array v0, v3, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    :try_start_0
    aget-object v8, v4, v2

    invoke-virtual {v5, v8}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v5, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    aput-wide v8, v0, v2

    iput-object v6, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v8, Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "TimeFormatException thrown when parsing time "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v4, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " in recurrence "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    return-object v0
.end method

.method public static populateComponent(Landroid/content/ContentValues;Lcom/android/calendarcommon2/ICalendar$Component;)Z
    .locals 18

    const-wide/16 v4, -0x1

    const-string/jumbo v15, "dtstart"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    const-string/jumbo v15, "dtstart"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :cond_0
    const-string/jumbo v15, "duration"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v15, "eventTimezone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "rrule"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v15, "rdate"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v15, "exrule"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v15, "exdate"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v15, "allDay"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    const/4 v2, 0x1

    :goto_0
    const-wide/16 v16, -0x1

    cmp-long v15, v4, v16

    if-eqz v15, :cond_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_4

    :cond_1
    const/4 v15, 0x0

    :goto_1
    return v15

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    new-instance v6, Lcom/android/calendarcommon2/ICalendar$Property;

    const-string/jumbo v15, "DTSTART"

    invoke-direct {v6, v15}, Lcom/android/calendarcommon2/ICalendar$Property;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7

    if-nez v2, :cond_5

    new-instance v15, Lcom/android/calendarcommon2/ICalendar$Parameter;

    const-string/jumbo v16, "TZID"

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v14}, Lcom/android/calendarcommon2/ICalendar$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Lcom/android/calendarcommon2/ICalendar$Property;->addParameter(Lcom/android/calendarcommon2/ICalendar$Parameter;)V

    :cond_5
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7, v14}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v7, v4, v5}, Landroid/text/format/Time;->set(J)V

    if-eqz v2, :cond_6

    new-instance v15, Lcom/android/calendarcommon2/ICalendar$Parameter;

    const-string/jumbo v16, "VALUE"

    const-string/jumbo v17, "DATE"

    invoke-direct/range {v15 .. v17}, Lcom/android/calendarcommon2/ICalendar$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Lcom/android/calendarcommon2/ICalendar$Property;->addParameter(Lcom/android/calendarcommon2/ICalendar$Parameter;)V

    const/4 v15, 0x1

    iput-boolean v15, v7, Landroid/text/format/Time;->allDay:Z

    const/4 v15, 0x0

    iput v15, v7, Landroid/text/format/Time;->hour:I

    const/4 v15, 0x0

    iput v15, v7, Landroid/text/format/Time;->minute:I

    const/4 v15, 0x0

    iput v15, v7, Landroid/text/format/Time;->second:I

    :cond_6
    invoke-virtual {v7}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Lcom/android/calendarcommon2/ICalendar$Property;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/calendarcommon2/ICalendar$Component;->addProperty(Lcom/android/calendarcommon2/ICalendar$Property;)V

    new-instance v9, Lcom/android/calendarcommon2/ICalendar$Property;

    const-string/jumbo v15, "DURATION"

    invoke-direct {v9, v15}, Lcom/android/calendarcommon2/ICalendar$Property;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Lcom/android/calendarcommon2/ICalendar$Property;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/android/calendarcommon2/ICalendar$Component;->addProperty(Lcom/android/calendarcommon2/ICalendar$Property;)V

    const-string/jumbo v15, "RRULE"

    move-object/from16 v0, p1

    invoke-static {v0, v15, v13}, Lcom/android/calendarcommon2/RecurrenceSet;->addPropertiesForRuleStr(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v15, "RDATE"

    move-object/from16 v0, p1

    invoke-static {v0, v15, v12}, Lcom/android/calendarcommon2/RecurrenceSet;->addPropertyForDateStr(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v15, "EXRULE"

    move-object/from16 v0, p1

    invoke-static {v0, v15, v11}, Lcom/android/calendarcommon2/RecurrenceSet;->addPropertiesForRuleStr(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v15, "EXDATE"

    move-object/from16 v0, p1

    invoke-static {v0, v15, v10}, Lcom/android/calendarcommon2/RecurrenceSet;->addPropertyForDateStr(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x1

    goto/16 :goto_1

    :cond_7
    new-instance v7, Landroid/text/format/Time;

    const-string/jumbo v15, "UTC"

    invoke-direct {v7, v15}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static populateComponent(Landroid/database/Cursor;Lcom/android/calendarcommon2/ICalendar$Component;)Z
    .locals 27

    const-string/jumbo v24, "dtstart"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v24, "duration"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string/jumbo v24, "eventTimezone"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    const-string/jumbo v24, "rrule"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    const-string/jumbo v24, "rdate"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    const-string/jumbo v24, "exrule"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    const-string/jumbo v24, "exdate"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string/jumbo v24, "allDay"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-wide/16 v6, -0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-nez v24, :cond_0

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    :cond_0
    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    const/4 v4, 0x1

    :goto_0
    const-wide/16 v24, -0x1

    cmp-long v24, v6, v24

    if-eqz v24, :cond_1

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_1

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_3

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_3

    :cond_1
    const/16 v24, 0x0

    :goto_1
    return v24

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    new-instance v9, Lcom/android/calendarcommon2/ICalendar$Property;

    const-string/jumbo v24, "DTSTART"

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Lcom/android/calendarcommon2/ICalendar$Property;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_6

    if-nez v4, :cond_4

    new-instance v24, Lcom/android/calendarcommon2/ICalendar$Parameter;

    const-string/jumbo v25, "TZID"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/calendarcommon2/ICalendar$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lcom/android/calendarcommon2/ICalendar$Property;->addParameter(Lcom/android/calendarcommon2/ICalendar$Parameter;)V

    :cond_4
    new-instance v10, Landroid/text/format/Time;

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v10, v6, v7}, Landroid/text/format/Time;->set(J)V

    if-eqz v4, :cond_5

    new-instance v24, Lcom/android/calendarcommon2/ICalendar$Parameter;

    const-string/jumbo v25, "VALUE"

    const-string/jumbo v26, "DATE"

    invoke-direct/range {v24 .. v26}, Lcom/android/calendarcommon2/ICalendar$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lcom/android/calendarcommon2/ICalendar$Property;->addParameter(Lcom/android/calendarcommon2/ICalendar$Parameter;)V

    const/16 v24, 0x1

    move/from16 v0, v24

    iput-boolean v0, v10, Landroid/text/format/Time;->allDay:Z

    const/16 v24, 0x0

    move/from16 v0, v24

    iput v0, v10, Landroid/text/format/Time;->hour:I

    const/16 v24, 0x0

    move/from16 v0, v24

    iput v0, v10, Landroid/text/format/Time;->minute:I

    const/16 v24, 0x0

    move/from16 v0, v24

    iput v0, v10, Landroid/text/format/Time;->second:I

    :cond_5
    invoke-virtual {v10}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lcom/android/calendarcommon2/ICalendar$Property;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/android/calendarcommon2/ICalendar$Component;->addProperty(Lcom/android/calendarcommon2/ICalendar$Property;)V

    new-instance v13, Lcom/android/calendarcommon2/ICalendar$Property;

    const-string/jumbo v24, "DURATION"

    move-object/from16 v0, v24

    invoke-direct {v13, v0}, Lcom/android/calendarcommon2/ICalendar$Property;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Lcom/android/calendarcommon2/ICalendar$Property;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/calendarcommon2/ICalendar$Component;->addProperty(Lcom/android/calendarcommon2/ICalendar$Property;)V

    const-string/jumbo v24, "RRULE"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/RecurrenceSet;->addPropertiesForRuleStr(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v24, "RDATE"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/RecurrenceSet;->addPropertyForDateStr(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v24, "EXRULE"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/RecurrenceSet;->addPropertiesForRuleStr(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v24, "EXDATE"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1, v15}, Lcom/android/calendarcommon2/RecurrenceSet;->addPropertyForDateStr(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v24, 0x1

    goto/16 :goto_1

    :cond_6
    new-instance v10, Landroid/text/format/Time;

    const-string/jumbo v24, "UTC"

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public static populateContentValues(Lcom/android/calendarcommon2/ICalendar$Component;Landroid/content/ContentValues;)Z
    .locals 22

    :try_start_0
    const-string/jumbo v19, "DTSTART"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon2/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon2/ICalendar$Property;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/calendarcommon2/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v19, "TZID"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/android/calendarcommon2/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon2/ICalendar$Parameter;

    move-result-object v18

    if-nez v18, :cond_3

    const/16 v17, 0x0

    :goto_0
    new-instance v16, Landroid/text/format/Time;

    if-nez v18, :cond_4

    const-string/jumbo v19, "UTC"

    :goto_1
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    move-result v11

    move-object/from16 v0, v16

    iget-boolean v4, v0, Landroid/text/format/Time;->allDay:Z

    if-nez v11, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    const-string/jumbo v17, "UTC"

    :cond_1
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/calendarcommon2/RecurrenceSet;->computeDuration(Landroid/text/format/Time;Lcom/android/calendarcommon2/ICalendar$Component;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v19, "RRULE"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/calendarcommon2/RecurrenceSet;->flattenProperties(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v19, "RDATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon2/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon2/ICalendar$Property;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/calendarcommon2/RecurrenceSet;->extractDates(Lcom/android/calendarcommon2/ICalendar$Property;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v19, "EXRULE"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/calendarcommon2/RecurrenceSet;->flattenProperties(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v19, "EXDATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon2/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon2/ICalendar$Property;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/calendarcommon2/RecurrenceSet;->extractDates(Lcom/android/calendarcommon2/ICalendar$Property;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_5

    :cond_2
    const/16 v19, 0x0

    :goto_2
    return v19

    :cond_3
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/calendarcommon2/ICalendar$Parameter;->value:Ljava/lang/String;

    move-object/from16 v17, v0

    goto :goto_0

    :cond_4
    move-object/from16 v19, v17

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_6

    const-string/jumbo v19, "UTC"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    :cond_6
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    const-string/jumbo v19, "dtstart"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v20, -0x1

    cmp-long v19, v12, v20

    if-nez v19, :cond_7

    const/16 v19, 0x0

    goto :goto_2

    :cond_7
    const-string/jumbo v19, "rrule"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v19, "rdate"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v19, "exrule"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v19, "exdate"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v19, "eventTimezone"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v19, "duration"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v20, "allDay"

    if-eqz v4, :cond_8

    const/16 v19, 0x1

    :goto_3
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v19, 0x1

    goto/16 :goto_2

    :cond_8
    const/16 v19, 0x0

    goto :goto_3

    :catch_0
    move-exception v8

    const-string/jumbo v19, "RecurrenceSet"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Failed to parse event: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendarcommon2/ICalendar$Component;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    goto/16 :goto_2
.end method

.method public static unfold(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/calendarcommon2/RecurrenceSet;->IGNORABLE_ICAL_WHITESPACE_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public hasRecurrence()Z
    .locals 1

    iget-object v0, p0, Lcom/android/calendarcommon2/RecurrenceSet;->rrules:[Lcom/android/calendarcommon2/EventRecurrence;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendarcommon2/RecurrenceSet;->rdates:[J

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
