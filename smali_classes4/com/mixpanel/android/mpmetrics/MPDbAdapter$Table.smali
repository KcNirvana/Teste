.class public final enum Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;
.super Ljava/lang/Enum;
.source "MPDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/mpmetrics/MPDbAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Table"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

.field public static final enum ANONYMOUS_PEOPLE:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

.field public static final enum EVENTS:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

.field public static final enum GROUPS:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

.field public static final enum PEOPLE:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;


# instance fields
.field private final mTableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    const-string v1, "EVENTS"

    const-string v2, "events"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->EVENTS:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    new-instance v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    const-string v1, "PEOPLE"

    const-string v2, "people"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->PEOPLE:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    new-instance v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    const-string v1, "ANONYMOUS_PEOPLE"

    const-string v2, "anonymous_people"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->ANONYMOUS_PEOPLE:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    new-instance v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    const-string v1, "GROUPS"

    const-string v2, "groups"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->GROUPS:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    sget-object v1, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->EVENTS:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->PEOPLE:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->ANONYMOUS_PEOPLE:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->GROUPS:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    aput-object v1, v0, v6

    sput-object v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->$VALUES:[Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->mTableName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;
    .locals 1

    const-class v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    return-object p0
.end method

.method public static values()[Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;
    .locals 1

    sget-object v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->$VALUES:[Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    invoke-virtual {v0}, [Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->mTableName:Ljava/lang/String;

    return-object v0
.end method
