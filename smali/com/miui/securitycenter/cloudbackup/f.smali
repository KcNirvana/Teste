.class public Lcom/miui/securitycenter/cloudbackup/f;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/securitycenter/cloudbackup/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/securitycenter/cloudbackup/f;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bqt(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 15

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v14, 0x1

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "type = ? OR type = ? "

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x0

    aput-object v5, v4, v13

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v14

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "sim_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string/jumbo v3, "type"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v14, v3, :cond_1

    if-ne v2, v14, :cond_0

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v2, Lcom/miui/securitycenter/cloudbackup/f;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Get keyword list JSON failed. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_1
    :try_start_2
    const-string/jumbo v0, "CKAntispamEnable"

    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamEnableForSim(Landroid/content/Context;I)Z

    move-result v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "CKNotificationShowType"

    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->getNotificationType(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "CKStrangerSmsModes"

    const-string/jumbo v1, "stranger_sms_mode"

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Lcom/miui/antispam/db/a;->YP(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "CKStrangerCallModes"

    const-string/jumbo v1, "stranger_call_mode"

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Lcom/miui/antispam/db/a;->YP(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "CKContactSmsModes"

    const-string/jumbo v1, "contact_sms_mode"

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Lcom/miui/antispam/db/a;->YP(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "CKContactCallModes"

    const-string/jumbo v1, "contact_call_mode"

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Lcom/miui/antispam/db/a;->YP(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "CKServiceSmsModes"

    const-string/jumbo v1, "service_sms_mode"

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Lcom/miui/antispam/db/a;->YP(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "CKEmptyCallModes"

    const-string/jumbo v1, "empty_call_mode"

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Lcom/miui/antispam/db/a;->YP(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "CKOverseaCallModes"

    const-string/jumbo v1, "oversea_call_mode"

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Lcom/miui/antispam/db/a;->YP(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "CKFraud"

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/miui/antispam/db/a;->YQ(Landroid/content/Context;I)Z

    move-result v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "CKAgent"

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/miui/antispam/db/a;->YR(Landroid/content/Context;I)Z

    move-result v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "CKSell"

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/miui/antispam/db/a;->YS(Landroid/content/Context;I)Z

    move-result v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "CKHarass"

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/miui/antispam/db/a;->YT(Landroid/content/Context;I)Z

    move-result v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "CKRepeatedMarkNum"

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/miui/antispam/db/a;->YU(I)Z

    move-result v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "CKCallTransfer"

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/miui/antispam/db/a;->YV(I)Z

    move-result v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "CKKeywordsBlack"

    invoke-virtual {v7, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "CKKeywordsWhite"

    invoke-virtual {v7, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "CKAntispamEnable"

    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamEnableForSim(Landroid/content/Context;I)Z

    move-result v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "CKNotificationShowType"

    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->getNotificationType(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "CKStrangerSmsModes"

    const-string/jumbo v1, "stranger_sms_mode"

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Lcom/miui/antispam/db/a;->YP(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "CKStrangerCallModes"

    const-string/jumbo v1, "stranger_call_mode"

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Lcom/miui/antispam/db/a;->YP(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "CKContactSmsModes"

    const-string/jumbo v1, "contact_sms_mode"

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Lcom/miui/antispam/db/a;->YP(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "CKContactCallModes"

    const-string/jumbo v1, "contact_call_mode"

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Lcom/miui/antispam/db/a;->YP(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "CKServiceSmsModes"

    const-string/jumbo v1, "service_sms_mode"

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Lcom/miui/antispam/db/a;->YP(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "CKEmptyCallModes"

    const-string/jumbo v1, "empty_call_mode"

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Lcom/miui/antispam/db/a;->YP(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "CKOverseaCallModes"

    const-string/jumbo v1, "oversea_call_mode"

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Lcom/miui/antispam/db/a;->YP(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "CKFraud"

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/miui/antispam/db/a;->YQ(Landroid/content/Context;I)Z

    move-result v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "CKAgent"

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/miui/antispam/db/a;->YR(Landroid/content/Context;I)Z

    move-result v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "CKSell"

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/miui/antispam/db/a;->YS(Landroid/content/Context;I)Z

    move-result v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "CKHarass"

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/miui/antispam/db/a;->YT(Landroid/content/Context;I)Z

    move-result v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "CKRepeatedMarkNum"

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/miui/antispam/db/a;->YU(I)Z

    move-result v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "CKCallTransfer"

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/miui/antispam/db/a;->YV(I)Z

    move-result v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "CKKeywordsBlack"

    invoke-virtual {v8, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "CKKeywordsWhite"

    invoke-virtual {v8, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "sim_id_1"

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "sim_id_2"

    invoke-virtual {v6, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "CKAutoUpdateLibrary"

    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isSMSClassifierAutoUpdate(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "CKSimsShareSettings"

    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamSettingsSharedForSims(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    return-object v6

    :cond_0
    :try_start_3
    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    if-ne v2, v14, :cond_2

    :try_start_4
    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_3
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    sget-object v1, Lcom/miui/securitycenter/cloudbackup/f;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Get mode JSON failed. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static bqu(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Lmiui/yellowpage/YellowPageUtils;->isYellowPageEnable(Landroid/content/Context;)Z

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v2, "sim_id_1"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string/jumbo v2, "sim_id_1"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v2, "CKAntispamEnable"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "CKAntispamEnable"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    const/4 v5, 0x1

    invoke-static {p0, v5, v2}, Landroid/provider/MiuiSettings$AntiSpam;->setAntiSpamEnableForSim(Landroid/content/Context;IZ)V

    :cond_1
    const-string/jumbo v2, "CKNotificationShowType"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "CKNotificationShowType"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x1

    invoke-static {p0, v2, v5}, Landroid/provider/MiuiSettings$AntiSpam;->setNotificationType(Landroid/content/Context;II)V

    :cond_2
    const-string/jumbo v2, "CKStrangerSmsModes"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "stranger_sms_mode"

    const-string/jumbo v5, "CKStrangerSmsModes"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    invoke-static {p0, v2, v6, v5}, Lcom/miui/antispam/db/a;->Zb(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_3
    const-string/jumbo v2, "CKStrangerCallModes"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "stranger_call_mode"

    const-string/jumbo v5, "CKStrangerCallModes"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    invoke-static {p0, v2, v6, v5}, Lcom/miui/antispam/db/a;->Zb(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_4
    const-string/jumbo v2, "CKContactSmsModes"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "contact_sms_mode"

    const-string/jumbo v5, "CKContactSmsModes"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    invoke-static {p0, v2, v6, v5}, Lcom/miui/antispam/db/a;->Zb(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_5
    const-string/jumbo v2, "CKContactCallModes"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "contact_call_mode"

    const-string/jumbo v5, "CKContactCallModes"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    invoke-static {p0, v2, v6, v5}, Lcom/miui/antispam/db/a;->Zb(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_6
    const-string/jumbo v2, "CKServiceSmsModes"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "service_sms_mode"

    const-string/jumbo v5, "CKServiceSmsModes"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    invoke-static {p0, v2, v6, v5}, Lcom/miui/antispam/db/a;->Zb(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_7
    const-string/jumbo v2, "CKEmptyCallModes"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string/jumbo v2, "empty_call_mode"

    const-string/jumbo v5, "CKEmptyCallModes"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    invoke-static {p0, v2, v6, v5}, Lcom/miui/antispam/db/a;->Zb(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_8
    const-string/jumbo v2, "CKOverseaCallModes"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string/jumbo v2, "oversea_call_mode"

    const-string/jumbo v5, "CKOverseaCallModes"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    invoke-static {p0, v2, v6, v5}, Lcom/miui/antispam/db/a;->Zb(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_9
    const-string/jumbo v2, "CKFraud"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo v2, "CKFraud"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v2, v1

    :goto_0
    const/4 v5, 0x1

    invoke-static {p0, v5, v2}, Lcom/miui/antispam/db/a;->Ze(Landroid/content/Context;IZ)V

    :cond_a
    const-string/jumbo v2, "CKAgent"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string/jumbo v2, "CKAgent"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    move v2, v1

    :goto_1
    const/4 v5, 0x1

    invoke-static {p0, v5, v2}, Lcom/miui/antispam/db/a;->Zf(Landroid/content/Context;IZ)V

    :cond_b
    const-string/jumbo v2, "CKSell"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string/jumbo v2, "CKSell"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    move v2, v1

    :goto_2
    const/4 v5, 0x1

    invoke-static {p0, v5, v2}, Lcom/miui/antispam/db/a;->Zg(Landroid/content/Context;IZ)V

    :cond_c
    const-string/jumbo v2, "CKHarass"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string/jumbo v2, "CKHarass"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    move v2, v1

    :goto_3
    const/4 v5, 0x1

    invoke-static {p0, v5, v2}, Lcom/miui/antispam/db/a;->Zh(Landroid/content/Context;IZ)V

    :cond_d
    const-string/jumbo v2, "CKRepeatedMarkNum"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string/jumbo v2, "CKRepeatedMarkNum"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    const/4 v5, 0x1

    invoke-static {v5, v2}, Lcom/miui/antispam/db/a;->Zd(IZ)V

    :cond_e
    const-string/jumbo v2, "CKCallTransfer"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string/jumbo v2, "CKCallTransfer"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    const/4 v5, 0x1

    invoke-static {v5, v2}, Lcom/miui/antispam/db/a;->Zc(IZ)V

    :cond_f
    const-string/jumbo v2, "CKKeywordsBlack"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string/jumbo v2, "CKKeywordsBlack"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v2, v0

    :goto_4
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_15

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {p0, v6, v7, v8}, Lmiui/provider/ExtraTelephony;->containsKeywords(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_10

    sget-object v7, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string/jumbo v8, "data"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string/jumbo v7, "sim_id"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string/jumbo v7, "type"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_11
    move v2, v0

    goto/16 :goto_0

    :cond_12
    move v2, v0

    goto/16 :goto_1

    :cond_13
    move v2, v0

    goto/16 :goto_2

    :cond_14
    move v2, v0

    goto/16 :goto_3

    :cond_15
    const-string/jumbo v2, "CKKeywordsWhite"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string/jumbo v2, "CKKeywordsWhite"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v2, v0

    :goto_5
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_17

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    const/4 v7, 0x1

    invoke-static {p0, v5, v6, v7}, Lmiui/provider/ExtraTelephony;->containsKeywords(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_16

    sget-object v6, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string/jumbo v7, "data"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string/jumbo v6, "sim_id"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string/jumbo v6, "type"

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_17
    const-string/jumbo v2, "sim_id_2"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const-string/jumbo v2, "sim_id_2"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v2, "CKAntispamEnable"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string/jumbo v2, "CKAntispamEnable"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    const/4 v5, 0x2

    invoke-static {p0, v5, v2}, Landroid/provider/MiuiSettings$AntiSpam;->setAntiSpamEnableForSim(Landroid/content/Context;IZ)V

    :cond_18
    const-string/jumbo v2, "CKNotificationShowType"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string/jumbo v2, "CKNotificationShowType"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x2

    invoke-static {p0, v2, v5}, Landroid/provider/MiuiSettings$AntiSpam;->setNotificationType(Landroid/content/Context;II)V

    :cond_19
    const-string/jumbo v2, "CKStrangerSmsModes"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string/jumbo v2, "stranger_sms_mode"

    const-string/jumbo v5, "CKStrangerSmsModes"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    invoke-static {p0, v2, v6, v5}, Lcom/miui/antispam/db/a;->Zb(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_1a
    const-string/jumbo v2, "CKStrangerCallModes"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string/jumbo v2, "stranger_call_mode"

    const-string/jumbo v5, "CKStrangerCallModes"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    invoke-static {p0, v2, v6, v5}, Lcom/miui/antispam/db/a;->Zb(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_1b
    const-string/jumbo v2, "CKContactSmsModes"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string/jumbo v2, "contact_sms_mode"

    const-string/jumbo v5, "CKContactSmsModes"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    invoke-static {p0, v2, v6, v5}, Lcom/miui/antispam/db/a;->Zb(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_1c
    const-string/jumbo v2, "CKContactCallModes"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string/jumbo v2, "contact_call_mode"

    const-string/jumbo v5, "CKContactCallModes"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    invoke-static {p0, v2, v6, v5}, Lcom/miui/antispam/db/a;->Zb(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_1d
    const-string/jumbo v2, "CKServiceSmsModes"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string/jumbo v2, "service_sms_mode"

    const-string/jumbo v5, "CKServiceSmsModes"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    invoke-static {p0, v2, v6, v5}, Lcom/miui/antispam/db/a;->Zb(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_1e
    const-string/jumbo v2, "CKEmptyCallModes"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string/jumbo v2, "empty_call_mode"

    const-string/jumbo v5, "CKEmptyCallModes"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    invoke-static {p0, v2, v6, v5}, Lcom/miui/antispam/db/a;->Zb(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_1f
    const-string/jumbo v2, "CKOverseaCallModes"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    const-string/jumbo v2, "oversea_call_mode"

    const-string/jumbo v5, "CKOverseaCallModes"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    invoke-static {p0, v2, v6, v5}, Lcom/miui/antispam/db/a;->Zb(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_20
    const-string/jumbo v2, "CKFraud"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    const-string/jumbo v2, "CKFraud"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    move v2, v1

    :goto_6
    const/4 v5, 0x2

    invoke-static {p0, v5, v2}, Lcom/miui/antispam/db/a;->Ze(Landroid/content/Context;IZ)V

    :cond_21
    const-string/jumbo v2, "CKAgent"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    const-string/jumbo v2, "CKAgent"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    move v2, v1

    :goto_7
    const/4 v5, 0x2

    invoke-static {p0, v5, v2}, Lcom/miui/antispam/db/a;->Zf(Landroid/content/Context;IZ)V

    :cond_22
    const-string/jumbo v2, "CKSell"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    const-string/jumbo v2, "CKSell"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    move v2, v1

    :goto_8
    const/4 v5, 0x2

    invoke-static {p0, v5, v2}, Lcom/miui/antispam/db/a;->Zg(Landroid/content/Context;IZ)V

    :cond_23
    const-string/jumbo v2, "CKHarass"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    const-string/jumbo v2, "CKHarass"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    :goto_9
    const/4 v2, 0x2

    invoke-static {p0, v2, v1}, Lcom/miui/antispam/db/a;->Zh(Landroid/content/Context;IZ)V

    :cond_24
    const-string/jumbo v1, "CKRepeatedMarkNum"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    const-string/jumbo v1, "CKRepeatedMarkNum"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/miui/antispam/db/a;->Zd(IZ)V

    :cond_25
    const-string/jumbo v1, "CKCallTransfer"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    const-string/jumbo v1, "CKCallTransfer"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/miui/antispam/db/a;->Zc(IZ)V

    :cond_26
    const-string/jumbo v1, "CKKeywordsBlack"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string/jumbo v1, "CKKeywordsBlack"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v1, v0

    :goto_a
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_2c

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-static {p0, v5, v6, v7}, Lmiui/provider/ExtraTelephony;->containsKeywords(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_27

    sget-object v6, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string/jumbo v7, "data"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string/jumbo v6, "sim_id"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string/jumbo v6, "type"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_28
    move v2, v0

    goto/16 :goto_6

    :cond_29
    move v2, v0

    goto/16 :goto_7

    :cond_2a
    move v2, v0

    goto/16 :goto_8

    :cond_2b
    move v1, v0

    goto/16 :goto_9

    :cond_2c
    const-string/jumbo v1, "CKKeywordsWhite"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string/jumbo v1, "CKKeywordsWhite"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    :goto_b
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2e

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x2

    invoke-static {p0, v2, v4, v5}, Lmiui/provider/ExtraTelephony;->containsKeywords(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_2d

    sget-object v4, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string/jumbo v5, "data"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v4, "sim_id"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v4, "type"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_2e
    const-string/jumbo v0, "CKAutoUpdateLibrary"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string/jumbo v0, "CKAutoUpdateLibrary"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$AntiSpam;->setSMSClassifierAutoUpdate(Landroid/content/Context;Z)V

    :cond_2f
    const-string/jumbo v0, "CKSimsShareSettings"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string/jumbo v0, "CKSimsShareSettings"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$AntiSpam;->setAntiSpamSettingsSharedForSims(Landroid/content/Context;Z)V

    :cond_30
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "antispam"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_c
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/securitycenter/cloudbackup/f;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "restore antispam settings JSON failed. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    :catch_1
    move-exception v0

    sget-object v1, Lcom/miui/securitycenter/cloudbackup/f;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "restore antispam settings JSON failed. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method
