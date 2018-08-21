.class public Lcom/alipay/android/phone/inside/commonbiz/c/a;
.super Ljava/lang/Object;
.source "ApkVerifyTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/phone/inside/commonbiz/c/a$a;
    }
.end annotation


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/c/a;->a:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/inside/commonbiz/c/a$a;
    .locals 8

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-class v1, Lcom/alipay/android/phone/inside/commonbiz/c/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "getInsideSignInfo init"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v1, Lcom/alipay/android/phone/inside/commonbiz/c/a$a;

    invoke-direct {v1}, Lcom/alipay/android/phone/inside/commonbiz/c/a$a;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v4, 0x40

    invoke-virtual {v0, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/alipay/android/phone/inside/commonbiz/c/a$a;->a:Z

    :cond_0
    invoke-static {p0, p1}, Lcom/alipay/android/phone/inside/commonbiz/c/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v1, Lcom/alipay/android/phone/inside/commonbiz/c/a$a;->b:Ljava/util/List;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, v1, Lcom/alipay/android/phone/inside/commonbiz/c/a$a;->c:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-class v4, Lcom/alipay/android/phone/inside/commonbiz/c/a;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getInsideSignInfo cost:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v4

    const-class v5, Lcom/alipay/android/phone/inside/commonbiz/c/a;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alipay/android/phone/inside/log/api/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getExceptionLogger()Lcom/alipay/android/phone/inside/log/api/ex/a;

    move-result-object v4

    sget-object v5, Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;->EXCEPTION:Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;

    const-string/jumbo v6, "sdk"

    const-string/jumbo v7, "ApkSignInfo"

    invoke-interface {v4, v5, v6, v7, v0}, Lcom/alipay/android/phone/inside/log/api/ex/a;->a(Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;I)Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;
    .locals 3

    const-class v1, Lcom/alipay/android/phone/inside/commonbiz/c/a;

    monitor-enter v1

    if-gtz p1, :cond_0

    :try_start_0
    sget p1, Lcom/alipay/android/phone/inside/commonbiz/a;->a:I

    :cond_0
    const-string/jumbo v0, "com.eg.android.AlipayGphone"

    invoke-static {p0, v0}, Lcom/alipay/android/phone/inside/commonbiz/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/inside/commonbiz/c/a$a;

    move-result-object v0

    iget-boolean v2, v0, Lcom/alipay/android/phone/inside/commonbiz/c/a$a;->a:Z

    if-nez v2, :cond_1

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INVOKE_ALIPAY_NOT_INSTALL:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/alipay/android/phone/inside/commonbiz/c/a;->a(Lcom/alipay/android/phone/inside/commonbiz/c/a$a;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->ALIPAY_CHECK_SIGN_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    goto :goto_0

    :cond_2
    iget v0, v0, Lcom/alipay/android/phone/inside/commonbiz/c/a$a;->c:I

    if-ge v0, p1, :cond_3

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INVOKE_ALIPAY_VERSION_NOT_MATCH:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->SUCCESS:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "com.eg.android.AlipayGphone"

    invoke-static {p0, v0}, Lcom/alipay/android/phone/inside/commonbiz/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/inside/commonbiz/c/a$a;

    move-result-object v0

    iget-boolean v1, v0, Lcom/alipay/android/phone/inside/commonbiz/c/a$a;->a:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/alipay/android/phone/inside/commonbiz/c/a;->a(Lcom/alipay/android/phone/inside/commonbiz/c/a$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/alipay/android/phone/inside/commonbiz/c/a$a;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/phone/inside/commonbiz/c/a$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/inside/commonbiz/c/a$a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v4, "38:9B:49:F7:83:2F:53:E9:01:79:23:22:0A:A8:5E:14:DF:AA:48:86:EC:D7:42:88:18:BF:33:95:43:CF:49:8A"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v2, v3

    :cond_1
    return v2
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;
    .locals 2

    const-class v0, Lcom/alipay/android/phone/inside/commonbiz/c/a;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/alipay/android/phone/inside/commonbiz/c/a;->a(Landroid/content/Context;I)Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const-string/jumbo v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    :goto_0
    array-length v1, v4

    if-ge v3, v1, :cond_2

    aget-object v1, v4, v3

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuffer;

    array-length v1, v6

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v7, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    array-length v1, v6

    add-int/lit8 v8, v1, -0x1

    move v1, v2

    :goto_1
    if-gt v1, v8, :cond_1

    aget-byte v9, v6, v1

    sget-object v10, Lcom/alipay/android/phone/inside/commonbiz/c/a;->a:[C

    and-int/lit16 v11, v9, 0xf0

    shr-int/lit8 v11, v11, 0x4

    aget-char v10, v10, v11

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v10, Lcom/alipay/android/phone/inside/commonbiz/c/a;->a:[C

    and-int/lit8 v9, v9, 0xf

    aget-char v9, v10, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-ge v1, v8, :cond_0

    const/16 v9, 0x3a

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-class v2, Lcom/alipay/android/phone/inside/commonbiz/c/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method
