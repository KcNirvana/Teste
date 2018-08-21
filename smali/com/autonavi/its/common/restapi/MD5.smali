.class public Lcom/autonavi/its/common/restapi/MD5;
.super Ljava/lang/Object;
.source "MD5.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMd5Bytes([B)[B
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method static getMd5StandardString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/autonavi/its/common/restapi/Utils;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/its/common/restapi/MD5;->getMd5Bytes([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/its/common/restapi/Utils;->standardBytes2HexString([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
