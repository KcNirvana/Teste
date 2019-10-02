.class public final enum Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;
.super Ljava/lang/Enum;
.source "AudioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

.field public static final enum ADD:Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

.field public static final enum CHANGED:Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

.field public static final enum DEL:Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

    const-string v1, "ADD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;->ADD:Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

    new-instance v0, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

    const-string v1, "DEL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;->DEL:Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

    new-instance v0, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

    const-string v1, "CHANGED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;->CHANGED:Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

    const/4 v0, 0x3

    new-array v0, v0, [Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

    sget-object v1, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;->ADD:Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

    aput-object v1, v0, v2

    sget-object v1, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;->DEL:Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

    aput-object v1, v0, v3

    sget-object v1, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;->CHANGED:Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

    aput-object v1, v0, v4

    sput-object v0, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;->$VALUES:[Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;
    .locals 1

    const-class v0, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

    return-object p0
.end method

.method public static values()[Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;
    .locals 1

    sget-object v0, Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;->$VALUES:[Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

    invoke-virtual {v0}, [Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor$Event;

    return-object v0
.end method
