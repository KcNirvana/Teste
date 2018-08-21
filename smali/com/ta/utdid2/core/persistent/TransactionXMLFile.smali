.class public Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
.super Ljava/lang/Object;
.source "TransactionXMLFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;
    }
.end annotation


# static fields
.field private static final GLOBAL_COMMIT_LOCK:Ljava/lang/Object;

.field public static final MODE_PRIVATE:I = 0x0

.field public static final MODE_WORLD_READABLE:I = 0x1

.field public static final MODE_WORLD_WRITEABLE:I = 0x2


# instance fields
.field private mPreferencesDir:Ljava/io/File;

.field private final mSync:Ljava/lang/Object;

.field private sSharedPrefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/io/File;",
            "Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->GLOBAL_COMMIT_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->mSync:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->sSharedPrefs:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->mPreferencesDir:Ljava/io/File;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Directory can not be empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$0()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->GLOBAL_COMMIT_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1(Ljava/io/File;)Ljava/io/File;
    .locals 1

    invoke-static {p0}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->makeBackupFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getPreferencesDir()Ljava/io/File;
    .locals 2

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->mPreferencesDir:Ljava/io/File;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getPreferencesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static makeBackupFile(Ljava/io/File;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ".bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "File "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " contains a path separator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;
    .locals 16

    invoke-direct/range {p0 .. p1}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    sget-object v13, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->GLOBAL_COMMIT_LOCK:Ljava/lang/Object;

    monitor-enter v13

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->sSharedPrefs:Ljava/util/HashMap;

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->hasFileChanged()Z

    move-result v12

    if-nez v12, :cond_0

    monitor-exit v13

    move-object v9, v8

    :goto_0
    return-object v9

    :cond_0
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v10, 0x0

    invoke-static {v6}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->makeBackupFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    invoke-virtual {v1, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v12

    if-eqz v12, :cond_3

    :try_start_1
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {v11}, Lcom/ta/utdid2/core/persistent/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_10
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    if-eqz v11, :cond_9

    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_c

    move-object v10, v11

    :cond_3
    :goto_1
    sget-object v13, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->GLOBAL_COMMIT_LOCK:Ljava/lang/Object;

    monitor-enter v13

    if-eqz v8, :cond_8

    :try_start_4
    invoke-virtual {v8, v7}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;->replace(Ljava/util/Map;)V

    :cond_4
    :goto_2
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v9, v8

    goto :goto_0

    :catchall_0
    move-exception v12

    :try_start_5
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v12

    :catch_0
    move-exception v3

    move-object v11, v10

    :goto_3
    :try_start_6
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileInputStream;->available()I

    move-result v12

    new-array v2, v12, [B

    invoke-virtual {v10, v2}, Ljava/io/FileInputStream;->read([B)I

    new-instance v12, Ljava/lang/String;

    const/4 v13, 0x0

    array-length v14, v2

    const-string/jumbo v15, "UTF-8"

    invoke-direct {v12, v2, v13, v14, v15}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_14
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_13
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-eqz v10, :cond_5

    :try_start_8
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_e
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_5
    :goto_4
    if-eqz v10, :cond_3

    :try_start_9
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_1

    :catch_1
    move-exception v12

    goto :goto_1

    :catch_2
    move-exception v4

    move-object v10, v11

    :goto_5
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    if-eqz v10, :cond_5

    :try_start_b
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_4

    :catch_3
    move-exception v12

    goto :goto_4

    :catch_4
    move-exception v5

    move-object v10, v11

    :goto_6
    :try_start_c
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    if-eqz v10, :cond_5

    :try_start_d
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_4

    :catch_5
    move-exception v12

    goto :goto_4

    :catchall_1
    move-exception v12

    move-object v10, v11

    :goto_7
    if-eqz v10, :cond_6

    :try_start_e
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_d
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :cond_6
    :goto_8
    :try_start_f
    throw v12
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :catchall_2
    move-exception v12

    :goto_9
    if-eqz v10, :cond_7

    :try_start_10
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_f

    :cond_7
    :goto_a
    throw v12

    :catch_6
    move-exception v3

    :goto_b
    :try_start_11
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    if-eqz v10, :cond_3

    :try_start_12
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_7

    goto :goto_1

    :catch_7
    move-exception v12

    goto :goto_1

    :catch_8
    move-exception v3

    :goto_c
    :try_start_13
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    if-eqz v10, :cond_3

    :try_start_14
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_9

    goto :goto_1

    :catch_9
    move-exception v12

    goto :goto_1

    :catch_a
    move-exception v3

    :goto_d
    :try_start_15
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    if-eqz v10, :cond_3

    :try_start_16
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_b

    goto :goto_1

    :catch_b
    move-exception v12

    goto/16 :goto_1

    :catch_c
    move-exception v12

    move-object v10, v11

    goto/16 :goto_1

    :cond_8
    :try_start_17
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->sSharedPrefs:Ljava/util/HashMap;

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;

    move-object v8, v0

    if-nez v8, :cond_4

    new-instance v9, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;

    move/from16 v0, p2

    invoke-direct {v9, v6, v0, v7}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile$MySharedPreferencesImpl;-><init>(Ljava/io/File;ILjava/util/Map;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    :try_start_18
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->sSharedPrefs:Ljava/util/HashMap;

    invoke-virtual {v12, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    move-object v8, v9

    goto/16 :goto_2

    :catchall_3
    move-exception v12

    :goto_e
    :try_start_19
    monitor-exit v13
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    throw v12

    :catch_d
    move-exception v13

    goto :goto_8

    :catch_e
    move-exception v12

    goto :goto_4

    :catch_f
    move-exception v13

    goto :goto_a

    :catchall_4
    move-exception v12

    move-object v8, v9

    goto :goto_e

    :catchall_5
    move-exception v12

    move-object v10, v11

    goto :goto_9

    :catch_10
    move-exception v3

    move-object v10, v11

    goto :goto_d

    :catch_11
    move-exception v3

    move-object v10, v11

    goto :goto_c

    :catch_12
    move-exception v3

    move-object v10, v11

    goto :goto_b

    :catchall_6
    move-exception v12

    goto :goto_7

    :catch_13
    move-exception v5

    goto :goto_6

    :catch_14
    move-exception v4

    goto/16 :goto_5

    :catch_15
    move-exception v3

    goto/16 :goto_3

    :cond_9
    move-object v10, v11

    goto/16 :goto_1
.end method
