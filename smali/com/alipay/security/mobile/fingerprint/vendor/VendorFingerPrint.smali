.class public Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;
.super Lcom/alipay/security/mobile/auth/AbstractAuthenticator;
.source "VendorFingerPrint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$InitCallback;
    }
.end annotation


# static fields
.field public static final BROADCAST_UI_STATUS_ACTION:Ljava/lang/String; = "com.alipay.security.mobile.alipayauthenticatorservice.broadcast.UI_STATUS_ACTION"

.field private static final KEY_DEVICEID:Ljava/lang/String; = "deviceid"

.field private static final SECURITY_PREFERENCE:Ljava/lang/String; = "securitypreference00"

.field public static final UI_STATUS_VALUE:Ljava/lang/String; = "com.alipay.security.mobile.alipayauthenticatorservice.broadcast.UI_STATUS_VALUE"

.field public static minVersion:I

.field public static updateVersion:I


# instance fields
.field private lock:Ljava/lang/Object;

.field private mCachedDeviceId:Ljava/lang/String;

.field private mFingerPrintNumberCache:I

.field private mFingerPrintNumberValid:J

.field private mLastUserID:Ljava/lang/String;

.field private mResult:I

.field private mUserStatusCache:I

.field private mUserStatusValid:J

.field private packageName:Ljava/lang/String;

.field private protocalType:I

.field private protocalVersion:I

.field private serverUrl:Ljava/lang/String;

.field private vendor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    sput v0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->minVersion:I

    const/4 v0, 0x7

    sput v0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->updateVersion:I

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/alipay/security/mobile/auth/AbstractAuthenticator;-><init>()V

    const/16 v0, 0x65

    iput v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mResult:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->lock:Ljava/lang/Object;

    iput v1, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->vendor:I

    iput v1, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->protocalType:I

    iput v1, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->protocalVersion:I

    iput-object v2, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->packageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->serverUrl:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mCachedDeviceId:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mUserStatusCache:I

    iput-wide v4, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mUserStatusValid:J

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mLastUserID:Ljava/lang/String;

    const/4 v0, 0x6

    iput v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mFingerPrintNumberCache:I

    iput-wide v4, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mFingerPrintNumberValid:J

    iput p1, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->vendor:I

    iput p2, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->protocalType:I

    iput p3, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->protocalVersion:I

    iput-object p4, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->packageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->serverUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mResult:I

    return p1
.end method

