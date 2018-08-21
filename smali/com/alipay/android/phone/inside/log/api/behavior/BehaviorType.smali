.class public final enum Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;
.super Ljava/lang/Enum;
.source "BehaviorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

.field public static final enum AUTOCLICK:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

.field public static final enum AUTOEVENT:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

.field public static final enum AUTOOPENPAGE:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

.field public static final enum CLICK:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

.field public static final enum EVENT:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

.field public static final enum EXPOSURE:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

.field public static final enum LONGCLICK:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

.field public static final enum OPENPAGE:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

.field public static final enum SLIDE:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

.field public static final enum SUBMITE:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;


# instance fields
.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    const-string/jumbo v1, "CLICK"

    const-string/jumbo v2, "clicked"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->CLICK:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    new-instance v0, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    const-string/jumbo v1, "OPENPAGE"

    const-string/jumbo v2, "openPage"

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->OPENPAGE:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    new-instance v0, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    const-string/jumbo v1, "LONGCLICK"

    const-string/jumbo v2, "longClicked"

    invoke-direct {v0, v1, v6, v2}, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->LONGCLICK:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    new-instance v0, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    const-string/jumbo v1, "SUBMITE"

    const-string/jumbo v2, "submited"

    invoke-direct {v0, v1, v7, v2}, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->SUBMITE:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    new-instance v0, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    const-string/jumbo v1, "SLIDE"

    const-string/jumbo v2, "slided"

    invoke-direct {v0, v1, v8, v2}, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->SLIDE:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    new-instance v0, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    const-string/jumbo v1, "AUTOOPENPAGE"

    const/4 v2, 0x5

    const-string/jumbo v3, "auto_openPage"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->AUTOOPENPAGE:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    new-instance v0, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    const-string/jumbo v1, "AUTOCLICK"

    const/4 v2, 0x6

    const-string/jumbo v3, "auto_click"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->AUTOCLICK:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    new-instance v0, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    const-string/jumbo v1, "AUTOEVENT"

    const/4 v2, 0x7

    const-string/jumbo v3, "auto_event"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->AUTOEVENT:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    new-instance v0, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    const-string/jumbo v1, "EVENT"

    const/16 v2, 0x8

    const-string/jumbo v3, "event"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->EVENT:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    new-instance v0, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    const-string/jumbo v1, "EXPOSURE"

    const/16 v2, 0x9

    const-string/jumbo v3, "exposure"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->EXPOSURE:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    sget-object v1, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->CLICK:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->OPENPAGE:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->LONGCLICK:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->SUBMITE:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->SLIDE:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->AUTOOPENPAGE:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->AUTOCLICK:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->AUTOEVENT:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->EVENT:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->EXPOSURE:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->$VALUES:[Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->mType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;
    .locals 1

    const-class v0, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->$VALUES:[Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    invoke-virtual {v0}, [Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->mType:Ljava/lang/String;

    return-object v0
.end method
