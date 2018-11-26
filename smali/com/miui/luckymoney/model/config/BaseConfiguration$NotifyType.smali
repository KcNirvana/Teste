.class public final enum Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

.field public static final enum NONE:Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

.field public static final enum NOTIFICATION:Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;->NONE:Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

    new-instance v0, Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

    const-string/jumbo v1, "NOTIFICATION"

    invoke-direct {v0, v1, v3}, Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;->NOTIFICATION:Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

    sget-object v1, Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;->NONE:Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;->NOTIFICATION:Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;->$VALUES:[Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;
    .locals 1

    const-class v0, Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

    return-object v0
.end method

.method public static values()[Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;
    .locals 1

    sget-object v0, Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;->$VALUES:[Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

    return-object v0
.end method
