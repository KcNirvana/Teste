.class public final enum Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final enum BY:Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

.field public static final enum BZ:Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

.field public static final enum Ca:Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

.field public static final enum Cb:Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

.field public static final enum Cc:Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

.field public static final enum Cd:Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

.field private static final synthetic Ce:[Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;


# instance fields
.field private action:Ljava/lang/String;

.field private resId:I

.field private summaryResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

    const-string/jumbo v1, "GARBAGE_CLEANUP"

    const-string/jumbo v5, "#Intent;action=miui.intent.action.GARBAGE_CLEANUP;end"

    const v3, 0x7f0705f1

    const v4, 0x7f0705f2

    invoke-direct/range {v0 .. v5}, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->Ca:Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

    new-instance v3, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

    const-string/jumbo v4, "NETWORK_ASSISTANTS"

    const-string/jumbo v8, "#Intent;action=miui.intent.action.NETWORKASSISTANT_ENTRANCE;end"

    const v6, 0x7f0705e0

    const v7, 0x7f0705e1

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->Cb:Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

    new-instance v3, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

    const-string/jumbo v4, "POWER_MANAGER"

    const-string/jumbo v8, "#Intent;action=miui.intent.action.POWER_MANAGER;end"

    const v6, 0x7f0705f6

    const v7, 0x7f0705f7

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->Cc:Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

    new-instance v3, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

    const-string/jumbo v4, "SECURITY_SCAN"

    const-string/jumbo v8, "#Intent;action=miui.intent.action.ANTI_VIRUS;end"

    const v6, 0x7f0705db

    const v7, 0x7f0705dc

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->Cd:Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

    new-instance v3, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

    const-string/jumbo v4, "ANTI_SPAM"

    const-string/jumbo v8, "#Intent;action=miui.intent.action.SET_FIREWALL;end"

    const v6, 0x7f0705ed

    const v7, 0x7f0705ee

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->BY:Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

    new-instance v3, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

    const-string/jumbo v4, "APP_MANAGER"

    const-string/jumbo v8, "#Intent;action=miui.intent.action.APP_MANAGER;end"

    const/4 v5, 0x5

    const v6, 0x7f070869

    const v7, 0x7f07060b

    invoke-direct/range {v3 .. v8}, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->BZ:Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

    sget-object v1, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->Ca:Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->Cb:Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

    aput-object v1, v0, v9

    sget-object v1, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->Cc:Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

    aput-object v1, v0, v10

    sget-object v1, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->Cd:Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

    aput-object v1, v0, v11

    sget-object v1, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->BY:Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

    aput-object v1, v0, v12

    sget-object v1, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->BZ:Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->Ce:[Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->resId:I

    iput p4, p0, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->summaryResId:I

    iput-object p5, p0, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->action:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;
    .locals 1

    const-class v0, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

    return-object v0
.end method

.method public static values()[Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;
    .locals 1

    sget-object v0, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->Ce:[Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

    return-object v0
.end method


# virtual methods
.method public Dw()I
    .locals 1

    iget v0, p0, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->summaryResId:I

    return v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getResId()I
    .locals 1

    iget v0, p0, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->resId:I

    return v0
.end method
