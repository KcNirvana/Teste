.class public final enum Lse/dirac/acs/api/SyncRequestReply;
.super Ljava/lang/Enum;
.source "SyncRequestReply.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lse/dirac/acs/api/SyncRequestReply;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lse/dirac/acs/api/SyncRequestReply;

.field public static final enum IN_PROGRESS:Lse/dirac/acs/api/SyncRequestReply;

.field public static final enum NOT_STARTED:Lse/dirac/acs/api/SyncRequestReply;

.field public static final enum STARTED:Lse/dirac/acs/api/SyncRequestReply;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lse/dirac/acs/api/SyncRequestReply;

    const-string v1, "STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lse/dirac/acs/api/SyncRequestReply;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lse/dirac/acs/api/SyncRequestReply;->STARTED:Lse/dirac/acs/api/SyncRequestReply;

    new-instance v0, Lse/dirac/acs/api/SyncRequestReply;

    const-string v1, "NOT_STARTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lse/dirac/acs/api/SyncRequestReply;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lse/dirac/acs/api/SyncRequestReply;->NOT_STARTED:Lse/dirac/acs/api/SyncRequestReply;

    new-instance v0, Lse/dirac/acs/api/SyncRequestReply;

    const-string v1, "IN_PROGRESS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lse/dirac/acs/api/SyncRequestReply;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lse/dirac/acs/api/SyncRequestReply;->IN_PROGRESS:Lse/dirac/acs/api/SyncRequestReply;

    const/4 v0, 0x3

    new-array v0, v0, [Lse/dirac/acs/api/SyncRequestReply;

    sget-object v1, Lse/dirac/acs/api/SyncRequestReply;->STARTED:Lse/dirac/acs/api/SyncRequestReply;

    aput-object v1, v0, v2

    sget-object v1, Lse/dirac/acs/api/SyncRequestReply;->NOT_STARTED:Lse/dirac/acs/api/SyncRequestReply;

    aput-object v1, v0, v3

    sget-object v1, Lse/dirac/acs/api/SyncRequestReply;->IN_PROGRESS:Lse/dirac/acs/api/SyncRequestReply;

    aput-object v1, v0, v4

    sput-object v0, Lse/dirac/acs/api/SyncRequestReply;->$VALUES:[Lse/dirac/acs/api/SyncRequestReply;

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

    iput p3, p0, Lse/dirac/acs/api/SyncRequestReply;->value:I

    return-void
.end method

.method public static fromInt(I)Lse/dirac/acs/api/SyncRequestReply;
    .locals 3

    invoke-static {}, Lse/dirac/acs/api/SyncRequestReply;->values()[Lse/dirac/acs/api/SyncRequestReply;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    iget v2, v2, Lse/dirac/acs/api/SyncRequestReply;->value:I

    if-ne v2, p0, :cond_0

    aget-object p0, v0, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

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

.method public static valueOf(Ljava/lang/String;)Lse/dirac/acs/api/SyncRequestReply;
    .locals 1

    const-class v0, Lse/dirac/acs/api/SyncRequestReply;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lse/dirac/acs/api/SyncRequestReply;

    return-object p0
.end method

.method public static values()[Lse/dirac/acs/api/SyncRequestReply;
    .locals 1

    sget-object v0, Lse/dirac/acs/api/SyncRequestReply;->$VALUES:[Lse/dirac/acs/api/SyncRequestReply;

    invoke-virtual {v0}, [Lse/dirac/acs/api/SyncRequestReply;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lse/dirac/acs/api/SyncRequestReply;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    iget v0, p0, Lse/dirac/acs/api/SyncRequestReply;->value:I

    return v0
.end method
