.class public final enum Lcom/miui/video/base/statistics/event/WidgetEvent$Type;
.super Ljava/lang/Enum;
.source "WidgetEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/base/statistics/event/WidgetEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/video/base/statistics/event/WidgetEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/video/base/statistics/event/WidgetEvent$Type;

.field public static final enum CLICK:Lcom/miui/video/base/statistics/event/WidgetEvent$Type;

.field public static final enum SESSION:Lcom/miui/video/base/statistics/event/WidgetEvent$Type;

.field public static final enum VIDEO:Lcom/miui/video/base/statistics/event/WidgetEvent$Type;

.field public static final enum VIEW:Lcom/miui/video/base/statistics/event/WidgetEvent$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/miui/video/base/statistics/event/WidgetEvent$Type;

    const-string v1, "VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/video/base/statistics/event/WidgetEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/base/statistics/event/WidgetEvent$Type;->VIEW:Lcom/miui/video/base/statistics/event/WidgetEvent$Type;

    new-instance v0, Lcom/miui/video/base/statistics/event/WidgetEvent$Type;

    const-string v1, "CLICK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/video/base/statistics/event/WidgetEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/base/statistics/event/WidgetEvent$Type;->CLICK:Lcom/miui/video/base/statistics/event/WidgetEvent$Type;

    new-instance v0, Lcom/miui/video/base/statistics/event/WidgetEvent$Type;

    const-string v1, "VIDEO"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/video/base/statistics/event/WidgetEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/base/statistics/event/WidgetEvent$Type;->VIDEO:Lcom/miui/video/base/statistics/event/WidgetEvent$Type;

    new-instance v0, Lcom/miui/video/base/statistics/event/WidgetEvent$Type;

    const-string v1, "SESSION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/miui/video/base/statistics/event/WidgetEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/base/statistics/event/WidgetEvent$Type;->SESSION:Lcom/miui/video/base/statistics/event/WidgetEvent$Type;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/video/base/statistics/event/WidgetEvent$Type;

    sget-object v1, Lcom/miui/video/base/statistics/event/WidgetEvent$Type;->VIEW:Lcom/miui/video/base/statistics/event/WidgetEvent$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/video/base/statistics/event/WidgetEvent$Type;->CLICK:Lcom/miui/video/base/statistics/event/WidgetEvent$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/video/base/statistics/event/WidgetEvent$Type;->VIDEO:Lcom/miui/video/base/statistics/event/WidgetEvent$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/video/base/statistics/event/WidgetEvent$Type;->SESSION:Lcom/miui/video/base/statistics/event/WidgetEvent$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/video/base/statistics/event/WidgetEvent$Type;->$VALUES:[Lcom/miui/video/base/statistics/event/WidgetEvent$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/video/base/statistics/event/WidgetEvent$Type;
    .locals 1

    const-class v0, Lcom/miui/video/base/statistics/event/WidgetEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/video/base/statistics/event/WidgetEvent$Type;

    return-object p0
.end method

.method public static values()[Lcom/miui/video/base/statistics/event/WidgetEvent$Type;
    .locals 1

    sget-object v0, Lcom/miui/video/base/statistics/event/WidgetEvent$Type;->$VALUES:[Lcom/miui/video/base/statistics/event/WidgetEvent$Type;

    invoke-virtual {v0}, [Lcom/miui/video/base/statistics/event/WidgetEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/video/base/statistics/event/WidgetEvent$Type;

    return-object v0
.end method
