.class public Lcom/ta/utdid2/device/UTUtdid;
.super Ljava/lang/Object;
.source "UTUtdid.java"


# static fields
.field private static final CREATE_LOCK:Ljava/lang/Object;

.field private static final HMAC_KEY:Ljava/lang/String; = "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161"

.field private static final S_GLOBAL_PERSISTENT_CONFIG_DIR:Ljava/lang/String;

.field private static final S_GLOBAL_PERSISTENT_CONFIG_KEY:Ljava/lang/String; = "Alvin2"

.field private static final S_LOCAL_STORAGE_KEY:Ljava/lang/String; = "ContextData"

.field private static final S_LOCAL_STORAGE_NAME:Ljava/lang/String; = ".DataStorage"

.field static final UM_SETTINGS_STORAGE:Ljava/lang/String; = "dxCRMxhQkdGePGnp"

.field static final UM_SETTINGS_STORAGE_NEW:Ljava/lang/String; = "mqBRboGZkQPcAkyk"

.field private static s_umutdid:Lcom/ta/utdid2/device/UTUtdid;


# instance fields
.field private mCBDomain:Ljava/lang/String;

.field private mCBKey:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

.field private mPattern:Ljava/util/regex/Pattern;

.field private mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

.field private mUtdid:Ljava/lang/String;

.field private mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/device/UTUtdid;->CREATE_LOCK:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/ta/utdid2/device/UTUtdid;->s_umutdid:Lcom/ta/utdid2/device/UTUtdid;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, ".UTSystemConfig"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Global"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ta/utdid2/device/UTUtdid;->S_GLOBAL_PERSISTENT_CONFIG_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    iput-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    const-string/jumbo v0, "xx_utdid_key"

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBKey:Ljava/lang/String;

    const-string/jumbo v0, "xx_utdid_domain"

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBDomain:Ljava/lang/String;

    iput-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    iput-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string/jumbo v0, "[^0-9a-zA-Z=/+]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mPattern:Ljava/util/regex/Pattern;

    iput-object p1, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    sget-object v2, Lcom/ta/utdid2/device/UTUtdid;->S_GLOBAL_PERSISTENT_CONFIG_DIR:Ljava/lang/String;

    const-string/jumbo v3, "Alvin2"

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    new-instance v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string/jumbo v2, ".DataStorage"

    const-string/jumbo v3, "ContextData"

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    new-instance v0, Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-direct {v0}, Lcom/ta/utdid2/device/UTUtdidHelper;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    const-string/jumbo v0, "K_%d"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/ta/utdid2/android/utils/StringUtils;->hashCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBKey:Ljava/lang/String;

    const-string/jumbo v0, "D_%d"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBDomain:Ljava/lang/String;

    invoke-static {v2}, Lcom/ta/utdid2/android/utils/StringUtils;->hashCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBDomain:Ljava/lang/String;

    return-void
.end method