.method static synthetic access$200(Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method private checkUserStatusInternal(Ljava/lang/String;)I
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "KEY_OPERATIONT_TYPE"

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "KEY_USERID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "KEY_VENDOR_TYPE"

    iget v2, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->vendor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->Instance()Lcom/alipay/security/mobile/agent/AlipayAuthenticator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->process(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "msp"

    const-string/jumbo v1, "bundle == null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v1, "KEY_USERSTATUS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "msp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AuthenticatorMessage user status result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDeviceIdInternal()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->context:Landroid/content/Context;

    const-string/jumbo v2, "securitypreference00"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v1, "deviceid"

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->protocalVersion:I

    if-ne v1, v5, :cond_2

    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/util/DeviceInfoUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xb

    if-le v1, v3, :cond_1

    invoke-direct {p0, v0}, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->sha_hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "deviceid"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->sha_hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "deviceid"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "KEY_OPERATIONT_TYPE"

    const/16 v4, 0xc

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "KEY_VENDOR_TYPE"

    iget v4, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->vendor:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->Instance()Lcom/alipay/security/mobile/agent/AlipayAuthenticator;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->process(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v3, "DEVICEID"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "deviceid"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private registedFingerPrintNumberInternal()I
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "KEY_OPERATIONT_TYPE"

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "KEY_VENDOR_TYPE"

    iget v2, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->vendor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->Instance()Lcom/alipay/security/mobile/agent/AlipayAuthenticator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->process(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v1, "FINGERPRINTS_NUM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private sha_hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    :try_start_0
    const-string/jumbo v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const-string/jumbo v1, ""

    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-byte v3, v2, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, p1

    :cond_0
    return-object v0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alipay.security.mobile.alipayauthenticatorservice.broadcast.UI_STATUS_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.alipay.security.mobile.alipayauthenticatorservice.broadcast.UI_STATUS_VALUE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public checkUserStatus(Ljava/lang/String;)I
    .locals 8

    sget-object v1, Lcom/alipay/security/mobile/agent/AuthenticatorLock;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkUserStatus enter [userID:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->fpInfo(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->getInstance()Lcom/alipay/security/mobile/cache/AuthenticatorCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->getFingerprintUserStatusCache(Ljava/lang/String;)I

    move-result v0

    const/16 v2, -0x64

    if-eq v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkUserStatus exit [status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] [from cache]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->fpInfo(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget-wide v2, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mUserStatusValid:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mLastUserID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkUserStatus exit [status:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mUserStatusCache:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "] [from cache]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->fpInfo(Ljava/lang/String;)V

    iget v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mUserStatusCache:I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, p1}, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->checkUserStatusInternal(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mUserStatusCache:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mUserStatusValid:J

    iput-object p1, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mLastUserID:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkUserStatus exit [status:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mUserStatusCache:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "] [timecost:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->fpInfo(Ljava/lang/String;)V

    iget v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mUserStatusCache:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method protected doAuthenticate(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 0

    return-void
.end method

.method protected doDeregister(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 0

    return-void
.end method

.method protected doRegister(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 0

    return-void
.end method

.method public getAuthInfo()Lcom/alipay/security/mobile/auth/AuthInfo;
    .locals 7

    new-instance v0, Lcom/alipay/security/mobile/auth/AuthInfo;

    sget v1, Lcom/alipay/security/mobile/auth/Constants;->TYPE_FINGERPRINT:I

    iget v2, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->vendor:I

    iget v3, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->protocalType:I

    iget v4, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->protocalVersion:I

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->serverUrl:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/alipay/security/mobile/auth/AuthInfo;-><init>(IIIILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/alipay/security/mobile/agent/AuthenticatorLock;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->getInstance()Lcom/alipay/security/mobile/cache/AuthenticatorCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->getFingerprintDeviceIDCache()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mCachedDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->getDeviceIdInternal()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mCachedDeviceId:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mCachedDeviceId:Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public init(Landroid/content/Context;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;Ljava/lang/String;)I
    .locals 6

    const/16 v3, 0x64

    sget-object v1, Lcom/alipay/security/mobile/agent/AuthenticatorLock;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VendorFingerPrint_init enter [userID:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "] [model:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->fpInfo(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->packageName:Ljava/lang/String;

    sput-object v0, Lcom/alipay/security/mobile/agent/Version;->SERVICE_PACKAGE_NAME:Ljava/lang/String;

    const/4 v0, 0x2

    sput v0, Lcom/alipay/security/mobile/agent/Version;->agentVersionCode:I

    iput-object p1, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->context:Landroid/content/Context;

    new-instance v0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$2;

    invoke-direct {v0, p0}, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$2;-><init>(Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;)V

    invoke-static {}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->Instance()Lcom/alipay/security/mobile/agent/AlipayAuthenticator;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->init(Landroid/content/Context;Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$InitCallback;)I

    move-result v0

    iput v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mResult:I

    iget-object v2, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mResult:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->lock:Ljava/lang/Object;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mResult:I

    const/16 v2, 0x7a

    if-ne v0, v2, :cond_2

    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mResult:I

    :cond_2
    iget v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mResult:I

    if-ne v0, v3, :cond_3

    invoke-static {p1}, Lcom/alipay/security/mobile/agent/Version;->readServiceVersion(Landroid/content/Context;)I

    move-result v0

    sget v2, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->minVersion:I

    if-ge v0, v2, :cond_3

    const/16 v0, 0x7f

    iput v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mResult:I

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VendorFingerPrint_init exit [result:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mResult:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->fpInfo(Ljava/lang/String;)V

    iget v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mResult:I

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return v0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public prapareKeyPair()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "KEY_OPERATIONT_TYPE"

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "KEY_VENDOR_TYPE"

    iget v2, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->vendor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->Instance()Lcom/alipay/security/mobile/agent/AlipayAuthenticator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->process(Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public process(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VendorFingerPrint.process enter [type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->fpInfo(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "KEY_OPERATIONT_TYPE"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "KEY_VENDOR_TYPE"

    iget v3, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->vendor:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->Instance()Lcom/alipay/security/mobile/agent/AlipayAuthenticator;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->process(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "KEY_MESSAGE"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getType()I

    move-result v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_3

    invoke-static {v0}, Lcom/alipay/security/mobile/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/security/mobile/agent/Version;->readServiceVersion(Landroid/content/Context;)I

    move-result v1

    sget v2, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->updateVersion:I

    if-ge v1, v2, :cond_2

    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->serverUrl:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "com.alipay.security.mobile.authentication.huawei"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->serverUrl:Ljava/lang/String;

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VendorFingerPrint.process exit [result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->fpInfo(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public process(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VendorFingerPrint.processAsyn enter [type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->fpInfo(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrintsOperation;

    iget v1, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->vendor:I

    invoke-direct {v0, p1, p2, v1}, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrintsOperation;-><init>(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;I)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/security/mobile/agent/Version;->readServiceVersion(Landroid/content/Context;)I

    move-result v0

    sget v1, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->minVersion:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->context:Landroid/content/Context;

    const-string/jumbo v1, "alipays://platformapi/startApp?appId=20000082"

    iget-object v2, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->serverUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/security/mobile/util/CommonUtils;->notifyUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$1;

    invoke-direct {v1, p0}, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$1;-><init>(Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mUserStatusCache:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mUserStatusValid:J

    goto :goto_0
.end method

.method public registedFingerPrintNumber()I
    .locals 6

    iget v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->protocalVersion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "registedFingerPrintNumber enter []"

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->fpInfo(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->getInstance()Lcom/alipay/security/mobile/cache/AuthenticatorCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->getFingerprintNumberCache()I

    move-result v0

    const/16 v1, -0x64

    if-eq v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registedFingerPrintNumber exit [number:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] [from cache]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->fpInfo(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mFingerPrintNumberValid:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registedFingerPrintNumber exit [number:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mFingerPrintNumberCache:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] [from cache]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->fpInfo(Ljava/lang/String;)V

    iget v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mFingerPrintNumberCache:I

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->registedFingerPrintNumberInternal()I

    move-result v2

    iput v2, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mFingerPrintNumberCache:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mFingerPrintNumberValid:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registedFingerPrintNumber exit [number:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mFingerPrintNumberCache:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] [timecost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->fpInfo(Ljava/lang/String;)V

    iget v0, p0, Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint;->mFingerPrintNumberCache:I

    goto/16 :goto_0
.end method

.method public release()V
    .locals 0

    return-void
.end method
