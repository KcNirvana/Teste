.class public final enum Lmiui/externalassistant/SdkConstants$SdkError;
.super Ljava/lang/Enum;
.source "SdkConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/externalassistant/SdkConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SdkError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/externalassistant/SdkConstants$SdkError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/externalassistant/SdkConstants$SdkError;

.field public static final enum GENERIC:Lmiui/externalassistant/SdkConstants$SdkError;

.field public static final INTENT_EXTRA_KEY:Ljava/lang/String; = "com.miui.sdk.error"

.field public static final enum LOW_SDK_VERSION:Lmiui/externalassistant/SdkConstants$SdkError;

.field public static final enum NO_SDK:Lmiui/externalassistant/SdkConstants$SdkError;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lmiui/externalassistant/SdkConstants$SdkError;

    const-string/jumbo v1, "GENERIC"

    invoke-direct {v0, v1, v2}, Lmiui/externalassistant/SdkConstants$SdkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/externalassistant/SdkConstants$SdkError;->GENERIC:Lmiui/externalassistant/SdkConstants$SdkError;

    new-instance v0, Lmiui/externalassistant/SdkConstants$SdkError;

    const-string/jumbo v1, "NO_SDK"

    invoke-direct {v0, v1, v3}, Lmiui/externalassistant/SdkConstants$SdkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/externalassistant/SdkConstants$SdkError;->NO_SDK:Lmiui/externalassistant/SdkConstants$SdkError;

    new-instance v0, Lmiui/externalassistant/SdkConstants$SdkError;

    const-string/jumbo v1, "LOW_SDK_VERSION"

    invoke-direct {v0, v1, v4}, Lmiui/externalassistant/SdkConstants$SdkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/externalassistant/SdkConstants$SdkError;->LOW_SDK_VERSION:Lmiui/externalassistant/SdkConstants$SdkError;

    const/4 v0, 0x3

    new-array v0, v0, [Lmiui/externalassistant/SdkConstants$SdkError;

    sget-object v1, Lmiui/externalassistant/SdkConstants$SdkError;->GENERIC:Lmiui/externalassistant/SdkConstants$SdkError;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/externalassistant/SdkConstants$SdkError;->NO_SDK:Lmiui/externalassistant/SdkConstants$SdkError;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/externalassistant/SdkConstants$SdkError;->LOW_SDK_VERSION:Lmiui/externalassistant/SdkConstants$SdkError;

    aput-object v1, v0, v4

    sput-object v0, Lmiui/externalassistant/SdkConstants$SdkError;->$VALUES:[Lmiui/externalassistant/SdkConstants$SdkError;

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

.method public static valueOf(Ljava/lang/String;)Lmiui/externalassistant/SdkConstants$SdkError;
    .locals 1

    const-class v0, Lmiui/externalassistant/SdkConstants$SdkError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/externalassistant/SdkConstants$SdkError;

    return-object v0
.end method

.method public static values()[Lmiui/externalassistant/SdkConstants$SdkError;
    .locals 1

    sget-object v0, Lmiui/externalassistant/SdkConstants$SdkError;->$VALUES:[Lmiui/externalassistant/SdkConstants$SdkError;

    invoke-virtual {v0}, [Lmiui/externalassistant/SdkConstants$SdkError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/externalassistant/SdkConstants$SdkError;

    return-object v0
.end method
