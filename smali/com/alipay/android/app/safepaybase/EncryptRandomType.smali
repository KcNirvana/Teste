.class public final enum Lcom/alipay/android/app/safepaybase/EncryptRandomType;
.super Ljava/lang/Enum;
.source "EncryptRandomType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/safepaybase/EncryptRandomType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/alipay/android/app/safepaybase/EncryptRandomType;

.field public static final enum randomafter:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

.field public static final enum randombefore:Lcom/alipay/android/app/safepaybase/EncryptRandomType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    const-string/jumbo v1, "randombefore"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/safepaybase/EncryptRandomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/safepaybase/EncryptRandomType;->randombefore:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    new-instance v0, Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    const-string/jumbo v1, "randomafter"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/app/safepaybase/EncryptRandomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/safepaybase/EncryptRandomType;->randomafter:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    sget-object v1, Lcom/alipay/android/app/safepaybase/EncryptRandomType;->randombefore:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/app/safepaybase/EncryptRandomType;->randomafter:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/app/safepaybase/EncryptRandomType;->ENUM$VALUES:[Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/safepaybase/EncryptRandomType;
    .locals 1

    const-class v0, Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/safepaybase/EncryptRandomType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/alipay/android/app/safepaybase/EncryptRandomType;->ENUM$VALUES:[Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
