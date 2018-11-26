.class public final enum Lcom/miui/powercenter/model/AbsModel$ItemGroup;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic aIA:[Lcom/miui/powercenter/model/AbsModel$ItemGroup;

.field public static final enum aIB:Lcom/miui/powercenter/model/AbsModel$ItemGroup;

.field public static final enum aIC:Lcom/miui/powercenter/model/AbsModel$ItemGroup;

.field public static final enum aID:Lcom/miui/powercenter/model/AbsModel$ItemGroup;

.field public static final enum aIE:Lcom/miui/powercenter/model/AbsModel$ItemGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    const-string/jumbo v1, "APP"

    invoke-direct {v0, v1, v2}, Lcom/miui/powercenter/model/AbsModel$ItemGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/powercenter/model/AbsModel$ItemGroup;->aIC:Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    new-instance v0, Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    const-string/jumbo v1, "ABNORMAL"

    invoke-direct {v0, v1, v3}, Lcom/miui/powercenter/model/AbsModel$ItemGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/powercenter/model/AbsModel$ItemGroup;->aIB:Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    new-instance v0, Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    const-string/jumbo v1, "SYSTEM"

    invoke-direct {v0, v1, v4}, Lcom/miui/powercenter/model/AbsModel$ItemGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/powercenter/model/AbsModel$ItemGroup;->aIE:Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    new-instance v0, Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    const-string/jumbo v1, "DETAILS"

    invoke-direct {v0, v1, v5}, Lcom/miui/powercenter/model/AbsModel$ItemGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/powercenter/model/AbsModel$ItemGroup;->aID:Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    sget-object v1, Lcom/miui/powercenter/model/AbsModel$ItemGroup;->aIC:Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/powercenter/model/AbsModel$ItemGroup;->aIB:Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/powercenter/model/AbsModel$ItemGroup;->aIE:Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/powercenter/model/AbsModel$ItemGroup;->aID:Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/powercenter/model/AbsModel$ItemGroup;->aIA:[Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/powercenter/model/AbsModel$ItemGroup;
    .locals 1

    const-class v0, Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    return-object v0
.end method

.method public static values()[Lcom/miui/powercenter/model/AbsModel$ItemGroup;
    .locals 1

    sget-object v0, Lcom/miui/powercenter/model/AbsModel$ItemGroup;->aIA:[Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    return-object v0
.end method
