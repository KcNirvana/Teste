.class public Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PhoneNumDBHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "phone_num3.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final FIELD_COPYWRITER:Ljava/lang/String; = "copywriter"

.field private static final FIELD_ICCID:Ljava/lang/String; = "iccid"

.field private static final FIELD_NUMBER:Ljava/lang/String; = "number"

.field private static final FIELD_NUMBER_HASH:Ljava/lang/String; = "number_hash"

.field private static final FIELD_OPERATOR_LINK:Ljava/lang/String; = "operator_link"

.field private static final FIELD_PHONE_LEVEL:Ljava/lang/String; = "phone_level"

.field private static final FIELD_TOKEN:Ljava/lang/String; = "token"

.field private static final FIELD_UPDATE_TIME:Ljava/lang/String; = "update_time"

.field private static final SIM_TABLE_CREATE:Ljava/lang/String;

.field private static final TABLE_NAME_PHONE_NUMBER:Ljava/lang/String; = "phone_number"

.field private static final TAG:Ljava/lang/String; = "PhoneNumberDBHelper"

.field private static volatile sInstance:Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;


# instance fields
.field private context:Landroid/content/Context;

.field private logger:Lcom/xiaomi/phonenum/utils/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "CREATE TABLE IF NOT EXISTS %s (%s INTEGER PRIMARY KEY, %s TEXT not null unique, %s TEXT not null, %s TEXT not null, %s TEXT not null, %s TEXT, %s TEXT, %s TEXT, %s INTEGER)"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "phone_number"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "_id"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "iccid"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "number"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "number_hash"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "update_time"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "token"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string v2, "copywriter"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string v2, "operator_link"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string v2, "phone_level"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;->SIM_TABLE_CREATE:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;->sInstance:Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "phone_num3.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-static {}, Lcom/xiaomi/phonenum/utils/LoggerManager;->getLogger()Lcom/xiaomi/phonenum/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    iput-object p1, p0, Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;->context:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;
    .locals 2

    const-class v0, Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;->sInstance:Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;->sInstance:Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;

    :cond_0
    sget-object p0, Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;->sInstance:Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized deletePhoneNum(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "phone_number"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iccid=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object p1, p0, Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    const-string v0, "PhoneNumberDBHelper"

    const-string v1, "1 entry deletePhoneNum from phone_number database"

    invoke-interface {p1, v0, v1}, Lcom/xiaomi/phonenum/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    const-string v1, "PhoneNumberDBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deletePhoneNum failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/xiaomi/phonenum/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;->SIM_TABLE_CREATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

.method public declared-synchronized queryPhoneNum(Ljava/lang/String;I)Lcom/xiaomi/phonenum/bean/PhoneNum;
    .locals 18
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v10, 0x0

    :try_start_1
    const-string v3, "phone_number"

    const-string v11, "number"

    const-string v12, "number_hash"

    const-string v13, "token"

    const-string v14, "phone_level"

    const-string v15, "update_time"

    const-string v16, "copywriter"

    const-string v17, "operator_link"

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iccid=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_4

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_4

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x4

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x5

    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object v11, v10

    goto :goto_0

    :cond_0
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    :goto_0
    const/4 v12, 0x6

    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    :goto_1
    iget-object v12, v1, Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    const-string v13, "PhoneNumberDBHelper"

    const-string v14, "phoneNum loaded from db"

    invoke-interface {v12, v13, v14}, Lcom/xiaomi/phonenum/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;

    invoke-direct {v12}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;-><init>()V

    move/from16 v13, p2

    invoke-virtual {v12, v13}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->subId(I)Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;

    move-result-object v12

    invoke-virtual {v12, v0}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->iccid(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->number(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->numberHash(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->updateTime(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->token(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->copywriter(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->operatorLink(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;

    move-result-object v0

    sget-object v4, Lcom/xiaomi/phonenum/obtain/PhoneLevel;->SMS_VERIFY:Lcom/xiaomi/phonenum/obtain/PhoneLevel;

    iget v4, v4, Lcom/xiaomi/phonenum/obtain/PhoneLevel;->value:I

    if-lt v8, v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-virtual {v0, v3}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->isVerified(Z)Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->phoneLevel(I)Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->build()Lcom/xiaomi/phonenum/bean/PhoneNum;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_3

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_5
    monitor-exit p0

    return-object v10

    :catchall_1
    move-exception v0

    move-object v2, v10

    :goto_2
    if-eqz v2, :cond_6

    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updatePhoneNum(Lcom/xiaomi/phonenum/bean/PhoneNum;)V
    .locals 6
    .param p1    # Lcom/xiaomi/phonenum/bean/PhoneNum;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "iccid"

    iget-object v2, p1, Lcom/xiaomi/phonenum/bean/PhoneNum;->iccid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "number"

    iget-object v2, p1, Lcom/xiaomi/phonenum/bean/PhoneNum;->number:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "number_hash"

    iget-object v2, p1, Lcom/xiaomi/phonenum/bean/PhoneNum;->numberHash:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "update_time"

    iget-object v2, p1, Lcom/xiaomi/phonenum/bean/PhoneNum;->updateTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "token"

    iget-object v2, p1, Lcom/xiaomi/phonenum/bean/PhoneNum;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "copywriter"

    iget-object v2, p1, Lcom/xiaomi/phonenum/bean/PhoneNum;->copywriter:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "operator_link"

    iget-object v2, p1, Lcom/xiaomi/phonenum/bean/PhoneNum;->operatorLink:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "phone_level"

    iget v2, p1, Lcom/xiaomi/phonenum/bean/PhoneNum;->phoneLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-string v4, "phone_number"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    iget-object p1, p0, Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    const-string v0, "PhoneNumberDBHelper"

    const-string v1, "1 entry updated in phone_number database"

    invoke-interface {p1, v0, v1}, Lcom/xiaomi/phonenum/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    const-string v1, "PhoneNumberDBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePhoneNum failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/xiaomi/phonenum/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
