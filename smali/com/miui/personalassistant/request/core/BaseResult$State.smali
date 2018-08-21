.class public final enum Lcom/miui/personalassistant/request/core/BaseResult$State;
.super Ljava/lang/Enum;
.source "BaseResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/request/core/BaseResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/personalassistant/request/core/BaseResult$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/personalassistant/request/core/BaseResult$State;

.field public static final enum DATA_ERROR:Lcom/miui/personalassistant/request/core/BaseResult$State;

.field public static final enum LOCATION_ERROR:Lcom/miui/personalassistant/request/core/BaseResult$State;

.field public static final enum NETWORK_ACCESS_ERROR:Lcom/miui/personalassistant/request/core/BaseResult$State;

.field public static final enum NETWORK_ERROR:Lcom/miui/personalassistant/request/core/BaseResult$State;

.field public static final enum OK:Lcom/miui/personalassistant/request/core/BaseResult$State;

.field public static final enum SERVICE_ERROR:Lcom/miui/personalassistant/request/core/BaseResult$State;


# instance fields
.field private mDefaultDescription:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/miui/personalassistant/request/core/BaseResult$State;

    const-string/jumbo v1, "NETWORK_ERROR"

    const v2, 0x1b0b02cf

    invoke-direct {v0, v1, v4, v2}, Lcom/miui/personalassistant/request/core/BaseResult$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/personalassistant/request/core/BaseResult$State;->NETWORK_ERROR:Lcom/miui/personalassistant/request/core/BaseResult$State;

    new-instance v0, Lcom/miui/personalassistant/request/core/BaseResult$State;

    const-string/jumbo v1, "NETWORK_ACCESS_ERROR"

    const v2, 0x1b0b02cc

    invoke-direct {v0, v1, v5, v2}, Lcom/miui/personalassistant/request/core/BaseResult$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/personalassistant/request/core/BaseResult$State;->NETWORK_ACCESS_ERROR:Lcom/miui/personalassistant/request/core/BaseResult$State;

    new-instance v0, Lcom/miui/personalassistant/request/core/BaseResult$State;

    const-string/jumbo v1, "SERVICE_ERROR"

    const v2, 0x1b0b037e

    invoke-direct {v0, v1, v6, v2}, Lcom/miui/personalassistant/request/core/BaseResult$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/personalassistant/request/core/BaseResult$State;->SERVICE_ERROR:Lcom/miui/personalassistant/request/core/BaseResult$State;

    new-instance v0, Lcom/miui/personalassistant/request/core/BaseResult$State;

    const-string/jumbo v1, "DATA_ERROR"

    const v2, 0x1b0b00bb

    invoke-direct {v0, v1, v7, v2}, Lcom/miui/personalassistant/request/core/BaseResult$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/personalassistant/request/core/BaseResult$State;->DATA_ERROR:Lcom/miui/personalassistant/request/core/BaseResult$State;

    new-instance v0, Lcom/miui/personalassistant/request/core/BaseResult$State;

    const-string/jumbo v1, "LOCATION_ERROR"

    const v2, 0x1b0b024e

    invoke-direct {v0, v1, v8, v2}, Lcom/miui/personalassistant/request/core/BaseResult$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/personalassistant/request/core/BaseResult$State;->LOCATION_ERROR:Lcom/miui/personalassistant/request/core/BaseResult$State;

    new-instance v0, Lcom/miui/personalassistant/request/core/BaseResult$State;

    const-string/jumbo v1, "OK"

    const/4 v2, 0x5

    const v3, 0x104000a

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/personalassistant/request/core/BaseResult$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/personalassistant/request/core/BaseResult$State;->OK:Lcom/miui/personalassistant/request/core/BaseResult$State;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/miui/personalassistant/request/core/BaseResult$State;

    sget-object v1, Lcom/miui/personalassistant/request/core/BaseResult$State;->NETWORK_ERROR:Lcom/miui/personalassistant/request/core/BaseResult$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/personalassistant/request/core/BaseResult$State;->NETWORK_ACCESS_ERROR:Lcom/miui/personalassistant/request/core/BaseResult$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/personalassistant/request/core/BaseResult$State;->SERVICE_ERROR:Lcom/miui/personalassistant/request/core/BaseResult$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/personalassistant/request/core/BaseResult$State;->DATA_ERROR:Lcom/miui/personalassistant/request/core/BaseResult$State;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/personalassistant/request/core/BaseResult$State;->LOCATION_ERROR:Lcom/miui/personalassistant/request/core/BaseResult$State;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/miui/personalassistant/request/core/BaseResult$State;->OK:Lcom/miui/personalassistant/request/core/BaseResult$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/personalassistant/request/core/BaseResult$State;->$VALUES:[Lcom/miui/personalassistant/request/core/BaseResult$State;

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

    iput p3, p0, Lcom/miui/personalassistant/request/core/BaseResult$State;->mDefaultDescription:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/personalassistant/request/core/BaseResult$State;
    .locals 1

    const-class v0, Lcom/miui/personalassistant/request/core/BaseResult$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/request/core/BaseResult$State;

    return-object v0
.end method

.method public static values()[Lcom/miui/personalassistant/request/core/BaseResult$State;
    .locals 1

    sget-object v0, Lcom/miui/personalassistant/request/core/BaseResult$State;->$VALUES:[Lcom/miui/personalassistant/request/core/BaseResult$State;

    invoke-virtual {v0}, [Lcom/miui/personalassistant/request/core/BaseResult$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/personalassistant/request/core/BaseResult$State;

    return-object v0
.end method


# virtual methods
.method public getDescription()I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/request/core/BaseResult$State;->mDefaultDescription:I

    return v0
.end method
