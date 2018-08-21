.class public Lcom/miui/payment/backup/PaymentCloudBackupImpl;
.super Ljava/lang/Object;
.source "PaymentCloudBackupImpl.java"

# interfaces
.implements Lcom/xiaomi/settingsdk/backup/ICloudBackup;


# static fields
.field public static final CLOUD_BACKUP_VER:I = 0x1

.field private static final KEY_ASSISTANT_DB:Ljava/lang/String; = "key_assistant_db"

.field private static final KEY_EXPRESS_DB:Ljava/lang/String; = "key_express_db"

.field private static final KEY_OTHER_SETTING:Ljava/lang/String; = "key_other"

.field private static final KEY_PAYMENT_DB:Ljava/lang/String; = "key_payment_db"

.field private static final KEY_STAMP:Ljava/lang/String; = "key_stamp"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentVersion(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackupSettings(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    .locals 16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "key_stamp"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v13}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lnet/sqlcipher/database/SQLiteDatabase;->loadLibs(Landroid/content/Context;)V

    invoke-static/range {p1 .. p1}, Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lcom/miui/payment/PaymentPrefs;->getDatabasePassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;->getReadableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v14

    const-string/jumbo v15, "payment.db"

    invoke-static {v14, v15}, Lcom/miui/payment/backup/DbUtils;->db2json(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string/jumbo v14, "key_payment_db"

    invoke-static {v12, v13, v14}, Lcom/miui/payment/backup/AssistantBackupUtils;->encryptData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string/jumbo v14, "key_payment_db"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v6}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/provider/database/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    const-string/jumbo v15, "assistant.db"

    invoke-static {v14, v15}, Lcom/miui/payment/backup/DbUtils;->db2json(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v14, "key_assistant_db"

    invoke-static {v9, v13, v14}, Lcom/miui/payment/backup/AssistantBackupUtils;->encryptData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string/jumbo v14, "key_assistant_db"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v3}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    const-string/jumbo v15, "express.db"

    invoke-static {v14, v15}, Lcom/miui/payment/backup/DbUtils;->db2json(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string/jumbo v14, "key_assistant_db"

    invoke-static {v10, v13, v14}, Lcom/miui/payment/backup/AssistantBackupUtils;->encryptData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string/jumbo v14, "key_express_db"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v4}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/miui/payment/backup/AssistantBackupUtils;->backupOtherSettings(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v11

    const-string/jumbo v14, "key_other"

    invoke-static {v11, v13, v14}, Lcom/miui/payment/backup/AssistantBackupUtils;->encryptData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string/jumbo v14, "key_other"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v5}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onRestoreSettings(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;I)V
    .locals 22

    invoke-virtual/range {p0 .. p1}, Lcom/miui/payment/backup/PaymentCloudBackupImpl;->getCurrentVersion(Landroid/content/Context;)I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, p3

    if-ne v0, v1, :cond_5

    const-string/jumbo v19, "key_stamp"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    check-cast v18, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;

    invoke-virtual/range {v18 .. v18}, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    const-string/jumbo v19, "key_payment_db"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    check-cast v16, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;

    invoke-virtual/range {v16 .. v16}, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v19, "key_payment_db"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v8, v0, v1}, Lcom/miui/payment/backup/AssistantBackupUtils;->decryptData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-static/range {p1 .. p1}, Lnet/sqlcipher/database/SQLiteDatabase;->loadLibs(Landroid/content/Context;)V

    invoke-static/range {p1 .. p1}, Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;

    move-result-object v12

    invoke-static/range {p1 .. p1}, Lcom/miui/payment/PaymentPrefs;->getDatabasePassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;->getWritableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v15}, Lcom/miui/payment/backup/DbUtils;->json2db(Lnet/sqlcipher/database/SQLiteDatabase;Lorg/json/JSONObject;)I

    :cond_0
    const-string/jumbo v19, "key_assistant_db"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v4

    instance-of v0, v4, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    check-cast v4, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;

    invoke-virtual {v4}, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v19, "key_assistant_db"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v5, v0, v1}, Lcom/miui/payment/backup/AssistantBackupUtils;->decryptData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/provider/database/DatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/personalassistant/provider/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v2}, Lcom/miui/payment/backup/DbUtils;->json2db(Landroid/database/sqlite/SQLiteDatabase;Lorg/json/JSONObject;)I

    :cond_1
    const-string/jumbo v19, "key_express_db"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v11

    instance-of v0, v11, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    check-cast v11, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;

    invoke-virtual {v11}, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v19, "key_express_db"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v6, v0, v1}, Lcom/miui/payment/backup/AssistantBackupUtils;->decryptData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/miui/personalassistant/express/db/ExpressDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lcom/miui/payment/backup/DbUtils;->json2db(Landroid/database/sqlite/SQLiteDatabase;Lorg/json/JSONObject;)I

    :cond_2
    const-string/jumbo v19, "key_other"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v13

    instance-of v0, v13, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    check-cast v13, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;

    invoke-virtual {v13}, Lcom/xiaomi/settingsdk/backup/data/KeyStringSettingItem;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v19, "key_other"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v7, v0, v1}, Lcom/miui/payment/backup/AssistantBackupUtils;->decryptData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/miui/payment/backup/AssistantBackupUtils;->restoreOtherSettings(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/miui/payment/backup/AssistantBackupUtils;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "packageVersion = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", cannot restore, current version is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/miui/payment/log/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
