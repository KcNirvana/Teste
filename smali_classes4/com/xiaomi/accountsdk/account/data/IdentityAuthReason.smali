.class public final enum Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;
.super Ljava/lang/Enum;
.source "IdentityAuthReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

.field public static final enum ADD_PHONE:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum ADD_SAFE_EMAIL:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

.field public static final enum DELETE_PHONE:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum MODIFY_SAFE_PHONE:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

.field public static final enum REPLACE_PHONE:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum REPLACE_SAFE_EMAIL:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

.field public static final enum SEND_EMAIL_ACTIVATE_MESSAGE:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

.field public static final enum SET_SECURITY_QUESTIONS:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    const-string v1, "ADD_SAFE_EMAIL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->ADD_SAFE_EMAIL:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    const-string v1, "REPLACE_SAFE_EMAIL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->REPLACE_SAFE_EMAIL:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    const-string v1, "ADD_PHONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->ADD_PHONE:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    const-string v1, "REPLACE_PHONE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->REPLACE_PHONE:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    const-string v1, "DELETE_PHONE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->DELETE_PHONE:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    const-string v1, "SEND_EMAIL_ACTIVATE_MESSAGE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->SEND_EMAIL_ACTIVATE_MESSAGE:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    const-string v1, "SET_SECURITY_QUESTIONS"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->SET_SECURITY_QUESTIONS:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    const-string v1, "MODIFY_SAFE_PHONE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->MODIFY_SAFE_PHONE:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->ADD_SAFE_EMAIL:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->REPLACE_SAFE_EMAIL:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->ADD_PHONE:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->REPLACE_PHONE:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->DELETE_PHONE:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->SEND_EMAIL_ACTIVATE_MESSAGE:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->SET_SECURITY_QUESTIONS:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->MODIFY_SAFE_PHONE:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    aput-object v1, v0, v9

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->$VALUES:[Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;
    .locals 1

    const-class v0, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->$VALUES:[Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    invoke-virtual {v0}, [Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    return-object v0
.end method
