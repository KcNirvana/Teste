.class public final enum Lcom/miui/powercenter/model/AbsResultModel$ResultCardType;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final enum aIt:Lcom/miui/powercenter/model/AbsResultModel$ResultCardType;

.field public static final enum aIu:Lcom/miui/powercenter/model/AbsResultModel$ResultCardType;

.field private static final synthetic aIv:[Lcom/miui/powercenter/model/AbsResultModel$ResultCardType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/powercenter/model/AbsResultModel$ResultCardType;

    const-string/jumbo v1, "SCAN"

    invoke-direct {v0, v1, v2}, Lcom/miui/powercenter/model/AbsResultModel$ResultCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/powercenter/model/AbsResultModel$ResultCardType;->aIu:Lcom/miui/powercenter/model/AbsResultModel$ResultCardType;

    new-instance v0, Lcom/miui/powercenter/model/AbsResultModel$ResultCardType;

    const-string/jumbo v1, "GUIDE"

    invoke-direct {v0, v1, v3}, Lcom/miui/powercenter/model/AbsResultModel$ResultCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/powercenter/model/AbsResultModel$ResultCardType;->aIt:Lcom/miui/powercenter/model/AbsResultModel$ResultCardType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/powercenter/model/AbsResultModel$ResultCardType;

    sget-object v1, Lcom/miui/powercenter/model/AbsResultModel$ResultCardType;->aIu:Lcom/miui/powercenter/model/AbsResultModel$ResultCardType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/powercenter/model/AbsResultModel$ResultCardType;->aIt:Lcom/miui/powercenter/model/AbsResultModel$ResultCardType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/powercenter/model/AbsResultModel$ResultCardType;->aIv:[Lcom/miui/powercenter/model/AbsResultModel$ResultCardType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/powercenter/model/AbsResultModel$ResultCardType;
    .locals 1

    const-class v0, Lcom/miui/powercenter/model/AbsResultModel$ResultCardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/model/AbsResultModel$ResultCardType;

    return-object v0
.end method

.method public static values()[Lcom/miui/powercenter/model/AbsResultModel$ResultCardType;
    .locals 1

    sget-object v0, Lcom/miui/powercenter/model/AbsResultModel$ResultCardType;->aIv:[Lcom/miui/powercenter/model/AbsResultModel$ResultCardType;

    return-object v0
.end method
