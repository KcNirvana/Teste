.class public Lcom/alipay/security/mobile/agent/AlipayAuthenticator;
.super Ljava/lang/Object;
.source "AlipayAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/security/mobile/agent/AlipayAuthenticator$ServiceException;,
        Lcom/alipay/security/mobile/agent/AlipayAuthenticator$RequestException;,
        Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;
    }
.end annotation


# static fields
.field private static bindServicePackageName:Ljava/lang/String;

.field private static mAlipayAuthenticator:Lcom/alipay/security/mobile/agent/AlipayAuthenticator;


# instance fields
.field private mAlipayAuthenticatorConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

.field private mAuthenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

.field private mContext:Landroid/content/Context;

.field private processListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->bindServicePackageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAlipayAuthenticatorConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    new-instance v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$1;

    invoke-direct {v0, p0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$1;-><init>(Lcom/alipay/security/mobile/agent/AlipayAuthenticator;)V

    iput-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->processListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorListener;

    return-void
.end method

.method public static Instance()Lcom/alipay/security/mobile/agent/AlipayAuthenticator;
    .locals 1

    sget-object v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAlipayAuthenticator:Lcom/alipay/security/mobile/agent/AlipayAuthenticator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;

    invoke-direct {v0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;-><init>()V

    sput-object v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAlipayAuthenticator:Lcom/alipay/security/mobile/agent/AlipayAuthenticator;

    :cond_0
    sget-object v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAlipayAuthenticator:Lcom/alipay/security/mobile/agent/AlipayAuthenticator;

    return-object v0
.end method

.method static synthetic access$000(Lcom/alipay/security/mobile/agent/AlipayAuthenticator;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/security/mobile/agent/AlipayAuthenticator;)Lcom/alipay/security/mobile/auth/AuthenticatorCallback;
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAuthenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    return-object v0
.end method

.method static synthetic access$1002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->bindServicePackageName:Ljava/lang/String;

    return-object p0
.end method

.method private authentServiceConnection()Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/security/mobile/agent/AlipayAuthenticator$ServiceException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAlipayAuthenticatorConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAlipayAuthenticatorConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    invoke-static {v0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->access$700(Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;)Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAlipayAuthenticatorConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAlipayAuthenticatorConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    invoke-static {v0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->access$700(Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;)Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAlipayAuthenticator:Lcom/alipay/security/mobile/agent/AlipayAuthenticator;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->uninit()V

    :cond_2
    iget-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAlipayAuthenticatorConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    if-nez v0, :cond_3

    new-instance v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$ServiceException;

    const-string/jumbo v1, "AlipayAuthenticator not connected"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$ServiceException;-><init>(Ljava/lang/String;Lcom/alipay/security/mobile/agent/AlipayAuthenticator$1;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAlipayAuthenticatorConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    return-object v0
.end method

.method public static getApkKeyHash(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v0, "X509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    const-string/jumbo v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "="

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$InitCallback;)I
    .locals 7

    const/16 v1, 0x64

    sget-object v2, Lcom/alipay/security/mobile/agent/AuthenticatorLock;->INIT_LOCK:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    iget-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mContext:Landroid/content/Context;

    if-nez v0, :cond_4

    iput-object v3, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mContext:Landroid/content/Context;

    :cond_0
    :goto_0
    const-string/jumbo v0, ""

    sget-object v4, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->bindServicePackageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alipay/security/mobile/agent/Version;->SERVICE_PACKAGE_NAME:Ljava/lang/String;

    sget-object v4, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->bindServicePackageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->uninit()V

    const-string/jumbo v0, "msp"

    const-string/jumbo v4, "authen init package error"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v0, "msp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->bindServicePackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/alipay/security/mobile/agent/Version;->SERVICE_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/alipay/security/mobile/agent/Version;->checkServiceVersion(Landroid/content/Context;)I

    move-result v0

    invoke-static {v3, p2}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->getInstance(Landroid/content/Context;Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$InitCallback;)Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    move-result-object v3

    const/16 v4, 0x7a

    if-ne v0, v4, :cond_3

    iget-object v4, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAlipayAuthenticatorConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    if-eqz v4, :cond_2

    invoke-static {v3}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->access$200(Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    invoke-static {v3}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->access$300(Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_6

    :try_start_2
    const-string/jumbo v0, "msp"

    const-string/jumbo v4, "start StartTransEmpty activity"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.alipay.security.mobile.authenticator"

    const-string/jumbo v5, "com.alipay.security.mobile.alipayauthenticatorservice.fingerprint.ui.StartTransEmpty"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-wide/16 v4, 0x96

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    invoke-static {v3}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->access$300(Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "msp"

    const-string/jumbo v1, "bind alipayauthenticatorservice,failed again"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v0, 0x7e

    :cond_3
    :goto_2
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v0

    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "msp"

    const-string/jumbo v4, "authen init context error"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->uninit()V

    iput-object v3, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mContext:Landroid/content/Context;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_6
    sget-object v0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAlipayAuthenticator:Lcom/alipay/security/mobile/agent/AlipayAuthenticator;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->uninit()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    const/16 v0, 0x69

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_7
    const-string/jumbo v4, "msp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "start failed :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0

    :cond_5
    :try_start_9
    const-string/jumbo v0, "msp"

    const-string/jumbo v4, "bind alipayauthenticatorservice,sucess on the second time"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAlipayAuthenticatorConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    move v0, v1

    goto :goto_2

    :cond_6
    iput-object v3, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAlipayAuthenticatorConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move v0, v1

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3
.end method

.method public process(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->authentServiceConnection()Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->access$600(Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public processAsync(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;I)V
    .locals 3

    iput-object p2, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAuthenticatorCallback:Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "KEY_OPERATIONT_TYPE"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "KEY_MESSAGE"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "KEY_VENDOR_TYPE"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "KEY_AUTHENTICATOR_TYPE"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getAuthenticatorType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "KEY_EXTRA_PARAMS"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getExtraParams()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "KEY_VERSION"

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;->getVersion()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->authentServiceConnection()Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->processListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorListener;

    invoke-static {v1, v0, v2}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->access$500(Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;Landroid/os/Bundle;Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorListener;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public uninit()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAlipayAuthenticatorConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAlipayAuthenticatorConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    invoke-static {v0}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;->access$400(Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->mAlipayAuthenticatorConnection:Lcom/alipay/security/mobile/agent/AlipayAuthenticator$Connection;

    return-void
.end method
