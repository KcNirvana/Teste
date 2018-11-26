.class public final enum Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic aqg:[Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;

.field public static final enum aqh:Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;

.field public static final enum aqi:Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;

.field public static final enum aqj:Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;

.field public static final enum aqk:Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;

    const-string/jumbo v1, "NETWORK"

    invoke-direct {v0, v1, v2}, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;->aqh:Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;

    new-instance v0, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;

    const-string/jumbo v1, "SYSTEM"

    invoke-direct {v0, v1, v3}, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;->aqj:Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;

    new-instance v0, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;

    const-string/jumbo v1, "SMS"

    invoke-direct {v0, v1, v4}, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;->aqi:Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;

    new-instance v0, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;

    const-string/jumbo v1, "VIRUS"

    invoke-direct {v0, v1, v5}, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;->aqk:Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;

    sget-object v1, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;->aqh:Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;->aqj:Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;->aqi:Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;->aqk:Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;->aqg:[Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;
    .locals 1

    const-class v0, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;

    return-object v0
.end method

.method public static values()[Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;
    .locals 1

    sget-object v0, Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;->aqg:[Lcom/miui/antivirus/ui/MainHandleBar$HandleItem;

    return-object v0
.end method
