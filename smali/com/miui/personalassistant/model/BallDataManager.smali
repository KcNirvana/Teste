.class public Lcom/miui/personalassistant/model/BallDataManager;
.super Ljava/lang/Object;
.source "BallDataManager.java"


# static fields
.field public static final DB_UNIQUEID:Ljava/lang/String; = "0"

.field private static final MAX_RECENT_LIST:I = 0xa

.field private static final TAG:Ljava/lang/String; = "BallDataManager"

.field private static mInstance:Lcom/miui/personalassistant/model/BallDataManager;


# instance fields
.field private worldCup:Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/personalassistant/model/BallDataManager;->worldCup:Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;

    return-void
.end method

.method private getBallTeams(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 10

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move-object v4, v3

    :goto_0
    return-object v4

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/personalassistant/model/BallDataManager;->queryData(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v4, v3

    goto :goto_0

    :cond_2
    :try_start_0
    const-string/jumbo v7, "key_football"

    invoke-static {p2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-class v7, Lcom/miui/personalassistant/model/FootballTeam;

    invoke-static {v5, v7}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/util/ArrayList;

    move-object v3, v0

    const-string/jumbo v7, "BallDataManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getBallTeams worldCup = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/personalassistant/model/BallDataManager;->worldCup:Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/miui/personalassistant/model/BallDataManager;->worldCup:Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;

    if-nez v7, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/personalassistant/model/FootballTeam;

    invoke-virtual {v6}, Lcom/miui/personalassistant/model/FootballTeam;->isWorldCupTeam()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v7, "BallDataManager"

    const-string/jumbo v8, "Exception"

    invoke-static {v7, v8, v1}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    move-object v4, v3

    goto :goto_0

    :cond_5
    :try_start_1
    const-string/jumbo v7, "key_basketball"

    invoke-static {p2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-class v7, Lcom/miui/personalassistant/model/BasketballTeam;

    invoke-static {v5, v7}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/util/ArrayList;

    move-object v3, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private getDbPackageName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "com.miui.personalassistant."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string/jumbo v0, "_recent"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getInstance()Lcom/miui/personalassistant/model/BallDataManager;
    .locals 2

    sget-object v0, Lcom/miui/personalassistant/model/BallDataManager;->mInstance:Lcom/miui/personalassistant/model/BallDataManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/personalassistant/model/BallDataManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/personalassistant/model/BallDataManager;->mInstance:Lcom/miui/personalassistant/model/BallDataManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/personalassistant/model/BallDataManager;

    invoke-direct {v0}, Lcom/miui/personalassistant/model/BallDataManager;-><init>()V

    sput-object v0, Lcom/miui/personalassistant/model/BallDataManager;->mInstance:Lcom/miui/personalassistant/model/BallDataManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/miui/personalassistant/model/BallDataManager;->mInstance:Lcom/miui/personalassistant/model/BallDataManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private insertData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    invoke-static {p1}, Lcom/miui/personalassistant/provider/AssistantContentStorage;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/provider/AssistantContentStorage;

    move-result-object v0

    invoke-direct {p0, p3, p4}, Lcom/miui/personalassistant/model/BallDataManager;->getDbPackageName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "0"

    const-string/jumbo v3, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/miui/personalassistant/provider/AssistantContentStorage;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)Z

    return-void
.end method

.method private isBallInList(Lcom/miui/personalassistant/model/BaseBallTeam;Ljava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/miui/personalassistant/model/BaseBallTeam;",
            ">(TT;",
            "Ljava/util/ArrayList",
            "<TT;>;)I"
        }
    .end annotation

    const/4 v2, -0x1

    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/model/BaseBallTeam;

    invoke-virtual {v1}, Lcom/miui/personalassistant/model/BaseBallTeam;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/BaseBallTeam;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private queryData(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/miui/personalassistant/model/BallDataManager;->getDbPackageName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/miui/personalassistant/provider/AssistantContentStorage;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/provider/AssistantContentStorage;

    move-result-object v8

    const-string/jumbo v9, ""

    invoke-virtual {v8, v3, v9}, Lcom/miui/personalassistant/provider/AssistantContentStorage;->query(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_3

    :cond_0
    const/4 v4, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    return-object v4

    :cond_3
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "data"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "timestamp"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/miui/personalassistant/util/CryptUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string/jumbo v8, "BallDataManager"

    const-string/jumbo v9, "Exception"

    invoke-static {v8, v9, v2}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v8

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v8
.end method


# virtual methods
.method public getFavBallTeams(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/personalassistant/model/BallDataManager;->getBallTeams(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getFavBallTeamsIds(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/miui/personalassistant/model/BallDataManager;->getFavBallTeams(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/personalassistant/model/BaseBallTeam;

    invoke-virtual {v2}, Lcom/miui/personalassistant/model/BaseBallTeam;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getRecentBallTeams(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/personalassistant/model/BallDataManager;->getBallTeams(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getWorldCup()Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/model/BallDataManager;->worldCup:Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;

    return-object v0
.end method

.method public setFavBallTeams(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/miui/personalassistant/model/BaseBallTeam;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const/16 v7, 0xa

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4, p3, p4}, Lcom/miui/personalassistant/model/BallDataManager;->insertData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/miui/personalassistant/model/BallDataManager;->getInstance()Lcom/miui/personalassistant/model/BallDataManager;

    move-result-object v4

    invoke-virtual {v4, p1, p3}, Lcom/miui/personalassistant/model/BallDataManager;->getRecentBallTeams(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/personalassistant/model/BaseBallTeam;

    invoke-direct {p0, v3, v1}, Lcom/miui/personalassistant/model/BallDataManager;->isBallInList(Lcom/miui/personalassistant/model/BaseBallTeam;Ljava/util/ArrayList;)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v1, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v7, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v6, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v2

    :cond_5
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, p1, v4, p3, v5}, Lcom/miui/personalassistant/model/BallDataManager;->insertData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setWorldCup(Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/model/BallDataManager;->worldCup:Lcom/miui/home/launcher/assistant/module/model/FootballWorldCup;

    return-void
.end method
