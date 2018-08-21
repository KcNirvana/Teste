.class public Lcom/alipay/security/mobile/auth/AuthenticatorFactory;
.super Ljava/lang/Object;
.source "AuthenticatorFactory.java"


# static fields
.field public static TYPE_BRACELET:I

.field public static TYPE_FINGERPRINT:I

.field private static mBraceletAuthenticatorCache:Lcom/alipay/security/mobile/auth/IAuthenticator;

.field private static mFingerprintAuthenticatorCache:Lcom/alipay/security/mobile/auth/IAuthenticator;

.field private static modelName:Ljava/lang/String;

.field private static samsungFPModle:[Ljava/lang/String;

.field private static servicePackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    sget v0, Lcom/alipay/security/mobile/auth/Constants;->TYPE_FINGERPRINT:I

    sput v0, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->TYPE_FINGERPRINT:I

    sget v0, Lcom/alipay/security/mobile/auth/Constants;->TYPE_BRACELET:I

    sput v0, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->TYPE_BRACELET:I

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "SM-G900"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "SM-T805C"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "SM-T800N"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "SM-T705C"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "SM-T700N"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "SM-G8508S"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "SM-N91"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "SM-G920"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "SM-G925"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "SM-A8000"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "SM-G928"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->samsungFPModle:[Ljava/lang/String;

    sput-object v3, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->modelName:Ljava/lang/String;

    sput-object v3, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->mFingerprintAuthenticatorCache:Lcom/alipay/security/mobile/auth/IAuthenticator;

    sput-object v3, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->mBraceletAuthenticatorCache:Lcom/alipay/security/mobile/auth/IAuthenticator;

    const-string/jumbo v0, "com.alipay.security.mobile.authenticator"

    sput-object v0, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->servicePackageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static alipayFingerprintSolution(Landroid/content/Context;)Lcom/alipay/security/mobile/auth/IAuthenticator;
    .locals 9

    const/4 v2, 0x0

    const/4 v8, -0x1

    new-instance v6, Lcom/alipay/security/mobile/fingerprint/other/VendorOther;

    invoke-direct {v6}, Lcom/alipay/security/mobile/fingerprint/other/VendorOther;-><init>()V

    invoke-static {p0}, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->supportSamsungAsm(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;

    sget v1, Lcom/alipay/security/mobile/auth/Constants;->VENDOR_SAMSUNG_V2:I

    sget v2, Lcom/alipay/security/mobile/auth/Constants;->PROTOCOL_TYPE_ALIPAY:I

    const/4 v3, 0x2

    const-string/jumbo v4, "com.alipay.security.mobile.authenticator"

    const-string/jumbo v5, "https://t.alipayobjects.com/L1/71/900/androidSec/Alipaysec_common.apk"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://authentication.information"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_1

    move-object v0, v6

    goto :goto_0

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "fingerprint"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "protocalType"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v1, "protocalVersion"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v1, "vendor"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v8, :cond_2

    if-eq v3, v8, :cond_2

    if-eq v2, v8, :cond_2

    if-ne v1, v8, :cond_3

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string/jumbo v4, "com.alipay.security.mobile.authenticator"

    const-string/jumbo v5, "https://t.alipayobjects.com/L1/71/900/androidSec/Alipaysec_common.apk"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_4
    move-object v0, v6

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;I)Lcom/alipay/security/mobile/auth/IAuthenticator;
    .locals 1

    sget v0, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->TYPE_FINGERPRINT:I

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->mFingerprintAuthenticatorCache:Lcom/alipay/security/mobile/auth/IAuthenticator;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->mFingerprintAuthenticatorCache:Lcom/alipay/security/mobile/auth/IAuthenticator;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->createInside(Landroid/content/Context;I)Lcom/alipay/security/mobile/auth/IAuthenticator;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->mFingerprintAuthenticatorCache:Lcom/alipay/security/mobile/auth/IAuthenticator;

    sget-object v0, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->mFingerprintAuthenticatorCache:Lcom/alipay/security/mobile/auth/IAuthenticator;

    goto :goto_0

    :cond_1
    sget v0, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->TYPE_BRACELET:I

    if-ne p1, v0, :cond_3

    sget-object v0, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->mBraceletAuthenticatorCache:Lcom/alipay/security/mobile/auth/IAuthenticator;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->mBraceletAuthenticatorCache:Lcom/alipay/security/mobile/auth/IAuthenticator;

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->createInside(Landroid/content/Context;I)Lcom/alipay/security/mobile/auth/IAuthenticator;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->mBraceletAuthenticatorCache:Lcom/alipay/security/mobile/auth/IAuthenticator;

    sget-object v0, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->mBraceletAuthenticatorCache:Lcom/alipay/security/mobile/auth/IAuthenticator;

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->createInside(Landroid/content/Context;I)Lcom/alipay/security/mobile/auth/IAuthenticator;

    move-result-object v0

    goto :goto_0
.end method

.method private static createInside(Landroid/content/Context;I)Lcom/alipay/security/mobile/auth/IAuthenticator;
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    sget v1, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->TYPE_FINGERPRINT:I

    if-ne p1, v1, :cond_5

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    invoke-static {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/manager/IFAAFingerprintManagerFactory;->getIFAAManager(Landroid/content/Context;)Lorg/ifaa/android/manager/IFAAManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lorg/ifaa/android/manager/IFAAManager;->getSupportBIOTypes(Landroid/content/Context;)I

    move-result v1

    sget v2, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->TYPE_FINGERPRINT:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    new-instance v0, Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter;

    invoke-direct {v0}, Lcom/alipay/security/mobile/fingerprint/adapter/FingerprintAuthenticatorAdapter;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->getDeviceMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->isSupportSamSungFP(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->isNotSupportNNL(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/alipay/security/mobile/fingerprint/other/VendorOther;

    invoke-direct {v0}, Lcom/alipay/security/mobile/fingerprint/other/VendorOther;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/alipay/security/mobile/fingerprint/other/VendorOther;

    invoke-direct {v0}, Lcom/alipay/security/mobile/fingerprint/other/VendorOther;-><init>()V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/alipay/security/mobile/fingerprint/other/VendorOther;

    invoke-direct {v0}, Lcom/alipay/security/mobile/fingerprint/other/VendorOther;-><init>()V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/alipay/security/mobile/auth/ModelsUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->alipayFingerprintSolution(Landroid/content/Context;)Lcom/alipay/security/mobile/auth/IAuthenticator;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/alipay/security/mobile/auth/ModelsUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/alipay/security/mobile/fingerprint/other/VendorOther;

    invoke-direct {v0}, Lcom/alipay/security/mobile/fingerprint/other/VendorOther;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_4
    :try_start_2
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/security/mobile/auth/Constants;->PACKAGENAME:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/alipay/security/mobile/auth/Constants;->VENDOR:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    sget-object v0, Lcom/alipay/security/mobile/auth/Constants;->PROTOCALTYPE:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    sget-object v0, Lcom/alipay/security/mobile/auth/Constants;->PROTOCALVERSION:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    sget-object v0, Lcom/alipay/security/mobile/auth/Constants;->SERVICEURL:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;

    invoke-direct/range {v0 .. v5}, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->servicePackageName:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v0, Lcom/alipay/security/mobile/fingerprint/other/VendorOther;

    invoke-direct {v0}, Lcom/alipay/security/mobile/fingerprint/other/VendorOther;-><init>()V

    goto :goto_0

    :cond_5
    sget v0, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->TYPE_BRACELET:I

    if-ne p1, v0, :cond_6

    new-instance v0, Lcom/alipay/security/mobile/bracelet/xiaomi/XiaomiAuthenticator;

    invoke-direct {v0}, Lcom/alipay/security/mobile/bracelet/xiaomi/XiaomiAuthenticator;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDeviceMode(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->modelName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->modelName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://authentication.information"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, " "

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->modelName:Ljava/lang/String;

    sget-object v0, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->modelName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "model"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, " "

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->modelName:Ljava/lang/String;

    sget-object v0, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->modelName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    if-eqz v1, :cond_3

    const-string/jumbo v0, " "

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "#"

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->modelName:Ljava/lang/String;

    sget-object v0, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->modelName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_3
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, " "

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->modelName:Ljava/lang/String;

    sget-object v0, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->modelName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getServiceVersion(Landroid/content/Context;)I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->servicePackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->servicePackageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->servicePackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static isNotSupportNNL(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v4, "SM-G92"

    aput-object v4, v3, v2

    const/4 v2, 0x1

    const-string/jumbo v4, "SM-A8000"

    aput-object v4, v3, v2

    move v2, v1

    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v4, v3, v2

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static isSupportSamSungFP(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    sget-object v2, Lcom/alipay/security/mobile/auth/AuthenticatorFactory;->samsungFPModle:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static supportSamsungAsm(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    const-string/jumbo v2, "com.sec.android.fido.uaf.asm"

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "com.alipay.security.mobile.authenticator"

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
