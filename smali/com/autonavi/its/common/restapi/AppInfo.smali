.class public Lcom/autonavi/its/common/restapi/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# static fields
.field static final KEY_NAME:Ljava/lang/String; = "com.amap.api.v2.apikey"

.field private static mApplicationName:Ljava/lang/String;

.field private static mKey:Ljava/lang/String;

.field private static mPackageName:Ljava/lang/String;

.field private static mSha1AndPackage:Ljava/lang/String;

.field private static mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, ""

    sput-object v0, Lcom/autonavi/its/common/restapi/AppInfo;->mApplicationName:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/autonavi/its/common/restapi/AppInfo;->mPackageName:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/autonavi/its/common/restapi/AppInfo;->mVersion:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/autonavi/its/common/restapi/AppInfo;->mKey:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/its/common/restapi/AppInfo;->mSha1AndPackage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v2, ""

    sget-object v3, Lcom/autonavi/its/common/restapi/AppInfo;->mApplicationName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/autonavi/its/common/restapi/AppInfo;->mApplicationName:Ljava/lang/String;

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lcom/autonavi/its/common/restapi/AppInfo;->mApplicationName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v2, Lcom/autonavi/its/common/restapi/AppInfo;->mApplicationName:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v2, ""

    sget-object v3, Lcom/autonavi/its/common/restapi/AppInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/autonavi/its/common/restapi/AppInfo;->mVersion:Ljava/lang/String;

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v2, Lcom/autonavi/its/common/restapi/AppInfo;->mVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v2, Lcom/autonavi/its/common/restapi/AppInfo;->mVersion:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method static getKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/autonavi/its/common/restapi/AppInfo;->getPrivateKey(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    sget-object v0, Lcom/autonavi/its/common/restapi/AppInfo;->mKey:Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/autonavi/its/common/restapi/AppInfo;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    sget-object v1, Lcom/autonavi/its/common/restapi/AppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/its/common/restapi/AppInfo;->mPackageName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/autonavi/its/common/restapi/AppInfo;->mPackageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v0, Lcom/autonavi/its/common/restapi/AppInfo;->mPackageName:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static getPrivateKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    sget-object v1, Lcom/autonavi/its/common/restapi/AppInfo;->mKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/autonavi/its/common/restapi/AppInfo;->mKey:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v1, Lcom/autonavi/its/common/restapi/AppInfo;->mKey:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "com.amap.api.v2.apikey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/autonavi/its/common/restapi/AppInfo;->mKey:Ljava/lang/String;

    :cond_2
    sget-object v1, Lcom/autonavi/its/common/restapi/AppInfo;->mKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getSHA1AndPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    :try_start_0
    sget-object v7, Lcom/autonavi/its/common/restapi/AppInfo;->mSha1AndPackage:Ljava/lang/String;

    if-eqz v7, :cond_0

    const-string/jumbo v7, ""

    sget-object v8, Lcom/autonavi/its/common/restapi/AppInfo;->mSha1AndPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/autonavi/its/common/restapi/AppInfo;->mSha1AndPackage:Ljava/lang/String;

    :goto_0
    return-object v7

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x40

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    const-string/jumbo v7, "SHA1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    :goto_1
    array-length v7, v6

    if-ge v3, v7, :cond_2

    aget-byte v7, v6, v3

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    const-string/jumbo v7, "0"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v7, ":"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/autonavi/its/common/restapi/AppInfo;->mSha1AndPackage:Ljava/lang/String;

    sget-object v7, Lcom/autonavi/its/common/restapi/AppInfo;->mSha1AndPackage:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    :goto_2
    sget-object v7, Lcom/autonavi/its/common/restapi/AppInfo;->mSha1AndPackage:Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v7

    goto :goto_2

    :catch_2
    move-exception v7

    goto :goto_2
.end method

.method static setKey(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/autonavi/its/common/restapi/AppInfo;->mKey:Ljava/lang/String;

    return-void
.end method
