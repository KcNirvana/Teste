.class public final enum Lcom/xiaomi/accountsdk/utils/CloudCoder$CIPHER_MODE;
.super Ljava/lang/Enum;
.source "CloudCoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/utils/CloudCoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CIPHER_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/accountsdk/utils/CloudCoder$CIPHER_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/accountsdk/utils/CloudCoder$CIPHER_MODE;

.field public static final enum DECRYPT:Lcom/xiaomi/accountsdk/utils/CloudCoder$CIPHER_MODE;

.field public static final enum ENCRYPT:Lcom/xiaomi/accountsdk/utils/CloudCoder$CIPHER_MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/xiaomi/accountsdk/utils/CloudCoder$CIPHER_MODE;

    const-string v1, "ENCRYPT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/CloudCoder$CIPHER_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/utils/CloudCoder$CIPHER_MODE;->ENCRYPT:Lcom/xiaomi/accountsdk/utils/CloudCoder$CIPHER_MODE;

    new-instance v0, Lcom/xiaomi/accountsdk/utils/CloudCoder$CIPHER_MODE;

    const-string v1, "DECRYPT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/accountsdk/utils/CloudCoder$CIPHER_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/utils/CloudCoder$CIPHER_MODE;->DECRYPT:Lcom/xiaomi/accountsdk/utils/CloudCoder$CIPHER_MODE;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaomi/accountsdk/utils/CloudCoder$CIPHER_MODE;

    sget-object v1, Lcom/xiaomi/accountsdk/utils/CloudCoder$CIPHER_MODE;->ENCRYPT:Lcom/xiaomi/accountsdk/utils/CloudCoder$CIPHER_MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/accountsdk/utils/CloudCoder$CIPHER_MODE;->DECRYPT:Lcom/xiaomi/accountsdk/utils/CloudCoder$CIPHER_MODE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/accountsdk/utils/CloudCoder$CIPHER_MODE;->$VALUES:[Lcom/xiaomi/accountsdk/utils/CloudCoder$CIPHER_MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/utils/CloudCoder$CIPHER_MODE;
    .locals 1

    const-class v0, Lcom/xiaomi/accountsdk/utils/CloudCoder$CIPHER_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/accountsdk/utils/CloudCoder$CIPHER_MODE;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/accountsdk/utils/CloudCoder$CIPHER_MODE;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/utils/CloudCoder$CIPHER_MODE;->$VALUES:[Lcom/xiaomi/accountsdk/utils/CloudCoder$CIPHER_MODE;

    invoke-virtual {v0}, [Lcom/xiaomi/accountsdk/utils/CloudCoder$CIPHER_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/accountsdk/utils/CloudCoder$CIPHER_MODE;

    return-object v0
.end method
