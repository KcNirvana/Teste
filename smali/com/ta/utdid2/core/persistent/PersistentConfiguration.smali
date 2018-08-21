.class public Lcom/ta/utdid2/core/persistent/PersistentConfiguration;
.super Ljava/lang/Object;
.source "PersistentConfiguration.java"


# static fields
.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "t"

.field private static final KEY_TIMESTAMP2:Ljava/lang/String; = "t2"


# instance fields
.field private mCanRead:Z

.field private mCanWrite:Z

.field private mConfigName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mFolderName:Ljava/lang/String;

.field private mIsLessMode:Z

.field private mIsSafety:Z

.field private mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

.field private mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

.field private mSp:Landroid/content/SharedPreferences;

.field private mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 16

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v12, ""

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mConfigName:Ljava/lang/String;

    const-string/jumbo v12, ""

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mFolderName:Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsSafety:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanRead:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanWrite:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsLessMode:Z

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsSafety:Z

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsLessMode:Z

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mConfigName:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mFolderName:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mContext:Landroid/content/Context;

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    if-eqz p1, :cond_0

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    const-string/jumbo v13, "t"

    const-wide/16 v14, 0x0

    invoke-interface {v12, v13, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    :cond_0
    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    invoke-static {v4}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanWrite:Z

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanRead:Z

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanRead:Z

    if-nez v12, :cond_1

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanWrite:Z

    if-eqz v12, :cond_2

    :cond_1
    if-eqz p1, :cond_2

    invoke-static/range {p2 .. p2}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getTransactionXMLFile(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    if-eqz v12, :cond_2

    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    const-string/jumbo v13, "t"

    const-wide/16 v14, 0x0

    invoke-interface {v12, v13, v14, v15}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    if-nez p5, :cond_c

    cmp-long v12, v8, v6

    if-lez v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_2
    cmp-long v12, v8, v6

    if-nez v12, :cond_3

    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-nez v12, :cond_6

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-nez v12, :cond_6

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsLessMode:Z

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsLessMode:Z

    if-eqz v12, :cond_6

    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-nez v12, :cond_6

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-nez v12, :cond_6

    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v12, "t2"

    invoke-interface {v3, v12, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v12}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    move-result-object v5

    const-string/jumbo v12, "t2"

    invoke-interface {v5, v12, v10, v11}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v5}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_6
    :goto_3
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v12, "mounted"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanWrite:Z

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanRead:Z

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v12, "mounted_ro"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanRead:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanWrite:Z

    goto/16 :goto_1

    :cond_9
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanWrite:Z

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanRead:Z

    goto/16 :goto_1

    :cond_a
    cmp-long v12, v8, v6

    if-gez v12, :cond_b

    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copyMySPToSP(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    goto/16 :goto_2

    :catch_1
    move-exception v12

    goto/16 :goto_2

    :cond_b
    cmp-long v12, v8, v6

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    const-string/jumbo v13, "t2"

    const-wide/16 v14, 0x0

    invoke-interface {v12, v13, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    const-string/jumbo v13, "t2"

    const-wide/16 v14, 0x0

    invoke-interface {v12, v13, v14, v15}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v12, v8, v6

    if-gez v12, :cond_d

    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-lez v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    goto/16 :goto_2

    :cond_d
    cmp-long v12, v8, v6

    if-lez v12, :cond_e

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-lez v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copyMySPToSP(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    goto/16 :goto_2

    :cond_e
    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-nez v12, :cond_f

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-lez v12, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copyMySPToSP(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    goto/16 :goto_2

    :cond_f
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-nez v12, :cond_10

    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-lez v12, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    goto/16 :goto_2

    :cond_10
    cmp-long v12, v8, v6

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    :catch_2
    move-exception v12

    goto/16 :goto_3
.end method

.method private checkSDCardXMLFile()Z
    .locals 2

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->checkFile()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->commit()Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private copyMySPToSP(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V
    .locals 8

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_3

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_3
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_4
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_5

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v1, v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_5
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_6

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_6
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V
    .locals 8

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->clear()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v3}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->commit()Z

    :cond_1
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_3

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    goto :goto_0

    :cond_3
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v3, v2, v5}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putInt(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    goto :goto_0

    :cond_4
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_5

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v3, v2, v6, v7}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    goto :goto_0

    :cond_5
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_6

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-interface {v3, v2, v5}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putFloat(Ljava/lang/String;F)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    goto :goto_0

    :cond_6
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v3, v2, v5}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putBoolean(Ljava/lang/String;Z)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    goto :goto_0
.end method

.method private getRootFolder(Ljava/lang/String;)Ljava/io/File;
    .locals 6

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "%s%s%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTransactionXMLFile(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
    .locals 3

    invoke-direct {p0, p1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getRootFolder(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initEditor()V
    .locals 1

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-boolean v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanWrite:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    :cond_1
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->checkSDCardXMLFile()Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->initEditor()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v3, "t"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->clear()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    const-string/jumbo v3, "t"

    invoke-interface {v2, v3, v0, v1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    :cond_1
    return-void
.end method

.method public commit()Z
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsLessMode:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v7, "t"

    invoke-interface {v6, v7, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v2, 0x0

    :cond_1
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mConfigName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    :cond_2
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string/jumbo v6, "mounted"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mFolderName:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getTransactionXMLFile(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mConfigName:Ljava/lang/String;

    invoke-virtual {v3, v6, v8}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    iget-boolean v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsLessMode:Z

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    iget-object v7, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-direct {p0, v6, v7}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    :goto_1
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v6}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    move-result-object v6

    iput-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    :cond_3
    :goto_2
    const-string/jumbo v6, "mounted"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string/jumbo v6, "mounted_ro"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v6, :cond_5

    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    iget-object v7, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mConfigName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_3
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_6
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    iget-object v7, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-direct {p0, v6, v7}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copyMySPToSP(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V

    goto :goto_1

    :cond_7
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v6}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->commit()Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :catch_1
    move-exception v6

    goto :goto_3
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->checkSDCardXMLFile()Z

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->checkSDCardXMLFile()Z

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v1, p1, v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->checkSDCardXMLFile()Z

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v1, p1, v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->checkSDCardXMLFile()Z

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v1, p1, v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->checkSDCardXMLFile()Z

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v2, p1, v0, v1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->checkSDCardXMLFile()Z

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    const-string/jumbo v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    const-string/jumbo v2, ""

    invoke-interface {v1, p1, v2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->initEditor()V

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putBoolean(Ljava/lang/String;Z)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    :cond_1
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 1

    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->initEditor()V

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putFloat(Ljava/lang/String;F)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    :cond_1
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1

    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->initEditor()V

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putInt(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    :cond_1
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 2

    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->initEditor()V

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v0, p1, p2, p3}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    :cond_1
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->initEditor()V

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    :cond_1
    return-void
.end method

.method public reload()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mConfigName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "mounted_ro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v2, :cond_2

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mConfigName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->initEditor()V

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v0, p1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->remove(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    :cond_1
    return-void
.end method
