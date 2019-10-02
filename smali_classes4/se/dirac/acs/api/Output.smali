.class public final enum Lse/dirac/acs/api/Output;
.super Ljava/lang/Enum;
.source "Output.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lse/dirac/acs/api/Output;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lse/dirac/acs/api/Output;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lse/dirac/acs/api/Output;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum EXTERNAL:Lse/dirac/acs/api/Output;

.field public static final enum INTERNAL:Lse/dirac/acs/api/Output;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lse/dirac/acs/api/Output;

    const-string v1, "INTERNAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lse/dirac/acs/api/Output;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lse/dirac/acs/api/Output;->INTERNAL:Lse/dirac/acs/api/Output;

    new-instance v0, Lse/dirac/acs/api/Output;

    const-string v1, "EXTERNAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lse/dirac/acs/api/Output;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lse/dirac/acs/api/Output;->EXTERNAL:Lse/dirac/acs/api/Output;

    const/4 v0, 0x2

    new-array v0, v0, [Lse/dirac/acs/api/Output;

    sget-object v1, Lse/dirac/acs/api/Output;->INTERNAL:Lse/dirac/acs/api/Output;

    aput-object v1, v0, v2

    sget-object v1, Lse/dirac/acs/api/Output;->EXTERNAL:Lse/dirac/acs/api/Output;

    aput-object v1, v0, v3

    sput-object v0, Lse/dirac/acs/api/Output;->$VALUES:[Lse/dirac/acs/api/Output;

    new-instance v0, Lse/dirac/acs/api/Output$1;

    invoke-direct {v0}, Lse/dirac/acs/api/Output$1;-><init>()V

    sput-object v0, Lse/dirac/acs/api/Output;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public static valueOf(Ljava/lang/String;)Lse/dirac/acs/api/Output;
    .locals 1

    const-class v0, Lse/dirac/acs/api/Output;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lse/dirac/acs/api/Output;

    return-object p0
.end method

.method public static values()[Lse/dirac/acs/api/Output;
    .locals 1

    sget-object v0, Lse/dirac/acs/api/Output;->$VALUES:[Lse/dirac/acs/api/Output;

    invoke-virtual {v0}, [Lse/dirac/acs/api/Output;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lse/dirac/acs/api/Output;

    return-object v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {}, Lse/dirac/acs/api/Output;->values()[Lse/dirac/acs/api/Output;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    aget-object v1, p2, v0

    if-ne v1, p0, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method
