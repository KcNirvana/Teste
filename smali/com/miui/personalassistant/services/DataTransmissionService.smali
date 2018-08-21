.class public Lcom/miui/personalassistant/services/DataTransmissionService;
.super Landroid/app/Service;
.source "DataTransmissionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/services/DataTransmissionService$DataTransmissionServiceBinder;
    }
.end annotation


# static fields
.field private static final BIND_MAX:I = 0x3c

.field private static final BIND_TIME:I = 0xea60

.field private static final CONTENT:Ljava/lang/String; = "content"

.field private static final PACKAGE:Ljava/lang/String; = "package"

.field private static final SIGN:Ljava/lang/String; = "signature"

.field private static final TAG:Ljava/lang/String; = "DataTransmissionService"

.field private static final TESTSTR:Ljava/lang/String; = "1"

.field private static final TIMESTAMP:Ljava/lang/String; = "timestamp"


# instance fields
.field private mDataTransmissionServiceBinder:Lcom/miui/personalassistant/services/DataTransmissionService$DataTransmissionServiceBinder;

.field private mSecurityManager:Lcom/miui/personalassistant/hybrid/SecurityManager;

.field private packageCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private timeStmap:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/miui/personalassistant/services/DataTransmissionService$DataTransmissionServiceBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/personalassistant/services/DataTransmissionService$DataTransmissionServiceBinder;-><init>(Lcom/miui/personalassistant/services/DataTransmissionService;Lcom/miui/personalassistant/services/DataTransmissionService$1;)V

    iput-object v0, p0, Lcom/miui/personalassistant/services/DataTransmissionService;->mDataTransmissionServiceBinder:Lcom/miui/personalassistant/services/DataTransmissionService$DataTransmissionServiceBinder;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/services/DataTransmissionService;->packageCount:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/personalassistant/services/DataTransmissionService;->timeStmap:J

    return-void
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/services/DataTransmissionService;Lmiui/assistant/assist/AssistContent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/services/DataTransmissionService;->reportAssistData(Lmiui/assistant/assist/AssistContent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/services/DataTransmissionService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/personalassistant/services/DataTransmissionService;->delAssistData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/services/DataTransmissionService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/services/DataTransmissionService;->delAllAssistData(Ljava/lang/String;)V

    return-void
.end method

.method private delAllAssistData(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/personalassistant/provider/AssistantContentStorage;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/provider/AssistantContentStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/personalassistant/provider/AssistantContentStorage;->delAll(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private delAssistData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/personalassistant/provider/AssistantContentStorage;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/provider/AssistantContentStorage;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/personalassistant/provider/AssistantContentStorage;->del(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private isValid(Landroid/content/Intent;)Z
    .locals 22

    const/4 v11, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/personalassistant/services/DataTransmissionService;->timeStmap:J

    move-wide/from16 v18, v0

    const-wide/32 v20, 0xea60

    add-long v18, v18, v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    cmp-long v17, v18, v20

    if-gez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/personalassistant/services/DataTransmissionService;->packageCount:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/miui/personalassistant/services/DataTransmissionService;->timeStmap:J

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    const-string/jumbo v18, "package"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/personalassistant/services/DataTransmissionService;->packageCount:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/personalassistant/services/DataTransmissionService;->packageCount:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :cond_1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v18, 0x3c

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    const/16 v17, 0x0

    :goto_0
    return v17

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/personalassistant/services/DataTransmissionService;->packageCount:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    const-string/jumbo v18, "signature"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    const-string/jumbo v18, "content"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    const-string/jumbo v18, "timestamp"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    new-instance v4, Lcom/miui/personalassistant/hybrid/Config;

    invoke-direct {v4}, Lcom/miui/personalassistant/hybrid/Config;-><init>()V

    new-instance v12, Lcom/miui/personalassistant/hybrid/Security;

    invoke-direct {v12}, Lcom/miui/personalassistant/hybrid/Security;-><init>()V

    invoke-virtual {v12, v13}, Lcom/miui/personalassistant/hybrid/Security;->setSignature(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Lcom/miui/personalassistant/hybrid/Security;->setTimestamp(J)V

    invoke-virtual {v4, v9}, Lcom/miui/personalassistant/hybrid/Config;->setVendor(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Lcom/miui/personalassistant/hybrid/Config;->setSecurity(Lcom/miui/personalassistant/hybrid/Security;)V

    invoke-virtual {v4, v5}, Lcom/miui/personalassistant/hybrid/Config;->setContent(Ljava/lang/String;)V

    new-instance v8, Lcom/miui/personalassistant/hybrid/Feature;

    invoke-direct {v8}, Lcom/miui/personalassistant/hybrid/Feature;-><init>()V

    invoke-virtual {v8, v5}, Lcom/miui/personalassistant/hybrid/Feature;->setName(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Lcom/miui/personalassistant/hybrid/Config;->addFeature(Lcom/miui/personalassistant/hybrid/Feature;)V

    new-instance v10, Lcom/miui/personalassistant/hybrid/Permission;

    invoke-direct {v10}, Lcom/miui/personalassistant/hybrid/Permission;-><init>()V

    const-string/jumbo v17, "*"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/miui/personalassistant/hybrid/Permission;->setUri(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Lcom/miui/personalassistant/hybrid/Config;->addPermission(Lcom/miui/personalassistant/hybrid/Permission;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/personalassistant/services/DataTransmissionService;->mSecurityManager:Lcom/miui/personalassistant/hybrid/SecurityManager;

    move-object/from16 v17, v0

    if-nez v17, :cond_3

    new-instance v17, Lcom/miui/personalassistant/hybrid/SecurityManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/miui/personalassistant/hybrid/SecurityManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/personalassistant/services/DataTransmissionService;->mSecurityManager:Lcom/miui/personalassistant/hybrid/SecurityManager;

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/personalassistant/services/DataTransmissionService;->mSecurityManager:Lcom/miui/personalassistant/hybrid/SecurityManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/miui/personalassistant/hybrid/SecurityManager;->isExpired(Lcom/miui/personalassistant/hybrid/Config;)Z

    move-result v17

    if-nez v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/personalassistant/services/DataTransmissionService;->mSecurityManager:Lcom/miui/personalassistant/hybrid/SecurityManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/miui/personalassistant/hybrid/SecurityManager;->isValidSignature()Z

    move-result v11

    :cond_4
    if-nez v11, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    const-string/jumbo v18, "signature1"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    const-string/jumbo v18, "timestamp1"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual {v12, v14}, Lcom/miui/personalassistant/hybrid/Security;->setSignature(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Lcom/miui/personalassistant/hybrid/Security;->setTimestamp(J)V

    invoke-virtual {v4, v12}, Lcom/miui/personalassistant/hybrid/Config;->setSecurity(Lcom/miui/personalassistant/hybrid/Security;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/personalassistant/services/DataTransmissionService;->mSecurityManager:Lcom/miui/personalassistant/hybrid/SecurityManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/miui/personalassistant/hybrid/SecurityManager;->isExpired(Lcom/miui/personalassistant/hybrid/Config;)Z

    move-result v17

    if-nez v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/personalassistant/services/DataTransmissionService;->mSecurityManager:Lcom/miui/personalassistant/hybrid/SecurityManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/miui/personalassistant/hybrid/SecurityManager;->isValidSignature()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    :cond_5
    :goto_1
    move/from16 v17, v11

    goto/16 :goto_0

    :catch_0
    move-exception v7

    const-string/jumbo v17, "DataTransmissionService"

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private reportAssistData(Lmiui/assistant/assist/AssistContent;)V
    .locals 10

    invoke-virtual {p0}, Lcom/miui/personalassistant/services/DataTransmissionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v8, "open_personal_assistant"

    const/4 v9, 0x1

    invoke-static {v0, v8, v9}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/personalassistant/util/Util;->getProcessName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmiui/assistant/assist/AssistContent;->getStructuredData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lmiui/assistant/assist/AssistContent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v8, "package"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmiui/assistant/assist/AssistContent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v8, "unique_id"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lmiui/assistant/assist/AssistContent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v8, "group_id"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lmiui/assistant/assist/AssistContent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v8, "timestamp"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/personalassistant/provider/AssistantContentStorage;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/provider/AssistantContentStorage;

    move-result-object v0

    invoke-virtual/range {v0 .. v6}, Lcom/miui/personalassistant/provider/AssistantContentStorage;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/services/DataTransmissionService;->isValid(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/services/DataTransmissionService;->mDataTransmissionServiceBinder:Lcom/miui/personalassistant/services/DataTransmissionService$DataTransmissionServiceBinder;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    new-instance v0, Lcom/miui/personalassistant/hybrid/SecurityManager;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/hybrid/SecurityManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/personalassistant/services/DataTransmissionService;->mSecurityManager:Lcom/miui/personalassistant/hybrid/SecurityManager;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
