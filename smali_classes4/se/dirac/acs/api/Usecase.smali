.class public final enum Lse/dirac/acs/api/Usecase;
.super Ljava/lang/Enum;
.source "Usecase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lse/dirac/acs/api/Usecase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lse/dirac/acs/api/Usecase;

.field public static final enum EXTERNAL_HEADSET:Lse/dirac/acs/api/Usecase;

.field public static final enum EXTERNAL_MRC:Lse/dirac/acs/api/Usecase;

.field public static final enum INTERNAL_CUSTOM1:Lse/dirac/acs/api/Usecase;

.field public static final enum INTERNAL_CUSTOM2:Lse/dirac/acs/api/Usecase;

.field public static final enum INTERNAL_CUSTOM3:Lse/dirac/acs/api/Usecase;

.field public static final enum INTERNAL_CUSTOM4:Lse/dirac/acs/api/Usecase;

.field public static final enum INTERNAL_CUSTOM5:Lse/dirac/acs/api/Usecase;

.field public static final enum INTERNAL_PANORAMA:Lse/dirac/acs/api/Usecase;

.field public static final enum INTERNAL_POWERSOUND:Lse/dirac/acs/api/Usecase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lse/dirac/acs/api/Usecase;

    const-string v1, "INTERNAL_POWERSOUND"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lse/dirac/acs/api/Usecase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lse/dirac/acs/api/Usecase;->INTERNAL_POWERSOUND:Lse/dirac/acs/api/Usecase;

    new-instance v0, Lse/dirac/acs/api/Usecase;

    const-string v1, "INTERNAL_PANORAMA"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lse/dirac/acs/api/Usecase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lse/dirac/acs/api/Usecase;->INTERNAL_PANORAMA:Lse/dirac/acs/api/Usecase;

    new-instance v0, Lse/dirac/acs/api/Usecase;

    const-string v1, "EXTERNAL_HEADSET"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lse/dirac/acs/api/Usecase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lse/dirac/acs/api/Usecase;->EXTERNAL_HEADSET:Lse/dirac/acs/api/Usecase;

    new-instance v0, Lse/dirac/acs/api/Usecase;

    const-string v1, "EXTERNAL_MRC"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lse/dirac/acs/api/Usecase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lse/dirac/acs/api/Usecase;->EXTERNAL_MRC:Lse/dirac/acs/api/Usecase;

    new-instance v0, Lse/dirac/acs/api/Usecase;

    const-string v1, "INTERNAL_CUSTOM1"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lse/dirac/acs/api/Usecase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lse/dirac/acs/api/Usecase;->INTERNAL_CUSTOM1:Lse/dirac/acs/api/Usecase;

    new-instance v0, Lse/dirac/acs/api/Usecase;

    const-string v1, "INTERNAL_CUSTOM2"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lse/dirac/acs/api/Usecase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lse/dirac/acs/api/Usecase;->INTERNAL_CUSTOM2:Lse/dirac/acs/api/Usecase;

    new-instance v0, Lse/dirac/acs/api/Usecase;

    const-string v1, "INTERNAL_CUSTOM3"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v8, v9}, Lse/dirac/acs/api/Usecase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lse/dirac/acs/api/Usecase;->INTERNAL_CUSTOM3:Lse/dirac/acs/api/Usecase;

    new-instance v0, Lse/dirac/acs/api/Usecase;

    const-string v1, "INTERNAL_CUSTOM4"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v9, v10}, Lse/dirac/acs/api/Usecase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lse/dirac/acs/api/Usecase;->INTERNAL_CUSTOM4:Lse/dirac/acs/api/Usecase;

    new-instance v0, Lse/dirac/acs/api/Usecase;

    const-string v1, "INTERNAL_CUSTOM5"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v10, v11}, Lse/dirac/acs/api/Usecase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lse/dirac/acs/api/Usecase;->INTERNAL_CUSTOM5:Lse/dirac/acs/api/Usecase;

    new-array v0, v11, [Lse/dirac/acs/api/Usecase;

    sget-object v1, Lse/dirac/acs/api/Usecase;->INTERNAL_POWERSOUND:Lse/dirac/acs/api/Usecase;

    aput-object v1, v0, v2

    sget-object v1, Lse/dirac/acs/api/Usecase;->INTERNAL_PANORAMA:Lse/dirac/acs/api/Usecase;

    aput-object v1, v0, v3

    sget-object v1, Lse/dirac/acs/api/Usecase;->EXTERNAL_HEADSET:Lse/dirac/acs/api/Usecase;

    aput-object v1, v0, v4

    sget-object v1, Lse/dirac/acs/api/Usecase;->EXTERNAL_MRC:Lse/dirac/acs/api/Usecase;

    aput-object v1, v0, v5

    sget-object v1, Lse/dirac/acs/api/Usecase;->INTERNAL_CUSTOM1:Lse/dirac/acs/api/Usecase;

    aput-object v1, v0, v6

    sget-object v1, Lse/dirac/acs/api/Usecase;->INTERNAL_CUSTOM2:Lse/dirac/acs/api/Usecase;

    aput-object v1, v0, v7

    sget-object v1, Lse/dirac/acs/api/Usecase;->INTERNAL_CUSTOM3:Lse/dirac/acs/api/Usecase;

    aput-object v1, v0, v8

    sget-object v1, Lse/dirac/acs/api/Usecase;->INTERNAL_CUSTOM4:Lse/dirac/acs/api/Usecase;

    aput-object v1, v0, v9

    sget-object v1, Lse/dirac/acs/api/Usecase;->INTERNAL_CUSTOM5:Lse/dirac/acs/api/Usecase;

    aput-object v1, v0, v10

    sput-object v0, Lse/dirac/acs/api/Usecase;->$VALUES:[Lse/dirac/acs/api/Usecase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lse/dirac/acs/api/Usecase;->value:I

    return-void
.end method

.method public static fromInt(I)Lse/dirac/acs/api/Usecase;
    .locals 3

    invoke-static {}, Lse/dirac/acs/api/Usecase;->values()[Lse/dirac/acs/api/Usecase;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lse/dirac/acs/api/Usecase;

    iget v2, v1, Lse/dirac/acs/api/Usecase;->value:I

    if-ne v2, p0, :cond_0

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lse/dirac/acs/api/Usecase;
    .locals 1

    const-class v0, Lse/dirac/acs/api/Usecase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lse/dirac/acs/api/Usecase;

    return-object p0
.end method

.method public static values()[Lse/dirac/acs/api/Usecase;
    .locals 1

    sget-object v0, Lse/dirac/acs/api/Usecase;->$VALUES:[Lse/dirac/acs/api/Usecase;

    invoke-virtual {v0}, [Lse/dirac/acs/api/Usecase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lse/dirac/acs/api/Usecase;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    iget v0, p0, Lse/dirac/acs/api/Usecase;->value:I

    return v0
.end method
