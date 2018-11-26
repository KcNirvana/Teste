.class public Lcom/miui/powercenter/autotask/AutoTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final aLk:[Ljava/lang/String;


# instance fields
.field private aLl:Lorg/json/JSONObject;

.field private aLm:Lorg/json/JSONObject;

.field private aLn:I

.field private aLo:I

.field private aLp:Lorg/json/JSONObject;

.field private aLq:Z

.field private mEnabled:Z

.field private mId:J

.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "content://com.miui.powercenter.autotask/autotasks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/powercenter/autotask/AutoTask;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Lcom/miui/powercenter/autotask/Z;

    invoke-direct {v0}, Lcom/miui/powercenter/autotask/Z;-><init>()V

    sput-object v0, Lcom/miui/powercenter/autotask/AutoTask;->CREATOR:Landroid/os/Parcelable$Creator;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "enabled"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "name"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "condition"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "operation"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "repeat_type"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "task_started"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "restore_operation"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "restore_level"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/powercenter/autotask/AutoTask;->aLk:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    const-wide/16 v2, -0x1

    const/16 v8, 0x7f

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/miui/powercenter/autotask/AutoTask;->mId:J

    iput-boolean v4, p0, Lcom/miui/powercenter/autotask/AutoTask;->mEnabled:Z

    iput v8, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLn:I

    iput-boolean v4, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLq:Z

    iput v4, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLo:I

    const-string/jumbo v5, ""

    const-string/jumbo v6, "{}"

    const-string/jumbo v7, "{}"

    const-string/jumbo v10, "{}"

    const/4 v11, 0x1

    move-object v1, p0

    move v9, v4

    invoke-direct/range {v1 .. v11}, Lcom/miui/powercenter/autotask/AutoTask;->aYB(JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/miui/powercenter/autotask/AutoTask;->mId:J

    iput-boolean v1, p0, Lcom/miui/powercenter/autotask/AutoTask;->mEnabled:Z

    const/16 v2, 0x7f

    iput v2, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLn:I

    iput-boolean v1, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLq:Z

    iput v1, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLo:I

    const-string/jumbo v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string/jumbo v4, "enabled"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v0

    :goto_0
    const-string/jumbo v5, "name"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "condition"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "operation"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "repeat_type"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string/jumbo v9, "task_started"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-eqz v9, :cond_1

    move v9, v0

    :goto_1
    const-string/jumbo v0, "restore_operation"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v0, "restore_level"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/miui/powercenter/autotask/AutoTask;->aYB(JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;I)V

    return-void

    :cond_0
    move v4, v1

    goto :goto_0

    :cond_1
    move v9, v1

    goto :goto_1
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/miui/powercenter/autotask/AutoTask;->mId:J

    iput-boolean v2, p0, Lcom/miui/powercenter/autotask/AutoTask;->mEnabled:Z

    const/16 v0, 0x7f

    iput v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLn:I

    iput-boolean v2, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLq:Z

    iput v2, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLo:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/powercenter/autotask/AutoTask;->mId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mName:Ljava/lang/String;

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLl:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLm:Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLn:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLq:Z

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLp:Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLo:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "autotask"

    const-string/jumbo v2, "Parcel"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public constructor <init>(Lcom/miui/powercenter/autotask/AutoTask;)V
    .locals 12

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mId:J

    iput-boolean v2, p0, Lcom/miui/powercenter/autotask/AutoTask;->mEnabled:Z

    const/16 v0, 0x7f

    iput v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLn:I

    iput-boolean v2, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLq:Z

    iput v2, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLo:I

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->aXT()Z

    move-result v4

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->aXW()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->aXX()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->aXU()I

    move-result v8

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->aXV()Z

    move-result v9

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->aXY()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->aXZ()I

    move-result v11

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/miui/powercenter/autotask/AutoTask;->aYB(JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;I)V

    return-void
.end method

.method private aYA(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 3

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private aYB(JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;I)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLl:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLm:Lorg/json/JSONObject;

    iput-wide p1, p0, Lcom/miui/powercenter/autotask/AutoTask;->mId:J

    iput-boolean p3, p0, Lcom/miui/powercenter/autotask/AutoTask;->mEnabled:Z

    iput-object p4, p0, Lcom/miui/powercenter/autotask/AutoTask;->mName:Ljava/lang/String;

    iput p7, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLn:I

    iput-boolean p8, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLq:Z

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLp:Lorg/json/JSONObject;

    iput p10, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLo:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "autotask"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static aYd(I)Lcom/miui/powercenter/autotask/u;
    .locals 2

    new-instance v0, Lcom/miui/powercenter/autotask/u;

    invoke-direct {v0}, Lcom/miui/powercenter/autotask/u;-><init>()V

    div-int/lit8 v1, p0, 0x3c

    iput v1, v0, Lcom/miui/powercenter/autotask/u;->aLr:I

    rem-int/lit8 v1, p0, 0x3c

    iput v1, v0, Lcom/miui/powercenter/autotask/u;->aLs:I

    return-object v0
.end method

.method public static aYe()Ljava/util/List;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/powercenter/autotask/AutoTask;

    invoke-direct {v1}, Lcom/miui/powercenter/autotask/AutoTask;-><init>()V

    new-instance v2, Lcom/miui/powercenter/autotask/v;

    const/16 v3, 0x1a4

    invoke-direct {v2, v4, v3}, Lcom/miui/powercenter/autotask/v;-><init>(II)V

    const-string/jumbo v3, "hour_minute_duration"

    invoke-virtual {v2}, Lcom/miui/powercenter/autotask/v;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/miui/powercenter/autotask/AutoTask;->aYm(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "airplane_mode"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/powercenter/autotask/AutoTask;->aYp(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/powercenter/autotask/AutoTask;

    invoke-direct {v1}, Lcom/miui/powercenter/autotask/AutoTask;-><init>()V

    const-string/jumbo v2, "battery_level_down"

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/powercenter/autotask/AutoTask;->aYm(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "mute"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/powercenter/autotask/AutoTask;->aYp(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "brightness"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/powercenter/autotask/AutoTask;->aYp(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "gps"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/powercenter/autotask/AutoTask;->aYp(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "synchronization"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/powercenter/autotask/AutoTask;->aYp(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "bluetooth"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/powercenter/autotask/AutoTask;->aYp(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private aYz(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return v7

    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    return v7

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    return v7

    :cond_4
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    :cond_5
    return v7

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    const-string/jumbo v5, "autotask"

    const-string/jumbo v6, "compareJsonObject"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    goto :goto_0

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    return v7

    :cond_8
    const/4 v0, 0x1

    return v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public aXT()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mEnabled:Z

    return v0
.end method

.method public aXU()I
    .locals 1

    iget v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLn:I

    return v0
.end method

.method public aXV()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLq:Z

    return v0
.end method

.method public aXW()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLl:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aXX()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLm:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aXY()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLp:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aXZ()I
    .locals 1

    iget v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLo:I

    return v0
.end method

.method public aYC(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLl:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public aYa()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "hour_minute_duration"

    invoke-virtual {p0, v2}, Lcom/miui/powercenter/autotask/AutoTask;->aYb(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "battery_level_down"

    invoke-virtual {p0, v2}, Lcom/miui/powercenter/autotask/AutoTask;->aYb(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->aXZ()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public aYb(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLl:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public aYc(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLl:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    return-object v0

    :catch_1
    move-exception v1

    return-object v0

    :catchall_0
    move-exception v1

    return-object v0
.end method

.method public aYf()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLl:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/miui/powercenter/autotask/AutoTask;->aYA(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public aYg()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLm:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/miui/powercenter/autotask/AutoTask;->aYA(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public aYh(Lcom/miui/powercenter/autotask/AutoTask;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLl:Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/miui/powercenter/autotask/AutoTask;->aLl:Lorg/json/JSONObject;

    invoke-direct {p0, v0, v1}, Lcom/miui/powercenter/autotask/AutoTask;->aYz(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method public aYi(Lcom/miui/powercenter/autotask/AutoTask;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLm:Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/miui/powercenter/autotask/AutoTask;->aLm:Lorg/json/JSONObject;

    invoke-direct {p0, v0, v1}, Lcom/miui/powercenter/autotask/AutoTask;->aYz(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method public aYj(I)V
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLo:I

    return-void
.end method

.method public aYk(I)V
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLn:I

    return-void
.end method

.method public aYl()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->aYf()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/AutoTask;->aYC(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public aYm(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLl:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "autotask"

    const-string/jumbo v2, "setCondition"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public aYn()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->aYg()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/AutoTask;->aYu(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public aYo(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLm:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    return-object v0

    :catch_1
    move-exception v1

    return-object v0

    :catchall_0
    move-exception v1

    return-object v0
.end method

.method public aYp(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLm:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "autotask"

    const-string/jumbo v2, "setOperation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public aYq()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->aYf()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public aYr()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->aYg()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public aYs(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLq:Z

    return-void
.end method

.method public aYt()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->aYx()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLp:Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public aYu(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLm:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public aYv(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLm:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public aYw(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLp:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "autotask"

    const-string/jumbo v2, "setRestoreOperation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public aYx()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLp:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/miui/powercenter/autotask/AutoTask;->aYA(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public aYy(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLp:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    return-object v0

    :catch_1
    move-exception v1

    return-object v0

    :catchall_0
    move-exception v1

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/miui/powercenter/autotask/AutoTask;

    if-nez v1, :cond_0

    return v0

    :cond_0
    check-cast p1, Lcom/miui/powercenter/autotask/AutoTask;

    iget-wide v2, p0, Lcom/miui/powercenter/autotask/AutoTask;->mId:J

    iget-wide v4, p1, Lcom/miui/powercenter/autotask/AutoTask;->mId:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/powercenter/autotask/AutoTask;->mEnabled:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/AutoTask;->mName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/miui/powercenter/autotask/AutoTask;->mId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mEnabled:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLl:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLm:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLq:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLp:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->aLo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
