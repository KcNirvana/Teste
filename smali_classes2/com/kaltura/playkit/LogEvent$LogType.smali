.class public final enum Lcom/kaltura/playkit/LogEvent$LogType;
.super Ljava/lang/Enum;
.source "LogEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/LogEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kaltura/playkit/LogEvent$LogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kaltura/playkit/LogEvent$LogType;

.field public static final enum LogEvent:Lcom/kaltura/playkit/LogEvent$LogType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/kaltura/playkit/LogEvent$LogType;

    const-string v1, "LogEvent"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kaltura/playkit/LogEvent$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/LogEvent$LogType;->LogEvent:Lcom/kaltura/playkit/LogEvent$LogType;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/kaltura/playkit/LogEvent$LogType;

    sget-object v1, Lcom/kaltura/playkit/LogEvent$LogType;->LogEvent:Lcom/kaltura/playkit/LogEvent$LogType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/kaltura/playkit/LogEvent$LogType;->$VALUES:[Lcom/kaltura/playkit/LogEvent$LogType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/kaltura/playkit/LogEvent$LogType;
    .locals 1

    const-class v0, Lcom/kaltura/playkit/LogEvent$LogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/LogEvent$LogType;

    return-object p0
.end method

.method public static values()[Lcom/kaltura/playkit/LogEvent$LogType;
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/LogEvent$LogType;->$VALUES:[Lcom/kaltura/playkit/LogEvent$LogType;

    invoke-virtual {v0}, [Lcom/kaltura/playkit/LogEvent$LogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaltura/playkit/LogEvent$LogType;

    return-object v0
.end method
