.class public final enum Lcom/ooyala/pulse/RequestSettings$ActivationState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/pulse/RequestSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ActivationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ooyala/pulse/RequestSettings$ActivationState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACTIVE:Lcom/ooyala/pulse/RequestSettings$ActivationState;

.field public static final enum INACTIVE:Lcom/ooyala/pulse/RequestSettings$ActivationState;

.field public static final enum UNDEFINED:Lcom/ooyala/pulse/RequestSettings$ActivationState;

.field private static final synthetic a:[Lcom/ooyala/pulse/RequestSettings$ActivationState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/ooyala/pulse/RequestSettings$ActivationState;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ooyala/pulse/RequestSettings$ActivationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/pulse/RequestSettings$ActivationState;->UNDEFINED:Lcom/ooyala/pulse/RequestSettings$ActivationState;

    new-instance v0, Lcom/ooyala/pulse/RequestSettings$ActivationState;

    const-string v1, "ACTIVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ooyala/pulse/RequestSettings$ActivationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/pulse/RequestSettings$ActivationState;->ACTIVE:Lcom/ooyala/pulse/RequestSettings$ActivationState;

    new-instance v0, Lcom/ooyala/pulse/RequestSettings$ActivationState;

    const-string v1, "INACTIVE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ooyala/pulse/RequestSettings$ActivationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/pulse/RequestSettings$ActivationState;->INACTIVE:Lcom/ooyala/pulse/RequestSettings$ActivationState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ooyala/pulse/RequestSettings$ActivationState;

    sget-object v1, Lcom/ooyala/pulse/RequestSettings$ActivationState;->UNDEFINED:Lcom/ooyala/pulse/RequestSettings$ActivationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ooyala/pulse/RequestSettings$ActivationState;->ACTIVE:Lcom/ooyala/pulse/RequestSettings$ActivationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ooyala/pulse/RequestSettings$ActivationState;->INACTIVE:Lcom/ooyala/pulse/RequestSettings$ActivationState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ooyala/pulse/RequestSettings$ActivationState;->a:[Lcom/ooyala/pulse/RequestSettings$ActivationState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ooyala/pulse/RequestSettings$ActivationState;
    .locals 1

    const-class v0, Lcom/ooyala/pulse/RequestSettings$ActivationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ooyala/pulse/RequestSettings$ActivationState;

    return-object p0
.end method

.method public static values()[Lcom/ooyala/pulse/RequestSettings$ActivationState;
    .locals 1

    sget-object v0, Lcom/ooyala/pulse/RequestSettings$ActivationState;->a:[Lcom/ooyala/pulse/RequestSettings$ActivationState;

    invoke-virtual {v0}, [Lcom/ooyala/pulse/RequestSettings$ActivationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ooyala/pulse/RequestSettings$ActivationState;

    return-object v0
.end method
