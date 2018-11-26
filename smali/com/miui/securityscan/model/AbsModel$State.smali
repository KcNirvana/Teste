.class public final enum Lcom/miui/securityscan/model/AbsModel$State;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic Bj:[Lcom/miui/securityscan/model/AbsModel$State;

.field public static final enum DANGER:Lcom/miui/securityscan/model/AbsModel$State;

.field public static final enum DANGER_MINOR:Lcom/miui/securityscan/model/AbsModel$State;

.field public static final enum SAFE:Lcom/miui/securityscan/model/AbsModel$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/securityscan/model/AbsModel$State;

    const-string/jumbo v1, "DANGER"

    invoke-direct {v0, v1, v2}, Lcom/miui/securityscan/model/AbsModel$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    new-instance v0, Lcom/miui/securityscan/model/AbsModel$State;

    const-string/jumbo v1, "DANGER_MINOR"

    invoke-direct {v0, v1, v3}, Lcom/miui/securityscan/model/AbsModel$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER_MINOR:Lcom/miui/securityscan/model/AbsModel$State;

    new-instance v0, Lcom/miui/securityscan/model/AbsModel$State;

    const-string/jumbo v1, "SAFE"

    invoke-direct {v0, v1, v4}, Lcom/miui/securityscan/model/AbsModel$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/miui/securityscan/model/AbsModel$State;

    sget-object v1, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/securityscan/model/AbsModel$State;->DANGER_MINOR:Lcom/miui/securityscan/model/AbsModel$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/securityscan/model/AbsModel$State;->Bj:[Lcom/miui/securityscan/model/AbsModel$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/securityscan/model/AbsModel$State;
    .locals 1

    const-class v0, Lcom/miui/securityscan/model/AbsModel$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/AbsModel$State;

    return-object v0
.end method

.method public static values()[Lcom/miui/securityscan/model/AbsModel$State;
    .locals 1

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->Bj:[Lcom/miui/securityscan/model/AbsModel$State;

    return-object v0
.end method
