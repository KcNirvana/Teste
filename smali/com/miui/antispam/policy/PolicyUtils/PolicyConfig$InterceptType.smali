.class public final enum Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final enum XR:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

.field public static final enum XS:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

.field public static final enum XT:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

.field private static final synthetic XU:[Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    const-string/jumbo v1, "CALL"

    invoke-direct {v0, v1, v2}, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;->XS:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    new-instance v0, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    const-string/jumbo v1, "SMS"

    invoke-direct {v0, v1, v3}, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;->XT:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    new-instance v0, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    const-string/jumbo v1, "BOTH"

    invoke-direct {v0, v1, v4}, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;->XR:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    sget-object v1, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;->XS:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;->XT:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;->XR:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;->XU:[Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;
    .locals 1

    const-class v0, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    return-object v0
.end method

.method public static values()[Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;
    .locals 1

    sget-object v0, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;->XU:[Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    return-object v0
.end method
