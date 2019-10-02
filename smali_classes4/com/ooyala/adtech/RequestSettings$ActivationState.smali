.class public final enum Lcom/ooyala/adtech/RequestSettings$ActivationState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/adtech/RequestSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ActivationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ooyala/adtech/RequestSettings$ActivationState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACTIVE:Lcom/ooyala/adtech/RequestSettings$ActivationState;

.field public static final enum INACTIVE:Lcom/ooyala/adtech/RequestSettings$ActivationState;

.field public static final enum UNDEFINED:Lcom/ooyala/adtech/RequestSettings$ActivationState;

.field private static final synthetic a:[Lcom/ooyala/adtech/RequestSettings$ActivationState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/ooyala/adtech/RequestSettings$ActivationState;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ooyala/adtech/RequestSettings$ActivationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/adtech/RequestSettings$ActivationState;->UNDEFINED:Lcom/ooyala/adtech/RequestSettings$ActivationState;

    new-instance v0, Lcom/ooyala/adtech/RequestSettings$ActivationState;

    const-string v1, "ACTIVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ooyala/adtech/RequestSettings$ActivationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/adtech/RequestSettings$ActivationState;->ACTIVE:Lcom/ooyala/adtech/RequestSettings$ActivationState;

    new-instance v0, Lcom/ooyala/adtech/RequestSettings$ActivationState;

    const-string v1, "INACTIVE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ooyala/adtech/RequestSettings$ActivationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/adtech/RequestSettings$ActivationState;->INACTIVE:Lcom/ooyala/adtech/RequestSettings$ActivationState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ooyala/adtech/RequestSettings$ActivationState;

    sget-object v1, Lcom/ooyala/adtech/RequestSettings$ActivationState;->UNDEFINED:Lcom/ooyala/adtech/RequestSettings$ActivationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ooyala/adtech/RequestSettings$ActivationState;->ACTIVE:Lcom/ooyala/adtech/RequestSettings$ActivationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ooyala/adtech/RequestSettings$ActivationState;->INACTIVE:Lcom/ooyala/adtech/RequestSettings$ActivationState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ooyala/adtech/RequestSettings$ActivationState;->a:[Lcom/ooyala/adtech/RequestSettings$ActivationState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ooyala/adtech/RequestSettings$ActivationState;
    .locals 1

    const-class v0, Lcom/ooyala/adtech/RequestSettings$ActivationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ooyala/adtech/RequestSettings$ActivationState;

    return-object p0
.end method

.method public static values()[Lcom/ooyala/adtech/RequestSettings$ActivationState;
    .locals 1

    sget-object v0, Lcom/ooyala/adtech/RequestSettings$ActivationState;->a:[Lcom/ooyala/adtech/RequestSettings$ActivationState;

    invoke-virtual {v0}, [Lcom/ooyala/adtech/RequestSettings$ActivationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ooyala/adtech/RequestSettings$ActivationState;

    return-object v0
.end method
