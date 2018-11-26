.class public final enum Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;

.field public static final enum DISABLED:Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;

.field public static final enum ENABLED:Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;

    const-string/jumbo v1, "ENABLED"

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;->ENABLED:Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;

    new-instance v0, Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;

    const-string/jumbo v1, "DISABLED"

    invoke-direct {v0, v1, v3}, Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;->DISABLED:Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;

    sget-object v1, Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;->ENABLED:Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;->DISABLED:Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;->$VALUES:[Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;
    .locals 1

    const-class v0, Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;

    return-object v0
.end method

.method public static values()[Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;->$VALUES:[Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;

    return-object v0
.end method
