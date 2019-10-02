.class public final enum Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;
.super Ljava/lang/Enum;
.source "MiAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/accountmanager/MiAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SystemAccountVisibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;

.field public static final enum CAN_USE_SERVICE_TOKEN_UTIL:Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;

.field public static final enum IMPOSSIBLE:Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;

.field public static final enum REQUIRE_LOCAL_APP_PERMISSION:Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;

    const-string v1, "IMPOSSIBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;->IMPOSSIBLE:Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;

    new-instance v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;

    const-string v1, "REQUIRE_LOCAL_APP_PERMISSION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;->REQUIRE_LOCAL_APP_PERMISSION:Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;

    new-instance v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;

    const-string v1, "CAN_USE_SERVICE_TOKEN_UTIL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;->CAN_USE_SERVICE_TOKEN_UTIL:Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;

    sget-object v1, Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;->IMPOSSIBLE:Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;->REQUIRE_LOCAL_APP_PERMISSION:Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;->CAN_USE_SERVICE_TOKEN_UTIL:Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;->$VALUES:[Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;
    .locals 1

    const-class v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;->$VALUES:[Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;

    invoke-virtual {v0}, [Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/passport/accountmanager/MiAccountManager$SystemAccountVisibility;

    return-object v0
.end method
