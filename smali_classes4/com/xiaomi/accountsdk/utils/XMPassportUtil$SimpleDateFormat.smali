.class final enum Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;
.super Ljava/lang/Enum;
.source "XMPassportUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/utils/XMPassportUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SimpleDateFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;

.field public static final enum default_not_en:Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;

.field public static final enum en_US:Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;

.field public static final enum en_not_US:Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;

    const-string v1, "en_US"

    const-string v2, "MM-dd-yyyy"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;->en_US:Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;

    new-instance v0, Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;

    const-string v1, "en_not_US"

    const-string v2, "dd-MM-yyyy"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;->en_not_US:Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;

    new-instance v0, Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;

    const-string v1, "default_not_en"

    const-string v2, "yyyy-MM-dd"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;->default_not_en:Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;

    sget-object v1, Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;->en_US:Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;->en_not_US:Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;->default_not_en:Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;

    aput-object v1, v0, v5

    sput-object v0, Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;->$VALUES:[Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;
    .locals 1

    const-class v0, Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;->$VALUES:[Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;

    invoke-virtual {v0}, [Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;->value:Ljava/lang/String;

    return-object v0
.end method
