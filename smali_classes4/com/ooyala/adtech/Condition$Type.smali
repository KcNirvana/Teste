.class public final enum Lcom/ooyala/adtech/Condition$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/adtech/Condition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ooyala/adtech/Condition$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ON_BEFORE_CONTENT:Lcom/ooyala/adtech/Condition$Type;

.field public static final enum ON_CONTENT_END:Lcom/ooyala/adtech/Condition$Type;

.field public static final enum ON_PAUSE:Lcom/ooyala/adtech/Condition$Type;

.field public static final enum PLAYBACK_POSITION:Lcom/ooyala/adtech/Condition$Type;

.field public static final enum PLAYBACK_TIME:Lcom/ooyala/adtech/Condition$Type;

.field public static final enum TIME_SINCE_LINEAR:Lcom/ooyala/adtech/Condition$Type;

.field private static final synthetic a:[Lcom/ooyala/adtech/Condition$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/ooyala/adtech/Condition$Type;

    const-string v1, "ON_BEFORE_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ooyala/adtech/Condition$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/adtech/Condition$Type;->ON_BEFORE_CONTENT:Lcom/ooyala/adtech/Condition$Type;

    new-instance v0, Lcom/ooyala/adtech/Condition$Type;

    const-string v1, "ON_CONTENT_END"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ooyala/adtech/Condition$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/adtech/Condition$Type;->ON_CONTENT_END:Lcom/ooyala/adtech/Condition$Type;

    new-instance v0, Lcom/ooyala/adtech/Condition$Type;

    const-string v1, "ON_PAUSE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ooyala/adtech/Condition$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/adtech/Condition$Type;->ON_PAUSE:Lcom/ooyala/adtech/Condition$Type;

    new-instance v0, Lcom/ooyala/adtech/Condition$Type;

    const-string v1, "PLAYBACK_POSITION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ooyala/adtech/Condition$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/adtech/Condition$Type;->PLAYBACK_POSITION:Lcom/ooyala/adtech/Condition$Type;

    new-instance v0, Lcom/ooyala/adtech/Condition$Type;

    const-string v1, "PLAYBACK_TIME"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/ooyala/adtech/Condition$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/adtech/Condition$Type;->PLAYBACK_TIME:Lcom/ooyala/adtech/Condition$Type;

    new-instance v0, Lcom/ooyala/adtech/Condition$Type;

    const-string v1, "TIME_SINCE_LINEAR"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/ooyala/adtech/Condition$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/adtech/Condition$Type;->TIME_SINCE_LINEAR:Lcom/ooyala/adtech/Condition$Type;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/ooyala/adtech/Condition$Type;

    sget-object v1, Lcom/ooyala/adtech/Condition$Type;->ON_BEFORE_CONTENT:Lcom/ooyala/adtech/Condition$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ooyala/adtech/Condition$Type;->ON_CONTENT_END:Lcom/ooyala/adtech/Condition$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ooyala/adtech/Condition$Type;->ON_PAUSE:Lcom/ooyala/adtech/Condition$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ooyala/adtech/Condition$Type;->PLAYBACK_POSITION:Lcom/ooyala/adtech/Condition$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ooyala/adtech/Condition$Type;->PLAYBACK_TIME:Lcom/ooyala/adtech/Condition$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ooyala/adtech/Condition$Type;->TIME_SINCE_LINEAR:Lcom/ooyala/adtech/Condition$Type;

    aput-object v1, v0, v7

    sput-object v0, Lcom/ooyala/adtech/Condition$Type;->a:[Lcom/ooyala/adtech/Condition$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ooyala/adtech/Condition$Type;
    .locals 1

    const-class v0, Lcom/ooyala/adtech/Condition$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ooyala/adtech/Condition$Type;

    return-object p0
.end method

.method public static values()[Lcom/ooyala/adtech/Condition$Type;
    .locals 1

    sget-object v0, Lcom/ooyala/adtech/Condition$Type;->a:[Lcom/ooyala/adtech/Condition$Type;

    invoke-virtual {v0}, [Lcom/ooyala/adtech/Condition$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ooyala/adtech/Condition$Type;

    return-object v0
.end method
