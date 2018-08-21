.class public final enum Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;
.super Ljava/lang/Enum;
.source "MiotDeviceItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoginState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

.field public static final enum CTA_NOT_PASSED:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

.field public static final enum LOGGING_IN:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

.field public static final enum MIJIA_UNINSTALLED:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

.field public static final enum NOT_LOGIN:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

.field public static final enum REFRESH_FAILED:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

.field public static final enum REFRESH_SUCCESS:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    const-string/jumbo v1, "MIJIA_UNINSTALLED"

    invoke-direct {v0, v1, v3}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->MIJIA_UNINSTALLED:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    new-instance v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    const-string/jumbo v1, "CTA_NOT_PASSED"

    invoke-direct {v0, v1, v4}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->CTA_NOT_PASSED:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    new-instance v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    const-string/jumbo v1, "LOGGING_IN"

    invoke-direct {v0, v1, v5}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->LOGGING_IN:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    new-instance v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    const-string/jumbo v1, "NOT_LOGIN"

    invoke-direct {v0, v1, v6}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->NOT_LOGIN:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    new-instance v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    const-string/jumbo v1, "REFRESH_FAILED"

    invoke-direct {v0, v1, v7}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->REFRESH_FAILED:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    new-instance v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    const-string/jumbo v1, "REFRESH_SUCCESS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->REFRESH_SUCCESS:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    sget-object v1, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->MIJIA_UNINSTALLED:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->CTA_NOT_PASSED:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->LOGGING_IN:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->NOT_LOGIN:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->REFRESH_FAILED:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->REFRESH_SUCCESS:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->$VALUES:[Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;
    .locals 1

    const-class v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    return-object v0
.end method

.method public static values()[Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->$VALUES:[Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    invoke-virtual {v0}, [Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    return-object v0
.end method