.method private static _calcHmac([B)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161"

    const-string/jumbo v4, "HmacSHA1"

    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v1, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/ta/utdid2/android/utils/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private final _generateUtdid()[B
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v12, v0

    new-instance v15, Ljava/util/Random;

    invoke-direct {v15}, Ljava/util/Random;-><init>()V

    invoke-virtual {v15}, Ljava/util/Random;->nextInt()I

    move-result v13

    const/4 v14, 0x3

    const/4 v11, 0x0

    invoke-static {v12}, Lcom/ta/utdid2/android/utils/IntUtils;->getBytes(I)[B

    move-result-object v4

    invoke-static {v13}, Lcom/ta/utdid2/android/utils/IntUtils;->getBytes(I)[B

    move-result-object v5

    const/4 v15, 0x0

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v6, v4, v15, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v15, 0x0

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v6, v5, v15, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v6, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v6, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v10, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/ta/utdid2/android/utils/PhoneInfoUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    :goto_0
    invoke-static {v10}, Lcom/ta/utdid2/android/utils/StringUtils;->hashCode(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lcom/ta/utdid2/android/utils/IntUtils;->getBytes(I)[B

    move-result-object v3

    const/4 v15, 0x0

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v6, v3, v15, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const-string/jumbo v9, ""

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    invoke-static {v15}, Lcom/ta/utdid2/device/UTUtdid;->_calcHmac([B)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/ta/utdid2/android/utils/StringUtils;->hashCode(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Lcom/ta/utdid2/android/utils/IntUtils;->getBytes(I)[B

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    return-object v15

    :catch_0
    move-exception v7

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v16, Ljava/util/Random;

    invoke-direct/range {v16 .. v16}, Ljava/util/Random;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/util/Random;->nextInt()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0
.end method

.method private _removeIllegalKeys()V
    .locals 7

    iget-object v5, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string/jumbo v6, "UTDID2"

    invoke-virtual {v5, v6}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string/jumbo v6, "UTDID"

    invoke-virtual {v5, v6}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0, v4}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToTaoPPC(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    iget-object v5, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string/jumbo v6, "DID"

    invoke-virtual {v5, v6}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string/jumbo v6, "DID"

    invoke-virtual {v5, v6}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->remove(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_1
    iget-object v5, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string/jumbo v6, "EI"

    invoke-virtual {v5, v6}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string/jumbo v6, "EI"

    invoke-virtual {v5, v6}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->remove(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_2
    iget-object v5, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string/jumbo v6, "SI"

    invoke-virtual {v5, v6}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string/jumbo v6, "SI"

    invoke-virtual {v5, v6}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->remove(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_4

    iget-object v5, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    invoke-virtual {v5}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->commit()Z

    :cond_4
    return-void
.end method

.method private getUtdidFromTaoPPC()Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string/jumbo v3, "UTDID2"

    invoke-virtual {v2, v3}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v2, v1}, Lcom/ta/utdid2/device/UTUtdidHelper;->packUtdidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static instance(Landroid/content/Context;)Lcom/ta/utdid2/device/UTUtdid;
    .locals 2

    if-eqz p0, :cond_1

    sget-object v0, Lcom/ta/utdid2/device/UTUtdid;->s_umutdid:Lcom/ta/utdid2/device/UTUtdid;

    if-nez v0, :cond_1

    sget-object v1, Lcom/ta/utdid2/device/UTUtdid;->CREATE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ta/utdid2/device/UTUtdid;->s_umutdid:Lcom/ta/utdid2/device/UTUtdid;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ta/utdid2/device/UTUtdid;

    invoke-direct {v0, p0}, Lcom/ta/utdid2/device/UTUtdid;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ta/utdid2/device/UTUtdid;->s_umutdid:Lcom/ta/utdid2/device/UTUtdid;

    sget-object v0, Lcom/ta/utdid2/device/UTUtdid;->s_umutdid:Lcom/ta/utdid2/device/UTUtdid;

    invoke-direct {v0}, Lcom/ta/utdid2/device/UTUtdid;->_removeIllegalKeys()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ta/utdid2/device/UTUtdid;->s_umutdid:Lcom/ta/utdid2/device/UTUtdid;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isValidUTDID(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string/jumbo v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/16 v2, 0x18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private saveUtdidToLocalStorage(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBKey:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    invoke-virtual {v1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->commit()Z

    :cond_0
    return-void
.end method

.method private saveUtdidToNewSettings(Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/16 v2, 0x18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "mqBRboGZkQPcAkyk"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "mqBRboGZkQPcAkyk"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private saveUtdidToSettings(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/UTUtdid;->syncUTDIDToSettings(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private saveUtdidToTaoPPC(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string/jumbo v1, "UTDID2"

    invoke-virtual {v0, v1, p1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    invoke-virtual {v0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->commit()Z

    :cond_1
    return-void
.end method

.method private syncUTDIDToSettings(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "dxCRMxhQkdGePGnp"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "dxCRMxhQkdGePGnp"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getValue()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/ta/utdid2/device/UTUtdid;->getValueForUpdate()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getValueForUpdate()Ljava/lang/String;
    .locals 17

    monitor-enter p0

    :try_start_0
    const-string/jumbo v8, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "mqBRboGZkQPcAkyk"

    invoke-static/range {v15 .. v16}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v15

    if-eqz v15, :cond_0

    :goto_1
    monitor-exit p0

    return-object v8

    :cond_0
    :try_start_3
    new-instance v6, Lcom/ta/utdid2/device/UTUtdidHelper2;

    invoke-direct {v6}, Lcom/ta/utdid2/device/UTUtdidHelper2;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v7, 0x0

    const/4 v1, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "dxCRMxhQkdGePGnp"

    invoke-static/range {v15 .. v16}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    :goto_2
    :try_start_5
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    invoke-virtual {v6, v1}, Lcom/ta/utdid2/device/UTUtdidHelper2;->dePackWithBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToNewSettings(Ljava/lang/String;)V

    move-object v8, v13

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v1}, Lcom/ta/utdid2/device/UTUtdidHelper2;->dePack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v15, v12}, Lcom/ta/utdid2/device/UTUtdidHelper;->packUtdidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToSettings(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "dxCRMxhQkdGePGnp"

    invoke-static/range {v15 .. v16}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v1

    :cond_2
    :goto_3
    :try_start_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v15, v1}, Lcom/ta/utdid2/device/UTUtdidHelper;->dePack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToTaoPPC(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToLocalStorage(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToNewSettings(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const/4 v7, 0x1

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/ta/utdid2/device/UTUtdid;->getUtdidFromTaoPPC()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v15, v11}, Lcom/ta/utdid2/device/UTUtdidHelper;->packUtdidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToSettings(Ljava/lang/String;)V

    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToNewSettings(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToLocalStorage(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    move-object v8, v11

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ta/utdid2/device/UTUtdid;->mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ta/utdid2/device/UTUtdid;->mCBKey:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_9

    invoke-virtual {v6, v4}, Lcom/ta/utdid2/device/UTUtdidHelper2;->dePack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v15, v4}, Lcom/ta/utdid2/device/UTUtdidHelper;->dePack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/ta/utdid2/device/UTUtdid;->isValidUTDID(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v15, v14}, Lcom/ta/utdid2/device/UTUtdidHelper;->packUtdidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_9

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    if-eqz v7, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToSettings(Ljava/lang/String;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToTaoPPC(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    :cond_9
    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/ta/utdid2/device/UTUtdid;->_generateUtdid()[B

    move-result-object v14

    if-eqz v14, :cond_c

    const/4 v15, 0x2

    invoke-static {v14, v15}, Lcom/ta/utdid2/android/utils/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToTaoPPC(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v15, v14}, Lcom/ta/utdid2/device/UTUtdidHelper;->pack([B)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_b

    if-eqz v7, :cond_a

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToSettings(Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToLocalStorage(Ljava/lang/String;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    :try_start_9
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_1

    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15

    :catch_1
    move-exception v15

    goto/16 :goto_3

    :catch_2
    move-exception v15

    goto/16 :goto_2

    :catch_3
    move-exception v15

    goto/16 :goto_0
.end method
