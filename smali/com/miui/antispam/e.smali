.class public Lcom/miui/antispam/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/antispam/policy/e;


# static fields
.field private static volatile aaO:Lcom/miui/antispam/e;


# instance fields
.field private aaN:Lcom/miui/antispam/policy/f;

.field private aaP:Ljava/util/TreeMap;

.field private aaQ:Lcom/miui/antispam/policy/a;

.field private mContext:Landroid/content/Context;

.field private mJudge:Lcom/miui/antispam/policy/PolicyUtils/b;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/TreeMap;

    new-instance v2, Lcom/miui/antispam/f;

    invoke-direct {v2, p0}, Lcom/miui/antispam/f;-><init>(Lcom/miui/antispam/e;)V

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/miui/antispam/e;->aaP:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antispam/e;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/miui/antispam/policy/PolicyUtils/b;

    iget-object v2, p0, Lcom/miui/antispam/e;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/antispam/policy/PolicyUtils/b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/antispam/e;->mJudge:Lcom/miui/antispam/policy/PolicyUtils/b;

    invoke-static {}, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->values()[Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    :try_start_0
    iget-object v0, v4, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->classType:Ljava/lang/Class;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Lcom/miui/antispam/policy/e;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-class v6, Lcom/miui/antispam/policy/PolicyUtils/b;

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const-class v6, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    const/4 v7, 0x3

    aput-object v6, v5, v7

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/miui/antispam/e;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p0, v5, v6

    iget-object v6, p0, Lcom/miui/antispam/e;->mJudge:Lcom/miui/antispam/policy/PolicyUtils/b;

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const/4 v6, 0x3

    aput-object v4, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/policy/c;

    iget-object v5, p0, Lcom/miui/antispam/e;->aaP:Ljava/util/TreeMap;

    invoke-virtual {v5, v4, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/miui/antispam/policy/f;

    iget-object v1, p0, Lcom/miui/antispam/e;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/antispam/e;->mJudge:Lcom/miui/antispam/policy/PolicyUtils/b;

    invoke-direct {v0, v1, v2}, Lcom/miui/antispam/policy/f;-><init>(Landroid/content/Context;Lcom/miui/antispam/policy/PolicyUtils/b;)V

    iput-object v0, p0, Lcom/miui/antispam/e;->aaN:Lcom/miui/antispam/policy/f;

    new-instance v0, Lcom/miui/antispam/policy/a;

    iget-object v1, p0, Lcom/miui/antispam/e;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/antispam/policy/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/antispam/e;->aaQ:Lcom/miui/antispam/policy/a;

    iget-object v0, p0, Lcom/miui/antispam/e;->mJudge:Lcom/miui/antispam/policy/PolicyUtils/b;

    invoke-virtual {v0}, Lcom/miui/antispam/policy/PolicyUtils/b;->init()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/antispam/e;
    .locals 2

    const-class v1, Lcom/miui/antispam/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/antispam/e;->aaO:Lcom/miui/antispam/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/antispam/e;

    invoke-direct {v0, p0}, Lcom/miui/antispam/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/antispam/e;->aaO:Lcom/miui/antispam/e;

    :cond_0
    sget-object v0, Lcom/miui/antispam/e;->aaO:Lcom/miui/antispam/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public Xm(Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;)Lcom/miui/antispam/policy/c;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/e;->aaP:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/policy/c;

    return-object v0
.end method

.method public adA(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/e;->mJudge:Lcom/miui/antispam/policy/PolicyUtils/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/antispam/policy/PolicyUtils/b;->WT(Ljava/lang/String;II)V

    return-void
.end method

.method public adB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "select * from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string/jumbo v2, "number"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "type"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string/jumbo v4, "sim_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iget-object v5, p0, Lcom/miui/antispam/e;->mJudge:Lcom/miui/antispam/policy/PolicyUtils/b;

    invoke-virtual {v5, v2, v3, v4}, Lcom/miui/antispam/policy/PolicyUtils/b;->WU(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public adC(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "select * from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string/jumbo v2, "data"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "type"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string/jumbo v4, "sim_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iget-object v5, p0, Lcom/miui/antispam/e;->mJudge:Lcom/miui/antispam/policy/PolicyUtils/b;

    invoke-virtual {v5, v2, v3, v4}, Lcom/miui/antispam/policy/PolicyUtils/b;->WS(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public adD(Lcom/miui/antispam/policy/PolicyUtils/a;)I
    .locals 6

    const/4 v0, 0x0

    const-string/jumbo v1, "PolicyManager"

    const-string/jumbo v2, "start call policy judge"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/antispam/e;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/miui/antispam/policy/PolicyUtils/a;->Yq:I

    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamEnableForSim(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/miui/antispam/e;->aaP:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antispam/policy/c;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    iget-object v2, v2, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->interceptType:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    sget-object v5, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;->XS:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    if-eq v2, v5, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    iget-object v0, v0, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->interceptType:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    sget-object v2, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;->XR:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    if-ne v0, v2, :cond_3

    :cond_0
    invoke-virtual {v1, p1}, Lcom/miui/antispam/policy/c;->handleData(Lcom/miui/antispam/policy/PolicyUtils/a;)Lcom/miui/antispam/policy/d;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v3, v0, Lcom/miui/antispam/policy/d;->YL:I

    iget-boolean v0, v0, Lcom/miui/antispam/policy/d;->YK:Z

    if-eqz v0, :cond_4

    :cond_1
    :goto_1
    const-string/jumbo v0, "PolicyManager"

    const-string/jumbo v1, "conventional call policy judge finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/antispam/e;->aaN:Lcom/miui/antispam/policy/f;

    invoke-virtual {v0, v3, p1}, Lcom/miui/antispam/policy/f;->Xn(ILcom/miui/antispam/policy/PolicyUtils/a;)Lcom/miui/antispam/policy/g;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/miui/antispam/policy/g;->YO:Z

    if-eqz v1, :cond_2

    iget v3, v0, Lcom/miui/antispam/policy/g;->YN:I

    :cond_2
    const-string/jumbo v0, "PolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "all call policy judge finished : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    move v0, v3

    :goto_2
    move v3, v0

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_2

    :cond_5
    move v3, v0

    goto :goto_1
.end method

.method public adE(Lcom/miui/antispam/policy/PolicyUtils/a;)I
    .locals 12

    const/4 v0, 0x0

    const-string/jumbo v1, "PolicyManager"

    const-string/jumbo v2, "start sms policy judge"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/miui/antispam/e;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/miui/antispam/policy/PolicyUtils/a;->Yq:I

    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamEnableForSim(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/miui/antispam/e;->aaP:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antispam/policy/c;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    iget-object v2, v2, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->interceptType:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    sget-object v7, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;->XT:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    if-eq v2, v7, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    iget-object v2, v2, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->interceptType:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    sget-object v7, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;->XR:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    if-ne v2, v7, :cond_5

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v1, p1}, Lcom/miui/antispam/policy/c;->handleData(Lcom/miui/antispam/policy/PolicyUtils/a;)Lcom/miui/antispam/policy/d;

    move-result-object v1

    if-eqz v1, :cond_6

    iget v3, v1, Lcom/miui/antispam/policy/d;->YL:I

    iget-boolean v1, v1, Lcom/miui/antispam/policy/d;->YK:Z

    if-eqz v1, :cond_6

    :cond_1
    :goto_1
    const-string/jumbo v0, "PolicyManager"

    const-string/jumbo v1, "conventional sms policy judge finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/antispam/e;->aaN:Lcom/miui/antispam/policy/f;

    invoke-virtual {v0, v3, p1}, Lcom/miui/antispam/policy/f;->Xn(ILcom/miui/antispam/policy/PolicyUtils/a;)Lcom/miui/antispam/policy/g;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/miui/antispam/policy/g;->YO:Z

    if-eqz v1, :cond_2

    iget v3, v0, Lcom/miui/antispam/policy/g;->YN:I

    :cond_2
    iget-object v0, p0, Lcom/miui/antispam/e;->aaQ:Lcom/miui/antispam/policy/a;

    invoke-virtual {v0, v3, p1}, Lcom/miui/antispam/policy/a;->Xk(ILcom/miui/antispam/policy/PolicyUtils/a;)Lcom/miui/antispam/policy/b;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lcom/miui/antispam/policy/b;->YI:Z

    if-eqz v1, :cond_3

    iget v3, v0, Lcom/miui/antispam/policy/b;->YH:I

    :cond_3
    invoke-static {v3}, Lmiui/provider/ExtraTelephony;->getRealBlockType(I)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_4

    iget-object v1, p0, Lcom/miui/antispam/e;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/miui/antispam/policy/PolicyUtils/a;->Ys:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/miui/antispam/util/h;->Yb(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_4
    const-string/jumbo v0, "PolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "all sms policy judge finished : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Lcom/miui/antispam/a/a;->Yt(J)V

    return v3

    :cond_5
    move v0, v3

    :goto_2
    move v3, v0

    goto/16 :goto_0

    :cond_6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    iget v0, v0, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->weight:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v8, v10, v8

    invoke-static {v0, v8, v9}, Lcom/miui/antispam/a/a;->Yv(IJ)V

    move v0, v3

    goto :goto_2

    :cond_7
    move v3, v0

    goto :goto_1
.end method

.method public adF(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/e;->aaQ:Lcom/miui/antispam/policy/a;

    invoke-virtual {v0, p1, p2}, Lcom/miui/antispam/policy/a;->Xj(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public adG(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "select * from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "number"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "type"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string/jumbo v3, "state"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string/jumbo v4, "sim_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iget-object v5, p0, Lcom/miui/antispam/e;->mJudge:Lcom/miui/antispam/policy/PolicyUtils/b;

    invoke-virtual {v5, v0, v3, v2, v4}, Lcom/miui/antispam/policy/PolicyUtils/b;->WV(Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public adH(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "select * from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "type"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string/jumbo v3, "sim_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iget-object v4, p0, Lcom/miui/antispam/e;->mJudge:Lcom/miui/antispam/policy/PolicyUtils/b;

    invoke-virtual {v4, v0, v2, v3}, Lcom/miui/antispam/policy/PolicyUtils/b;->WT(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public ady()Lcom/miui/antispam/policy/PolicyUtils/b;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/e;->mJudge:Lcom/miui/antispam/policy/PolicyUtils/b;

    return-object v0
.end method

.method public adz(Ljava/lang/String;III)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/e;->mJudge:Lcom/miui/antispam/policy/PolicyUtils/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/antispam/policy/PolicyUtils/b;->WV(Ljava/lang/String;III)V

    return-void
.end method
