.class public Lcom/miui/antivirus/utils/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final anZ:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "0"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "1"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "2"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "3"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "4"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "5"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "6"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "7"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "8"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "9"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "a"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "b"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "c"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "d"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "e"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "f"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/antivirus/utils/b;->anZ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final auA(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string/jumbo v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/miui/antivirus/utils/b;->auy([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    return-object v1
.end method

.method public static final aux(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string/jumbo v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/miui/antivirus/utils/b;->auy([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    return-object v1
.end method

.method private static auy([B)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-byte v2, p0, v0

    invoke-static {v2}, Lcom/miui/antivirus/utils/b;->auz(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static auz(B)Ljava/lang/String;
    .locals 4

    if-gez p0, :cond_0

    add-int/lit16 p0, p0, 0x100

    :cond_0
    div-int/lit8 v0, p0, 0x10

    rem-int/lit8 v1, p0, 0x10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/miui/antivirus/utils/b;->anZ:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/miui/antivirus/utils/b;->anZ:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
