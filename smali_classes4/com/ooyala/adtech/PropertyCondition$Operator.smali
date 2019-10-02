.class public final enum Lcom/ooyala/adtech/PropertyCondition$Operator;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/adtech/PropertyCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ooyala/adtech/PropertyCondition$Operator;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EQUALS:Lcom/ooyala/adtech/PropertyCondition$Operator;

.field public static final enum GREATER_THAN_OR_EQUALS:Lcom/ooyala/adtech/PropertyCondition$Operator;

.field private static final synthetic a:[Lcom/ooyala/adtech/PropertyCondition$Operator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/ooyala/adtech/PropertyCondition$Operator;

    const-string v1, "EQUALS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ooyala/adtech/PropertyCondition$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/adtech/PropertyCondition$Operator;->EQUALS:Lcom/ooyala/adtech/PropertyCondition$Operator;

    new-instance v0, Lcom/ooyala/adtech/PropertyCondition$Operator;

    const-string v1, "GREATER_THAN_OR_EQUALS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ooyala/adtech/PropertyCondition$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/adtech/PropertyCondition$Operator;->GREATER_THAN_OR_EQUALS:Lcom/ooyala/adtech/PropertyCondition$Operator;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ooyala/adtech/PropertyCondition$Operator;

    sget-object v1, Lcom/ooyala/adtech/PropertyCondition$Operator;->EQUALS:Lcom/ooyala/adtech/PropertyCondition$Operator;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ooyala/adtech/PropertyCondition$Operator;->GREATER_THAN_OR_EQUALS:Lcom/ooyala/adtech/PropertyCondition$Operator;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ooyala/adtech/PropertyCondition$Operator;->a:[Lcom/ooyala/adtech/PropertyCondition$Operator;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ooyala/adtech/PropertyCondition$Operator;
    .locals 1

    const-class v0, Lcom/ooyala/adtech/PropertyCondition$Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ooyala/adtech/PropertyCondition$Operator;

    return-object p0
.end method

.method public static values()[Lcom/ooyala/adtech/PropertyCondition$Operator;
    .locals 1

    sget-object v0, Lcom/ooyala/adtech/PropertyCondition$Operator;->a:[Lcom/ooyala/adtech/PropertyCondition$Operator;

    invoke-virtual {v0}, [Lcom/ooyala/adtech/PropertyCondition$Operator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ooyala/adtech/PropertyCondition$Operator;

    return-object v0
.end method
