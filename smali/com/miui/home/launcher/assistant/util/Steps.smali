.class public Lcom/miui/home/launcher/assistant/util/Steps;
.super Ljava/lang/Object;
.source "Steps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/util/Steps$Step;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.miui.providers.steps"

.field public static final BEGIN_TIME:Ljava/lang/String; = "_begin_time"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_id ASC"

.field public static final DETAIL_URI:Ljava/lang/String; = "http://vipaccount.miui.com/event/detail?record=3"

.field public static final END_TIME:Ljava/lang/String; = "_end_time"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final MODE:Ljava/lang/String; = "_mode"

.field public static final MODE_NOT_SUPPORT:I = 0x0

.field public static final MODE_REST:I = 0x1

.field public static final MODE_RUNNING:I = 0x3

.field public static final MODE_WALKING:I = 0x2

.field private static final SELECT_BEGIN:Ljava/lang/String; = "_begin_time>=?"

.field public static final STEPS:Ljava/lang/String; = "_steps"

.field public static final SUPPORT_FIELD:Ljava/lang/String; = "support_steps_provider"

.field private static final TAG:Ljava/lang/String; = "Steps"

.field public static projection:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "content://0@com.miui.providers.steps/item"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/assistant/util/Steps;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "_begin_time"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "_end_time"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "_mode"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "_steps"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/home/launcher/assistant/util/Steps;->projection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAllSteps(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/home/launcher/assistant/util/Steps$Step;",
            ">;"
        }
    .end annotation

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v10, 0x0

    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/assistant/util/Steps;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/home/launcher/assistant/util/Steps;->projection:[Ljava/lang/String;

    const-string/jumbo v5, "_id ASC"

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    :goto_0
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v2, Lcom/miui/home/launcher/assistant/util/Steps$Step;

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v1, 0x4

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-direct/range {v2 .. v9}, Lcom/miui/home/launcher/assistant/util/Steps$Step;-><init>(IJJII)V

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :goto_2
    return-object v12

    :catch_0
    move-exception v11

    const-string/jumbo v1, "Steps"

    const-string/jumbo v3, "failed to query steps %s"

    invoke-static {v1, v3, v11}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "Steps"

    const-string/jumbo v3, "getAllSteps, cursor has no data"

    invoke-static {v1, v3}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "Steps"

    const-string/jumbo v3, "getAllSteps, cursor has no null"

    invoke-static {v1, v3}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static getStepsByTime(Landroid/content/Context;J)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/home/launcher/assistant/util/Steps$Step;",
            ">;"
        }
    .end annotation

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    const-string/jumbo v2, ""

    cmp-long v4, p1, v6

    if-lez v4, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-lez v0, :cond_2

    new-array v1, v0, [Ljava/lang/String;

    :goto_1
    cmp-long v4, p1, v6

    if-lez v4, :cond_0

    const-string/jumbo v2, "_begin_time>=?"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    :cond_0
    invoke-static {p0, v2, v1}, Lcom/miui/home/launcher/assistant/util/Steps;->getAllSteps(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    return-object v3

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getStepsNow(Landroid/content/Context;)I
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v5, 0xb

    invoke-virtual {v0, v5, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xc

    invoke-virtual {v0, v5, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xd

    invoke-virtual {v0, v5, v8}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lcom/miui/home/launcher/assistant/util/Steps;->getStepsByTime(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/assistant/util/Steps$Step;

    iget v5, v2, Lcom/miui/home/launcher/assistant/util/Steps$Step;->mode:I

    const/4 v8, 0x1

    if-le v5, v8, :cond_0

    iget v5, v2, Lcom/miui/home/launcher/assistant/util/Steps$Step;->steps:I

    add-int/2addr v3, v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static supportStepsProvider()Z
    .locals 2

    const-string/jumbo v0, "support_steps_provider"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
