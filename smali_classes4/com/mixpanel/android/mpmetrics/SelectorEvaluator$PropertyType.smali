.class final enum Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;
.super Ljava/lang/Enum;
.source "SelectorEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/mpmetrics/SelectorEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PropertyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

.field public static final enum Array:Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

.field public static final enum Boolean:Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

.field public static final enum Datetime:Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

.field public static final enum Null:Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

.field public static final enum Number:Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

.field public static final enum Object:Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

.field public static final enum String:Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

.field public static final enum Unknown:Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

    const-string v1, "Array"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;->Array:Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

    new-instance v0, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

    const-string v1, "Boolean"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;->Boolean:Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

    new-instance v0, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

    const-string v1, "Datetime"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;->Datetime:Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

    new-instance v0, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

    const-string v1, "Null"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;->Null:Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

    new-instance v0, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

    const-string v1, "Number"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;->Number:Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

    new-instance v0, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

    const-string v1, "Object"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;->Object:Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

    new-instance v0, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

    const-string v1, "String"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;->String:Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

    new-instance v0, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

    const-string v1, "Unknown"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;->Unknown:Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

    sget-object v1, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;->Array:Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;->Boolean:Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;->Datetime:Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;->Null:Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;->Number:Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;->Object:Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;->String:Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;->Unknown:Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

    aput-object v1, v0, v9

    sput-object v0, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;->$VALUES:[Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;
    .locals 1

    const-class v0, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

    return-object p0
.end method

.method public static values()[Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;
    .locals 1

    sget-object v0, Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;->$VALUES:[Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

    invoke-virtual {v0}, [Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mixpanel/android/mpmetrics/SelectorEvaluator$PropertyType;

    return-object v0
.end method
