.class public final enum Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;

.field public static final enum SET_RECOMMAND_AD_SWITCH_STATE:Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;

    const-string/jumbo v1, "SET_RECOMMAND_AD_SWITCH_STATE"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;->SET_RECOMMAND_AD_SWITCH_STATE:Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;

    sget-object v1, Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;->SET_RECOMMAND_AD_SWITCH_STATE:Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;->$VALUES:[Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;
    .locals 1

    const-class v0, Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;
    .locals 1

    sget-object v0, Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;->$VALUES:[Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;

    return-object v0
.end method
