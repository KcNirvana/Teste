.class public final enum Lcom/autonavi/volley/Request$Priority;
.super Ljava/lang/Enum;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/autonavi/volley/Request$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/autonavi/volley/Request$Priority;

.field public static final enum HIGH:Lcom/autonavi/volley/Request$Priority;

.field public static final enum IMMEDIATE:Lcom/autonavi/volley/Request$Priority;

.field public static final enum LOW:Lcom/autonavi/volley/Request$Priority;

.field public static final enum NORMAL:Lcom/autonavi/volley/Request$Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/volley/Request$Priority;

    const-string/jumbo v1, "LOW"

    invoke-direct {v0, v1, v2}, Lcom/autonavi/volley/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/volley/Request$Priority;->LOW:Lcom/autonavi/volley/Request$Priority;

    new-instance v0, Lcom/autonavi/volley/Request$Priority;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/volley/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/volley/Request$Priority;->NORMAL:Lcom/autonavi/volley/Request$Priority;

    new-instance v0, Lcom/autonavi/volley/Request$Priority;

    const-string/jumbo v1, "HIGH"

    invoke-direct {v0, v1, v4}, Lcom/autonavi/volley/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/volley/Request$Priority;->HIGH:Lcom/autonavi/volley/Request$Priority;

    new-instance v0, Lcom/autonavi/volley/Request$Priority;

    const-string/jumbo v1, "IMMEDIATE"

    invoke-direct {v0, v1, v5}, Lcom/autonavi/volley/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/volley/Request$Priority;->IMMEDIATE:Lcom/autonavi/volley/Request$Priority;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/autonavi/volley/Request$Priority;

    sget-object v1, Lcom/autonavi/volley/Request$Priority;->LOW:Lcom/autonavi/volley/Request$Priority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/autonavi/volley/Request$Priority;->NORMAL:Lcom/autonavi/volley/Request$Priority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/volley/Request$Priority;->HIGH:Lcom/autonavi/volley/Request$Priority;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/volley/Request$Priority;->IMMEDIATE:Lcom/autonavi/volley/Request$Priority;

    aput-object v1, v0, v5

    sput-object v0, Lcom/autonavi/volley/Request$Priority;->ENUM$VALUES:[Lcom/autonavi/volley/Request$Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/volley/Request$Priority;
    .locals 1

    const-class v0, Lcom/autonavi/volley/Request$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/volley/Request$Priority;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/volley/Request$Priority;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/autonavi/volley/Request$Priority;->ENUM$VALUES:[Lcom/autonavi/volley/Request$Priority;

    array-length v1, v0

    new-array v2, v1, [Lcom/autonavi/volley/Request$Priority;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
